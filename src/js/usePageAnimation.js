export default function(){

    $('#main-page').on('pagebeforehide',function(){

        var theHeight = $(this).find('#animation-default').css('height')

        var theHigherHeight = $(this).find('#animation-default').outerHeight() + 10 +"px"

        //div stretch
        $(this).find('#animation-default').animate({height: theHigherHeight},200)
        $(this).find('#animation-default').animate({height: theHeight},100)

        //div slideout
        $(this).find('#animation-default').animate({bottom:'-'+ theHeight},300)
    
    })

    $('#main-page').on('pageshow',function(){

        var theHeight = $(this).find('#animation-default').css('height')

        var theHigherHeight = $(this).find('#animation-default').outerHeight() + 10 +"px"
 
        //div slidein
        $(this).find('#animation-default').animate({bottom:'0%'},300)

        //div stretch
        $(this).find('#animation-default').animate({height: theHigherHeight},100)
        $(this).find('#animation-default').animate({height: theHeight},200)
        
        
    })

}