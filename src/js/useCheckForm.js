function checkSigninForm(){

    const userval = $("#signin-username").val()
    const passval = $("#signin-password").val()

    let loginActiveLock = false //行为锁

    if(!loginActiveLock){

        if (userval === "user" && passval === "pass") {// Logged In

            loginActiveLock = true //锁定
            console.log("Success")
            sessionStorage.userId = 3//存入证书
            $("#signin-form")[0].reset()//清空input

            setTimeout(()=>{loginActiveLock = false},3000)//登录成功后三秒后解锁

        } else {// Not Logged In

            console.log("Failure")
            sessionStorage.removeItem("userId")//清空证书
            $("#signin-form")[0].reset()//清空input
            $("#signInPageError_slot").html("Incorrect user name or password").css('color','var(--color-font-alert)')//插入错误警告
            setTimeout(()=>{$("#signInPageError_slot").html("Hi! Welcome to Color Cats").css('color','var(--color-font-light-v)');},3000)//移除错误警告
        
        }
    }else{
        return
    }
}

function checkSignupForm(){

}

export {
    checkSigninForm,
    checkSignupForm
}