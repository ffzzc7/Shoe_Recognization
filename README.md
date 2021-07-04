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
