import usePageAnimation from "./usePageAnimation.js"
import useBackgroundCtrl from "./useBackgroundCtrl.js"


$(()=>{
    useBackgroundCtrl()//Ctrl background of the app: switch bettwen google map and color background
    usePageAnimation()//【Testing】-Ctrl the animation for pages

    $("#test").on("click",function(){
        console.log("hi")
    })
});