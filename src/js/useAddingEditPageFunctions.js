function starsCtrl(tar){

    $(tar).attr("src","./src/img/icons/starActive.svg")
        .prevAll().attr("src","./src/img/icons/starActive.svg")

    $(tar).nextAll().attr("src","./src/img/icons/starUnactive.svg")

    var tarIndex = $(tar).index()//获取目标序列号

    $(tar).parent().siblings('#adding-friendly').val(tarIndex) //把选中目标的序列号赋予input

    console.log($('#adding-friendly').val())
}


function handleColorSelect(tar){
    $(tar).find('.popContent_ChosseColor_colorlist_item').addClass('popContent_ChosseColor_colorlist_item_active')
    $(tar).siblings().find('.popContent_ChosseColor_colorlist_item').removeClass('popContent_ChosseColor_colorlist_item_active')
    
    var tarColor = $(tar).find('h1').text()//获取目标的文字内容
    
    $(tar).parents('[data-role="main"]').find('#adding-color').val(tarColor)//将颜色赋值给表单
        .siblings('.adding_color_conatiner').text(tarColor)//将颜色显示在表单中
    // console.log($('#adding-color').val())
}





export{
    starsCtrl,
    handleColorSelect,

}