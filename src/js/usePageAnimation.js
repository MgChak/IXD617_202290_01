export default function(){

    $('#main-page').on('pagebeforehide',function(){

        var theHeight = $(this).find('#animation-default').css('height')
        
        $(this).find('#animation-default').animate({bottom:'-'+ theHeight},300)

        
    })

    $('#main-page').on('pageshow',function(){

        $(this).find('#animation-default').animate({bottom:'0%'},300)
        
    })

}