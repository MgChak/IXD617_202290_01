
async function checkSigninForm(){

    const userval = $("#signin-username").val()
    const passval = $("#signin-password").val()

    let founduser = await query({
        type: 'check_signin',
        params: [userval,passval]
    });


    if (founduser.result.length > 0) {// 密码正确 /找到至少一个用户

        console.log("Success")
        sessionStorage.userId = 3//存入证书
        $("#signin-form")[0].reset()//清空input
        $.mobile.navigate('#onboarding-page',{transition: "none"})//导航到onbording

    } else {// 密码不正确

        console.log("Failure")
        sessionStorage.removeItem("userId")//清空证书
        $("#signin-form")[0].reset()//清空input
        $("#signInPageError_slot").html("Incorrect user name or password").css('color','var(--color-font-alert)').parent('.signIn-note').addClass('formError')//插入错误警告
        setTimeout(()=>{$("#signInPageError_slot").parent('.signIn-note').removeClass('formError');},500)//移除错误警告
    
    }

}

function checkSignupForm(){

}

function submitSaveCatForm(){//提交保存猫

    return 'success' //目前默认成功
}

function submitEditCatForm(){//提交修改猫

    return 'success' //目前默认成功
}

function deleteCat(){//提交删除猫

    return 'success' //目前默认成功
}

function deleteColor(){//提交删除颜色

    return 'success' //目前默认成功
}

function editProfile(){//提交修改userprofile

    return 'success' //目前默认成功
}

function changePassword(){//提交修改密码

    return 'success' //目前默认成功
}

function resetAlert(){
    $("#signInPageError_slot").html("Hi! Welcome to Color Cats")
        .css('color','var(--color-font-light-v)')//移除登录错误警告
}

export {
    checkSigninForm,
    checkSignupForm,
    resetAlert,
    submitSaveCatForm,
    submitEditCatForm,
    deleteCat,
    deleteColor,
    editProfile,
    changePassword
}