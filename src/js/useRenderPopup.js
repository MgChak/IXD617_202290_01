
let tarPage = $('.fullSreenCoverPopContainer')


function renderColorPopUp(val,tar){//渲染页面

    if(val==0){//初始界面

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

    }else if(val==1){//编辑颜色界面

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

    }else if(val==2){//添加颜色界面

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

    }else if(val==3){//修改颜色界面

        let tarText = $(tar).siblings('.popContent_ChosseColor_colorlist_item')
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

        console.log(tarText)
    }
}

function renderPopup(val,tar){


    if(val=="img"){
        
        $(tarPage).find(".popContentConatiner_v").hide()//颜色选择
            .siblings(".fullScreenNavConatiner").hide()//底部导航
            .siblings(".popContentConatiner_imgChose").show()//照片选择
            .siblings(".popContentConatiner_delete").hide()//删除确认
    }else if (val=="colors"){
        $(tarPage).find(".popContentConatiner_v").show()//颜色选择
            .siblings(".fullScreenNavConatiner").show()//底部导航
            .siblings(".popContentConatiner_imgChose").hide()//照片选择
            .siblings(".popContentConatiner_delete").hide()//删除确认
    }else if (val=="delete"){
        $(tarPage).find(".popContentConatiner_v").hide()//颜色选择
            .siblings(".fullScreenNavConatiner").hide()//底部导航
            .siblings(".popContentConatiner_imgChose").hide()//照片选择
            .siblings(".popContentConatiner_delete").show()//删除确认
    }
}

export{

    renderColorPopUp,
    renderPopup
}