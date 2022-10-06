function checkSigninForm(){

    const userval = $("#signin-username").val()
    const passval = $("#signin-password").val()

    console.log(userval, passval)

    if (userval === "user" && passval === "pass") {// Logged In

        console.log("Success")
        sessionStorage.userId = 3//存入证书
        $("#signin-form")[0].reset()//清空input

    } else {// Not Logged In

        console.log("Failure")
        sessionStorage.removeItem("userId")//清空证书
        $("#signin-form")[0].reset()//清空input
        $("#signInPageError_slot").html("Incorrect user name or password").css('color','var(--color-font-alert)')//插入错误警告
        setTimeout(()=>{$("#signInPageError_slot").html("Hi! Welcome to Color Cats").css('color','var(--color-font-light-v)');},3000)//移除错误警告
    
    }
}

function checkSignupForm(){

}

export {
    checkSigninForm,
    checkSignupForm
}