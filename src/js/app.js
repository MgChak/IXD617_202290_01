import {PageAnimationDefaultIn,PageAnimationDefaultOut} from "./usePageAnimation.js"
import useBackgroundCtrl from "./useBackgroundCtrl.js"


$(()=>{

    useBackgroundCtrl()//Ctrl background of the app: switch bettwen google map and color background
   
    $(document)

    .on("pagebeforehide", '[data-role="page"]', function(){//page trasit event : before hide
        
        PageAnimationDefaultOut(this)//call page transition animation : slide out 

    })

    .on("pageshow", '[data-role="page"]', function(){//page trasit event : after show

        useBackgroundCtrl()//Ctrl background of the app: switch bettwen google map and color background
        
        PageAnimationDefaultIn(this)//call page transition animation : slide in 

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