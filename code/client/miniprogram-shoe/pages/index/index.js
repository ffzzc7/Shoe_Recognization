// index.js
// 获取应用实例
const app = getApp()

Page({
 chooseImage:function()
 {
  wx.chooseImage
  ({
    count: 1,
    sourceType: ['album','camera'],
    // success: (result) => {wx.navigateTo({
    //   url: '../info/info?imagePath='+result.tempFilePaths
    // })
    // },
    success: (result) => 
    {
      wx.uploadFile
      ({
        filePath: result.tempFilePaths[0],
        name: 'testUpload',
        url: 'http://xx.xx.xx.xx/shoesRecognization/Intetface/shoesrecognization/request',
        success: function(res2)
        {
          console.log(res2);  
          wx.showToast({title: String(JSON.parse(res2.data).max_index)})
        },
        fail: function(res3)
        {
          wx.showToast({title: 'fail'})
        }
      })
    },
    fail: (res) => {},
    complete: (res) => {},
  })
}
})
