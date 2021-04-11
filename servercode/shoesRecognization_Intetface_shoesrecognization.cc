#include "shoesRecognization_Intetface_shoesrecognization.h"
using namespace shoesRecognization::Intetface;
//add definition of your processing function here


shoesrecognization::shoesrecognization() {}

void shoesrecognization::receiveRequest(const HttpRequestPtr& req,std::function<void (const HttpResponsePtr &)> &&callback) const
{


    MultiPartParser fileUpload;
    if (fileUpload.parse(req) == 0)
    {
    }
    LOG_DEBUG << "upload error!";
    Json::Value json;
    json["result"] = "failed";
    auto resp = HttpResponse::newHttpJsonResponse(json);
    callback(resp);



}