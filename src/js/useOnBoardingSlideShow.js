
function pageMove(page,direc,tar){

    switch(direc){//换页

        case "right":
            if(page<2){
                page = page+1
                $('.onbo_slideContainer').css('left',-page*100+'%')
            }
        break;
        case "left":
            if(page>0){
                page = page-1
                $('.onbo_slideContainer').css('left',-page*100+'%')
            }
        break;
        case "dot":

            page = $(tar).index()
            $('.onbo_slideContainer').css('left',-page*100+'%')

        break;
        case "reset":

            page = 0
            $('.onbo_slideContainer').css('left',-page*100+'%')
                 
        break;
        case "leave":

            sessionStorage.isFirst = 1          

        break;
    }

    $('.onbo_dot').eq(page).addClass('onbo_dot_active') //激活点点
        .siblings().removeClass('onbo_dot_active')

    if(page == 2){
        $('.onbo_button_next').text('START!').addClass('leaveOnboPage aTag').attr('href','#main-page')
        $('.onbo_button_skip').hide()
    }else{
        $('.onbo_button_next').text('NEXT').removeClass('aTag leaveOnboPage').attr('href','')
        $('.onbo_button_skip').show()
    }

    return page

}

export{
    pageMove
}