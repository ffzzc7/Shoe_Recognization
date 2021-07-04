# Shoe_Recognization

1、介绍




2、小程序搭建
（1）下载微信开发者工具；
（2）项目-》导入项目-》选择"\code\client\miniprogram-shoe"文件夹-》点击创建按钮
（3）打开index.js文件，将wx.uploadFile接口中的url参数内的ip换成服务端ip
（4）编译
（5）通过手机微信真机调试，点击小程序中间的上传图片按钮，拍照上传或者上传本地图片；正常情况下，图片所属的类别的序号通过弹框的方式显示在小程序界面上。

3、CNN模型
(1) 项目使用 ResNet101模型，代码参考https://github.com/WZMIAOMIAO/deep-learning-for-image-processing
(2) 由于采用libtorch C++作为后端程序，需要将python代码生成的.pth文件转成.pt文件，转化代码参考convertModel_GPU.py


4、服务端工程创建
  （1）使用cmake管理整个工程，需要在IDE（Qt、Clion）或者其他支持打开cmake pro的IDE。
  （2）开源drogon的server库需要依赖一些库（json uuid等），请自行按照drogon开源github进行依赖库的安装。（按照教程安装即可）
  （3） 项目中使用了opencv库以及libtorch库。将在文中附加。
  （4）工程打开后 编译运行 将在本机发布 url 192.168.2.105/shoesRecognization/Intetface/shoesrecognization/request，客户端通过post方式像此链接发送图片即可。其中ip是server端运行ip地址。
