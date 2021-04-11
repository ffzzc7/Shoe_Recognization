#pragma once
#include <drogon/HttpController.h>
using namespace drogon;
namespace shoesRecognization
{
namespace Intetface
{
class shoesrecognization:public drogon::HttpController<shoesrecognization>
{
  public:
       shoesrecognization();
   // shoesrecognization();
   // ~shoesrecognization();
    METHOD_LIST_BEGIN
    //use METHOD_ADD to add your custom processing function here;
    //METHOD_ADD(shoesrecognization::get,"/{2}/{1}",Get);//path is /shoesRecognization/Intetface/shoesrecognization/{arg2}/{arg1}
    //METHOD_ADD(shoesrecognization::your_method_name,"/{1}/{2}/list",Get);//path is /shoesRecognization/Intetface/shoesrecognization/{arg1}/{arg2}/list
    //ADD_METHOD_TO(shoesrecognization::your_method_name,"/absolute/path/{1}/{2}/list",Get);//path is /absolute/path/{arg1}/{arg2}/list

    //发部一个接口
    METHOD_ADD(shoesrecognization::receiveRequest,"/request",Post);//path is /shoesRecognization/Intetface/shoesrecognization/{arg1}/{arg2}/list


    METHOD_LIST_END
    // your declaration of processing function maybe like this:
    // void get(const HttpRequestPtr& req,std::function<void (const HttpResponsePtr &)> &&callback,int p1,std::string p2);
    // void your_method_name(const HttpRequestPtr& req,std::function<void (const HttpResponsePtr &)> &&callback,double p1,int p2) const;
    void receiveRequest(const HttpRequestPtr& req,std::function<void (const HttpResponsePtr &)> &&callback) const;


};
}
}
