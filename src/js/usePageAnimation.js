export default function(){

    $('[data-role="page"]').on('pagebeforehide',function(e,ui){

        var theHeight = $(this).find('#animation-default').css('height')

        var theHigherHeight = $(this).find('#animation-default').outerHeight() + 10 +"px"

        //div stretch
        $(this).find('#animation-default').animate({height: theHigherHeight},100)
        $(this).find('#animation-default').animate({height: theHeight},50)

        //div slideout
        $(this).find('#animation-default').animate({bottom:'-'+ theHeight},200)   
    })

    $('[data-role="page"]').on('pageshow',function(){

       

        var theHeight = $(this).find('#animation-default').css('height')

        var theHigherHeight = $(this).find('#animation-default').outerHeight() + 10 +"px"

        //div slidein
        $(this).find('#animation-default').animate({bottom:'0%'},300)

        //div stretch
        $(this).find('#animation-default').animate({height: theHigherHeight},50)
        $(this).find('#animation-default').animate({height: theHeight},100)

        
        
    })

    
}