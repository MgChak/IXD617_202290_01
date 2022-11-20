import { query } from "./useFunctions.js"

async function checkSigninForm(){

    const userval = $("#signin-username").val()
    const passval = $("#signin-password").val()

    let founduser = await query({
        type: 'check_signin',
        params: [userval,passval]
    });


    if (founduser.result.length > 0) {// 密码正确 /找到至少一个用户

        console.log("Success")
        sessionStorage.userId = founduser.result[0].id;
        $("#signin-form")[0].reset()//清空input
        $.mobile.navigate('#onboarding-page',{transition: "none"})//导航到onbording

    } else {// 密码不正确

        console.log("Failure")
        sessionStorage.removeItem("userId")//清空证书
        $("#signin-form")[0].reset()//清空input
        $("#signInPageError_slot").html("Incorrect user name or password").css('color','var(--color-font-alert)').parent('.signIn-note').addClass('formError')//插入错误警告
        setTimeout(()=>{$("#signInPageError_slot").parent('.signIn-note').removeClass('formError');},3000)//移除错误警告
    
    }

}

async function checkSignupForm(){
  
    let SignupForm = {username:'',password:'',password_re:''}

    SignupForm.username = $('#signup-username').val()
    SignupForm.password = $('#signup-password').val()
    SignupForm.password_re = $('#signup-repassword').val()

    if (SignupForm.password == SignupForm.password_re){

        console.log(SignupForm)

    }else if(SignupForm.username == undefined || SignupForm.username == ' ' || SignupForm.password == undefined || SignupForm.password == ' '){
        $(".signUp-note h1").html("The user name or password is not entered").css('color','var(--color-font-alert)').addClass('formError')//插入错误警告
        setTimeout(()=>{$(".signUp-note h1").html('Hi! Welcome to Color Cats.').css('color','var(--color-font-light-v)').removeClass('formError');},3000)//移除错误警告
    }else{
        $(".signUp-note h1").html("The password does not match").css('color','var(--color-font-alert)').addClass('formError')//插入错误警告
        setTimeout(()=>{$(".signUp-note h1").html('Hi! Welcome to Color Cats.').css('color','var(--color-font-light-v)').removeClass('formError');},3000)//移除错误警告
    }

}

function submitSaveCatForm(){//提交保存猫

    sessionStorage.removeItem('all_locations_by_user_id')

    return 'success' //目前默认成功
}

function submitEditCatForm(){//提交修改猫

    sessionStorage.removeItem('all_locations_by_user_id')

    return 'success' //目前默认成功
}

function deleteCat(){//提交删除猫

    sessionStorage.removeItem('all_locations_by_user_id')

    return 'success' //目前默认成功
}

function deleteColor(){//提交删除颜色

    sessionStorage.removeItem('all_locations_by_user_id')

    return 'success' //目前默认成功
}

function editProfile(){//提交修改userprofile

    sessionStorage.removeItem('all_locations_by_user_id')

    return 'success' //目前默认成功
}

function changePassword(){//提交修改密码

    sessionStorage.removeItem('all_locations_by_user_id')

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