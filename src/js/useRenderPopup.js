
let tarPage = $('.fullSreenCoverPopContainer')

function renderPopup(val,tar){ //渲染不同的弹出页面


    if(val=="img"){
        
        $(tarPage).find(".popContentConatiner_imgChose").show()
            .siblings().hide()
    }else if (val=="colors"){
        $(tarPage).find(".popContentConatiner_color").show()
            .siblings("").hide()
    }else if (val=="delete"){
        $(tarPage).find(".popContentConatiner_delete").show()
            .siblings().hide()
    }else if (val=="fullimg"){
        $(tarPage).find(".popContentConatiner_fullimg").show()
            .siblings().hide()
    }
}

function renderColorPopUp(val,tar){//渲染颜色选择页面中的子页面
    
    if(val=='ori'){//初始界面

        $(tarPage).find('.popContent_ChosseColor').addClass("popContent_ChosseColor_active")//基础内容
        $(tarPage).find('.editColorListIcon').show()//右上角编辑icon
        $(tarPage).find('.popContent_ChosseColor_nav_title').text('CHOSE A COLOR')//title
        $(tarPage).find('.popContent_ChosseColor_colorlist_edit').hide()//修改icon
        $(tarPage).find('.popContent_ChosseColor_colorlist').show()//颜色列表
        $(tarPage).find('.popContent_ChosseColor_breakLine').show()//分割线
        $(tarPage).find('.popContent_ChosseColor_addColor').show()//添加颜色按钮
        $(tarPage).find('.newColorInput').hide()//颜色输入框

        $(tarPage).find('.fullScreenNav_Left').addClass('clossFullScreenPicIcon')//右导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/close.svg")//切换图标
            .siblings('h1').text('CLOSE')//文字内容
        $(tarPage).find('.fullScreenNav_Right').addClass('clossFullScreenPicIcon')//左导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/check.svg")//切换图标
            .siblings('h1').text('COMFIRM')//文字内容

    }else if(val=='editColorList'){//编辑颜色界面

        $(tarPage).find('.popContent_ChosseColor_colorlist_item').removeClass('popContent_ChosseColor_colorlist_item_active')//取消已经选中的颜色
        $(tarPage).find('.popContent_ChosseColor').addClass("popContent_ChosseColor_active")//基础内容
        $(tarPage).find('.editColorListIcon').hide()//右上角编辑icon
        $(tarPage).find('.popContent_ChosseColor_nav_title').text('EDIT COLORS')//title
        $(tarPage).find('.popContent_ChosseColor_colorlist_edit').show()//修改icon
        $(tarPage).find('.popContent_ChosseColor_colorlist').show()//颜色列表
        $(tarPage).find('.popContent_ChosseColor_breakLine').hide()//分割线
        $(tarPage).find('.popContent_ChosseColor_addColor').hide()//添加颜色按钮
        $(tarPage).find('.newColorInput').hide()//颜色输入框

        $(tarPage).find('.fullScreenNav_Left').removeClass('clossFullScreenPicIcon')//右导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/back.svg")//切换图标
            .siblings('h1').text('BACK')//文字内容
        $(tarPage).find('.fullScreenNav_Right').removeClass('clossFullScreenPicIcon')//左导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/check.svg")//切换图标
            .siblings('h1').text('COMFIRM')//文字内容

    }else if(val=='addColor' || val=='listPageAddColor'){//添加颜色界面

        $(tarPage).find('.popContent_ChosseColor_colorlist_item').removeClass('popContent_ChosseColor_colorlist_item_active')//取消已经选中的颜色
        $(tarPage).find('.popContent_ChosseColor').addClass("popContent_ChosseColor_active")//基础内容
        $(tarPage).find('.editColorListIcon').hide()//右上角编辑icon
        $(tarPage).find('.popContent_ChosseColor_nav_title').text('ADD NEW COLOR')//title
        $(tarPage).find('.popContent_ChosseColor_colorlist_edit').hide()//修改icon
        $(tarPage).find('.popContent_ChosseColor_colorlist').hide()//颜色列表
        $(tarPage).find('.popContent_ChosseColor_breakLine').hide()//分割线
        $(tarPage).find('.popContent_ChosseColor_addColor').hide()//添加颜色按钮
        $(tarPage).find('.newColorInput').show()//颜色输入框

        $(tarPage).find('.fullScreenNav_Left').removeClass('clossFullScreenPicIcon')//右导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/back.svg")//切换图标
            .siblings('h1').text('BACK')//文字内容
        $(tarPage).find('.fullScreenNav_Right').removeClass('clossFullScreenPicIcon')//左导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/check.svg")//切换图标
            .siblings('h1').text('SAVE')//文字内容
        $(tarPage).find('.newColorInputSlot').val('')//颜色输入框中的内容

    }else if(val=='changeColor' || val=='listPageChangeColor'){//修改颜色界面

        var tarText = $(tar).siblings('.popContent_ChosseColor_colorlist_item')
            .find('h1').text()

        $(tarPage).find('.popContent_ChosseColor_colorlist_item').removeClass('popContent_ChosseColor_colorlist_item_active')//取消已经选中的颜色
        $(tarPage).find('.popContent_ChosseColor').addClass("popContent_ChosseColor_active")//基础内容
        $(tarPage).find('.editColorListIcon').hide()//右上角编辑icon
        $(tarPage).find('.popContent_ChosseColor_nav_title').text('EDIT COLOR')//title
        $(tarPage).find('.popContent_ChosseColor_colorlist_edit').hide()//修改icon
        $(tarPage).find('.popContent_ChosseColor_colorlist').hide()//颜色列表
        $(tarPage).find('.popContent_ChosseColor_breakLine').hide()//分割线
        $(tarPage).find('.popContent_ChosseColor_addColor').hide()//添加颜色按钮
        $(tarPage).find('.newColorInput').show()//颜色输入框

        $(tarPage).find('.fullScreenNav_Left').removeClass('clossFullScreenPicIcon')//右导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/back.svg")//切换图标
            .siblings('h1').text('BACK')//文字内容
        $(tarPage).find('.fullScreenNav_Right').removeClass('clossFullScreenPicIcon')//左导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/check.svg")//切换图标
            .siblings('h1').text('SAVE')//文字内容
        $(tarPage).find('.newColorInputSlot').val(tarText)//颜色输入框中的内容

    }else if(val=="listPageOri"){//颜色列表打开的颜色编辑界面

        $(tarPage).find('.popContent_ChosseColor_colorlist_item').removeClass('popContent_ChosseColor_colorlist_item_active')//取消已经选中的颜色
        $(tarPage).find('.popContent_ChosseColor').addClass("popContent_ChosseColor_active")//基础内容
        $(tarPage).find('.editColorListIcon').hide()//右上角编辑icon
        $(tarPage).find('.popContent_ChosseColor_nav_title').text('EDIT COLOR')//title
        $(tarPage).find('.popContent_ChosseColor_colorlist_edit').show()//修改icon
        $(tarPage).find('.popContent_ChosseColor_colorlist').show()//颜色列表
        $(tarPage).find('.popContent_ChosseColor_breakLine').show()//分割线
        $(tarPage).find('.popContent_ChosseColor_addColor').show()//添加颜色按钮
        $(tarPage).find('.newColorInput').hide()//颜色输入框

        $(tarPage).find('.fullScreenNav_Left').addClass('clossFullScreenPicIcon')//右导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/back.svg")//切换图标
            .siblings('h1').text('BACK')//文字内容
        $(tarPage).find('.fullScreenNav_Right').addClass('clossFullScreenPicIcon')//左导航,添加关闭窗口class
            .find('img').attr('src',"./src/img/icons/check.svg")//切换图标
            .siblings('h1').text('SAVE')//文字内容
        $(tarPage).find('.newColorInputSlot').val(tarText)//颜色输入框中的内容

    }
}

