export default function(){

    $('.main-page').on('pagebeforehide',function(){

        $(this).animate({bottom:'-100%'},300)
        
    })

    $('.main-page').on('pageshow',function(){

        $(this).animate({bottom:'-90%'},300)
        
    })

}