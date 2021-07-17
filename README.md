# Shoe_Recognization

1、介绍
   项目实现了关于不同鞋子类型的图片分类，通过小程序作为前端，上传鞋子图片到服务器做分类预测。大约支持三百多种不同型号鞋子，大约10万张图片做为训练集。

2、小程序搭建
（1）下载微信开发者工具；
（2）项目-》导入项目-》选择"\code\client\miniprogram-shoe"文件夹-》点击创建按钮
（3）打开index.js文件，将wx.uploadFile接口中的url参数内的ip换成服务端ip
（4）编译
（5）通过手机微信真机调试，点击小程序中间的上传图片按钮，拍照上传或者上传本地图片；正常情况下，图片所属的类别的序号通过弹框的方式显示在小程序界面上。

3、CNN模型
(1) 项目使用 ResNet101及mobileNet模型，代码参考https://github.com/WZMIAOMIAO/deep-learning-for-image-processing
(2) 由于采用libtorch C++作为后端程序，需要将python代码生成的.pth文件转成.pt文件，转化代码参考convertModel_GPU.py

4、服务端工程创建
  （1）使用cmake管理整个工程;
  （2）开源drogon的server库需要依赖一些库（json uuid等），请自行按照drogon开源github进行依赖库的安装。（https://github.com/an-tao/drogon/wiki/CHN-02-%E5%AE%89%E8%A3%85）
  （3）编译opencv库以及libtorch库，并在CMakeList文件修改对应路径。
  （4）编译运行, 将在本机发布url xx.xx.xx.xx(ip地址)/shoesRecognization/Intetface/shoesrecognization/request，客户端通过post方式像此链接发送图片即可。返回Json报文 max_index:1(类型预测值序号)
