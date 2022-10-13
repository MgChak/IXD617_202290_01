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

    }else if (LoginPages.some(p => p === window.location.hash)){
        //登陆后页面
        checkUserId('Login')//检查token

    }else{
        //其他未注册路径
        $.mobile.navigate("#signin-page",{transition: "none"});//返回登陆界面    
        checkUserId('preLogin')
    }

    function checkUserId(val){//检查token
        
        if(val == "preLogin"){// 处在登陆前页面
            if (sessionStorage.userId == 3){ //拥有正确的令牌
                $.mobile.navigate("#main-page",{transition: "none"})//导航到主页面
            }
        }else if(val == "Login"){// 处在登陆后页面
            if (sessionStorage.userId == undefined){ //没有令牌
                $.mobile.navigate("#signin-page",{transition: "none"})//导航到登录页面
            }
        }
    }

}