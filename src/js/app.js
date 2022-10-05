import {PageAnimationDefaultIn,PageAnimationDefaultOut} from "./usePageAnimation.js"
import useBackgroundCtrl from "./useBackgroundCtrl.js"


$(()=>{
    useBackgroundCtrl()//Ctrl background of the app: switch bettwen google map and color background
   
    $(document)

    .on("pagebeforehide", '[data-role="page"]', function(){
        PageAnimationDefaultOut(this)
    })

    .on("pageshow", '[data-role="page"]', function(){
        useBackgroundCtrl()
        PageAnimationDefaultIn(this)
    })

    .on("submit", "#signin-form", function(e) {
        // e.preventDefault();
        // checkSigninForm();
    })

    .on("click", ".js-logout", function(e) {
        // sessionStorage.removeItem("userId");
        // checkUserId();
    })


});