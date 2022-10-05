function PageAnimationDefaultIn(tar){

    $(tar).find('.animation-default').css('bottom', 0)

}


function PageAnimationDefaultOut(tar){

    var theHeight = $(tar).find('.animation-default').css('height')

    $(tar).find('.animation-default').css('bottom', '-' + theHeight)

}



export{
    PageAnimationDefaultIn,
    PageAnimationDefaultOut
}