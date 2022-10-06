import {PageAnimationDefaultIn,PageAnimationDefaultOut} from "./usePageAnimation.js"
import {checkSigninForm,checkSignupForm} from "./useCheckForm.js"
import usePathCheck from "./usePathCheck.js"


$(()=>{

    usePathCheck()//Ctrl background of the app: switch bettwen google map and color background
   
    $(document)

    .on("pagebeforehide", '[data-role="page"]', function(){//页面切换前
        
        PageAnimationDefaultOut(this)//call page transition animation : slide out 

    })

    .on("pagebeforeshow", '[data-role="page"]', function(){//页面切换后，还未展示前

        usePathCheck()//

    })

    .on("pageshow", '[data-role="page"]', function(){////页面切换后

        PageAnimationDefaultIn(this)//call page transition animation : slide in 

    })

    .on("submit", "#signin-form", function(e) {//sign in 表单提交
        e.preventDefault()
        checkSigninForm()//检测提交
        usePathCheck()//检测路径
    })

    .on("click", ".js-logout", function(e) {
        // sessionStorage.removeItem("userId");
        // checkUserId();
    })


});