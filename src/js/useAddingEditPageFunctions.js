function starsCtrl(tar){

    $(tar).attr("src","./src/img/icons/starActive.svg")
        .prevAll().attr("src","./src/img/icons/starActive.svg")

    $(tar).nextAll().attr("src","./src/img/icons/starUnactive.svg")

    var tarIndex = $(tar).index() + 1//获取目标序列号
    

    $(tar).parent().siblings('input').val(tarIndex) //把选中目标的序列号赋予input


}








export{
    starsCtrl,

}