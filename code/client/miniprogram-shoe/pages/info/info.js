// pages/info/info.js
Page
({
  data:
  {
    testPath:''
  },
  
  onLoad:function(option)
  {
    var that =this
    console.log(option.imagePath)
    that.setData({testPath:option.imagePath})
    console.log(that.data.testPath)
  }
})