export default function(){

    const preLoginPages = [
        "#signin-page", 
        "#signup-page", 
    ];
    const LoginPages = [
        "#onboarding-page",
        "#main-page", 
        "#adding-page",
        "#color-list-page",
        "#cat-list-page",
        "#cat-detail-page",
        "#editing-page",
        "#profile-page"
    ];

    if (preLoginPages.some(p => p === window.location.hash)) {
        //登陆前页面
        checkUserId('preLogin')//检查token
        backgroundControl('show')//开启背景
    }else if (LoginPages.some(p => p === window.location.hash)){
        //登陆后页面
        checkUserId('Login')//检查token
        backgroundControl('hide')//关闭背景
    }else{
        //其他未注册路径
        $.mobile.navigate("#signin-page",{transition: "none"});//返回登陆界面
        backgroundControl('show')//开启背景
        
    }




    function backgroundControl(val){//控制背景开关
        if(val==='show'){
            $("#backgroundContainer").addClass("backgroundContainer_active")
            $("#signinAndSignupPageBackground").removeClass("signinAndSignupPageBackground_unactive").addClass("signinAndSignupPageBackground_active")
        }else if(val==='hide'){
            $("#backgroundContainer").removeClass("backgroundContainer_active")
            $("#signinAndSignupPageBackground").removeClass("signinAndSignupPageBackground_active").addClass("signinAndSignupPageBackground_unactive")
        }
    }

    function checkUserId(val){//检查token
        
        if(val == "preLogin"){// 处在登陆前页面
            if (sessionStorage.userId == 3){ //拥有正确的令牌
                $.mobile.navigate("#main-page",{transition: "none"})//导航到主页面
                console.log("luyou1")
            }
        }else if(val == "Login"){// 处在登陆后页面
            if (sessionStorage.userId == undefined){ //没有令牌
                $.mobile.navigate("#signin-page",{transition: "none"})//导航到登录页面
            }
        }
    }

}