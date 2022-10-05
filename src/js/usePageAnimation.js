import useBackgroundCtrl from "./useBackgroundCtrl.js"

export default function(){

    $('[data-role="page"]').on('pagebeforehide',function(){

        useBackgroundCtrl()//Ctrl background of the app: switch bettwen google map and color background

        var theHeight = $(this).find('#animation-default').css('height')

        $(this).find('#animation-default').css('bottom', '-' + theHeight)

    })

    $('[data-role="page"]').on('pageshow',function(){
        
        useBackgroundCtrl()//Ctrl background of the app: switch bettwen google map and color background

        $(this).find('#animation-default').css('bottom', 0)
    })

    
}