function handleColorSelect(val,tar){ //处理颜色选择页面的点击事件

    let currentPage = window.location.hash //定位

    if (val == 'ori'){
        $(tar).find('.popContent_ChosseColor_colorlist_item').addClass('popContent_ChosseColor_colorlist_item_active')
        $(tar).siblings().find('.popContent_ChosseColor_colorlist_item').removeClass('popContent_ChosseColor_colorlist_item_active')
        
        var tarColor = $(tar).find('h1').text()//获取目标的文字内容
        
        $(currentPage).find('.editingAdding_color').val(tarColor)//将颜色赋值给表单
            .siblings('div').text(tarColor)//将颜色显示在表单中
        // console.log($('#adding-color').val())
    }

    
}

function handlePagePositionChange(page,val){//处理颜色选择界面导航点击事件

    // [Nav Map]
    // ori -> editColorList -> changeColor
    //    |-> addColor

    // listPageOri ->  listPageChangeColor
    //           |-> listPageAddColor

    switch(val){

    case 'LeftClick' : //左点击
        if(page == 'ori'){
            return
        }else if(page == 'editColorList' || page == 'addColor'){
            page = 'ori'
        }else if(page == 'changeColor'){
            page = 'editColorList'
        }else if(page == "listPageOri"){
            return
        }else if(page == "listPageAddColor" || page == "listPageChangeColor"){
            page = "listPageOri"
        }
    break;
    case 'RightClick' : //右点击
        if(page == 'ori'){
            return
        }else if(page == 'editColorList' || page == 'addColor'){
            page = 'ori'
        }else if(page == 'changeColor'){
            page = 'editColorList'
        }else if(page == "listPageOri"){
            return
        }else if(page == "listPageAddColor" || page == "listPageChangeColor"){
            page = "listPageOri"
        }
    break;
    case 'ColorChangeIconClick' : //修改单独颜色名icon被点击
        if(page == 'editColorList'){
            page = 'changeColor'
        }else if(page == "listPageOri"){
            page = "listPageChangeColor"
        }
    break;
    case 'ColorAdd' : //添加颜色icon被点击
        if(page == 'ori'){
            page = 'addColor'
        }else if(page == "listPageOri"){
            page = "listPageAddColor"
        }
    break;
  
    }

    return page
}


export{

    renderColorPopUp,
    renderPopup,
    handleColorSelect,
    handlePagePositionChange
}