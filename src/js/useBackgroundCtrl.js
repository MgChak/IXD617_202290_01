export default function(){

    const preSigninPages = ["#signin-page", "#signup-page", ""];
    const SigninPages = ["#main-page", "#adding-page","#color-list-page","#cat-list-page","#cat-detail-page", ""];

    if (preSigninPages.some(p => p === window.location.hash)) {
        
        $("#backgroundContainer").addClass("backgroundContainer_active")
        $("#signinAndSignupPageBackground").removeClass("signinAndSignupPageBackground_unactive").addClass("signinAndSignupPageBackground_active")
    }else if (SigninPages.some(p => p === window.location.hash)){
        $("#backgroundContainer").removeClass("backgroundContainer_active")
        $("#signinAndSignupPageBackground").removeClass("signinAndSignupPageBackground_active").addClass("signinAndSignupPageBackground_unactive")
    }else{
        $.mobile.navigate("#signin-page");
        $("#backgroundContainer").addClass("backgroundContainer_active")
        $("#signinAndSignupPageBackground").removeClass("signinAndSignupPageBackground_unactive").addClass("signinAndSignupPageBackground_active")
    }

}