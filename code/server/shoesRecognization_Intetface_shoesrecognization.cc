#include "shoesRecognization_Intetface_shoesrecognization.h"

namespace shoesRecognization
{
    namespace Intetface
    {
        shoesrecognization::shoesrecognization() {}

        void shoesrecognization::receiveRequest(const HttpRequestPtr &req,std::function<void(const HttpResponsePtr &)> &&callback) const
        {
            LOG_DEBUG << "recive wx !";
            MultiPartParser fileUpload;
            if (fileUpload.parse(req) == 0)
            {
                //LOG_DEBUG << "upload !";
                Json::Value rootJson;  //返回的json数据包

                auto parameters = fileUpload.getParameters();
                std::string PicID = parameters["PicID"];
                auto &files = fileUpload.getFiles();
                for (auto const &file : files) {

                    //LOG_DEBUG << "PicID !";

                    std::string fileName = file.getFileName();
                    file.save();
                    using torch::jit::script::Module;
                    Module module = torch::jit::load("MobileNetV3_CPU.pt");
                    module.to(at::kCPU);
                    LOG_DEBUG << ("fileName %s!",fileName);
                    std::string strLocalPath =app().getUploadPath();
                    std::string strLocalRecImage =strLocalPath+'/'+fileName;

                    LOG_DEBUG << strLocalRecImage;
                    auto image = cv::imread(strLocalRecImage, cv::ImreadModes::IMREAD_COLOR);
                     //cv::Mat image(file.fileLength(),CV_8UC1,(char*)file.fileData());

                    cv::cvtColor(image, image, cv::COLOR_BGR2RGB);
                    cv::Mat img_float;
                    image.convertTo(img_float, CV_32F, 1.0 / 255);
                    // 3. resize the image for resnet101 model
                    cv::resize(img_float, img_float, cv::Size(224, 224), cv::INTER_AREA);
                    // 4. transform to tensor
                    auto img_tensor = torch::from_blob(img_float.data, {1, 224, 224, 3}, torch::kFloat32);
                    // in pytorch, batch first, then channel
                    img_tensor = img_tensor.permute({0, 3, 1, 2});
                    // 5. Removing mean values of the RGB channels
                    // the values are from following link.
                    img_tensor[0][0] = img_tensor[0][0].sub_(0.485).div_(0.229);
                    img_tensor[0][1] = img_tensor[0][1].sub_(0.456).div_(0.224);
                    img_tensor[0][2] = img_tensor[0][2].sub_(0.406).div_(0.225);

                    img_tensor = img_tensor.to(at::kCPU);
                    // 网络前向计算
                    at::Tensor output = module.forward({img_tensor}).toTensor();
                    //std::cout << "output:" << output << std::endl;

                    auto prediction = output.argmax(1);
                    std::cout << "prediction:" << prediction << std::endl;

                    int maxk = 3;
                    auto top3 = std::get<1>(output.topk(maxk, 1, true, true));

                    std::cout << "top3: " << top3 << '\n';

                    std::vector<int> res;
                    for (auto i = 0; i < maxk; i++) {
                        res.push_back(top3[0][i].item().toInt());
                    }
                    for (auto i : res) {
                        std::cout << i << " ";
                    }
                    std::cout << "\n";


                    auto max_result = output.max(1, true);
                    auto max_index = std::get<1>(max_result).item<float>();
                    std::cout << max_index << std::endl;

                    LOG_DEBUG << max_index;

                    Json::Value structJson;
                    std::string strKey ="max_index";
                    structJson[strKey] = max_index;

                    rootJson.append(structJson);
                    auto resp = HttpResponse::newHttpJsonResponse(structJson);
                    callback(resp);
                    return;
                }
            }

            LOG_DEBUG << "upload error!";
            Json::Value json;
            json["result"] = "top3";
            auto resp = HttpResponse::newHttpJsonResponse(json);
            callback(resp);
        }
    }
}
