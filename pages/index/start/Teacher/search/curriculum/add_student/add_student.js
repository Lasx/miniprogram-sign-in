// pages/management/student_information/student_information.js
Page({
  data: {
    curr_id: '',
    this_student:{},
    student:{ },
    focus: false,
    inputValue: '',
    pickerHidden: true,
    chosen: '',
  },
  onLoad: function(options){
    console.log(options)
    var course_id = options.course_id
    this.setData({
      curr_id: course_id
    })
    console.log(this.data.curr_id)
  },

  bindKeyInput: function (e) {
    this.setData({
      inputValue: e.detail.value
    })
  },
  bindReplaceInput: function (e) {
    var value = e.detail.value
    var pos = e.detail.cursor
    var left
    if (pos !== -1) {
      // 光标在中间
      left = e.detail.value.slice(0, pos)
      // 计算光标的位置
      pos = left.replace(/11/g, '2').length
    }

    // 直接返回对象，可以对输入进行过滤处理，同时可以控制光标的位置
    return {
      value: value.replace(/11/g, '2'),
      cursor: pos
    }

    // 或者直接返回字符串,光标在最后边
    // return value.replace(/11/g,'2'),
  },
  bindHideKeyboard: function (e) {
    if (e.detail.value === '123') {
      // 收起键盘
      wx.hideKeyboard()
    }
  },
  onShareAppMessage() {
    return {
      title: 'form',
      path: 'page/component/pages/form/form'
    }
  },


  pickerConfirm(e) {
    this.setData({
      pickerHidden: true
    })
    this.setData({
      chosen: e.detail.value
    })
  },

  pickerCancel() {
    this.setData({
      pickerHidden: true
    })
  },

  pickerShow() {
    this.setData({
      pickerHidden: false
    })
  },

  formSubmit(e) {
    console.log('form发生了submit事件，携带数据为：', e.detail.value)
    let stu_id = e.detail.value.input_number
    console.log(stu_id)
    console.log(this.data.curr_id)
    wx.cloud.callFunction({
      name:'cur_add_stu',
      data:{
        curr_id: this.data.curr_id,
        stu_id: stu_id,
        should: 0,
        actual: 0 //默认值
      },
      success:res=>{
      console.log(res)
      wx.navigateBack()
      }
      }
      )
  },

  formReset(e) {
    console.log('form发生了reset事件，携带数据为：', e.detail.value)
    this.setData({
      chosen: ''
    })
  },

})