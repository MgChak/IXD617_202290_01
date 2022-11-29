import { query } from "./useFunctions.js"
import {checkData} from"./useRoutes.js"
import {renderColorPopUp} from "./useRenderPopup.js"
import {pageReresh} from ".//usePopupCtrl.js"

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

async function checkSignupForm(){//注册表格
  
    let SignupForm = {name:'',username:'',password:'',password_re:''}
    SignupForm.name = $('#signup-name').val()
    SignupForm.username = $('#signup-username').val()
    SignupForm.password = $('#signup-password').val()
    SignupForm.password_re = $('#signup-repassword').val()

    if (SignupForm.password == SignupForm.password_re){

        console.log(SignupForm)

        let founduser = await query({
            type: 'signup',
            params: [SignupForm.name,SignupForm.username,SignupForm.password,' ',' ']
        });

    }else if(SignupForm.name == undefined || SignupForm.name == ' ' || SignupForm.username == undefined || SignupForm.username == ' ' || SignupForm.password == undefined || SignupForm.password == ' '){
        $(".signUp-note h1").html("The user name or password is not entered").css('color','var(--color-font-alert)').addClass('formError')//插入错误警告
        setTimeout(()=>{$(".signUp-note h1").html('Hi! Welcome to Color Cats.').css('color','var(--color-font-light-v)').removeClass('formError');},3000)//移除错误警告
    }else{
        $(".signUp-note h1").html("The password does not match").css('color','var(--color-font-alert)').addClass('formError')//插入错误警告
        setTimeout(()=>{$(".signUp-note h1").html('Hi! Welcome to Color Cats.').css('color','var(--color-font-light-v)').removeClass('formError');},3000)//移除错误警告
    }

}

function submitSaveCatForm(){//提交保存猫

    sessionStorage.removeItem('all_locations_by_user_id')
    sessionStorage.removeItem('user_data')

    return 'success' //目前默认成功
}

function submitEditCatForm(){//提交修改猫

    var photo = $("#editing-img").val();
    var color_id = $("#editing-color").val();
    var friendly = $("#editing-friendly").val();
    var description = $("#editing-note").val();
    
    console.log(description)

    query({
        type: 'update_animal',
        params: [
            photo,
            color_id,
            friendly,
            description,
            sessionStorage.Cat_Id_Nav
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } 
    })

    sessionStorage.removeItem('all_locations_by_user_id')
    sessionStorage.removeItem('user_data')
    return 'success'
}

function deleteCat(){//提交删除猫

    sessionStorage.removeItem('all_locations_by_user_id')
    sessionStorage.removeItem('user_data')

    query({
        type: 'delete_locations_by_id',
        params: [
            sessionStorage.catDeleteTar
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } 
    })
    return 'success' //目前默认成功
}

async function addColor(choseColorPagePosition){//提交添加颜色

    sessionStorage.removeItem('all_locations_by_user_id')
    sessionStorage.removeItem('user_data')

    var theColor = $('.newColorInputSlot').val()

    await query({
        type: 'insert_color',
        params: [
            sessionStorage.userId,
            theColor,
        ]
    }).then((data)=>{
        renderColorPopUp(choseColorPagePosition,this)
        if (data.error) {
            throw(data.error);
        } 
    })


    return 'success' //目前默认成功

}

async function changeColor(choseColorPagePosition){//提交修改颜色

    sessionStorage.removeItem('all_locations_by_user_id')
    sessionStorage.removeItem('user_data')

    var theId = $('.fullScreenNav_Right').attr('color-id')
    var theColor = $('.newColorInputSlot').val()

    console.log(theId,theColor)

    await query({
        type: 'update_color',
        params: [
            theColor,
            theId
        ]
    }).then((data)=>{
        renderColorPopUp(choseColorPagePosition,this)
        if (data.error) {
            throw(data.error);
        } 
    })

    return 'success' //目前默认成功
}

function deleteColor(choseColorPagePosition){//提交删除颜色

    sessionStorage.removeItem('all_locations_by_user_id')

    sessionStorage.removeItem('user_data')

    var theId = $('.fullScreenNav_Right').attr('color-id')
    var theColor = $('.newColorInputSlot').val()

    console.log(theId,theColor)

    query({
        type: 'delete_color',
        params: [
            sessionStorage.DeleteTarId
        ]
    }).then((data)=>{
        // renderColorPopUp(choseColorPagePosition,this)
        if (data.error) {
            throw(data.error);
        } 
    })
    query({
        type: 'delete_locations_by_color',
        params: [
            sessionStorage.DeleteTarId
        ]
    }).then((data)=>{
        // renderColorPopUp(choseColorPagePosition,this)
        if (data.error) {
            throw(data.error);
        } 
    })
   
    return 'success' //目前默认成功
}

async function editProfile(){//提交修改userprofile

    var username = $("#editUserName").val();
    var img = $("#editing-note").val();

    await query({
        type: 'update_user',
        params: [
            username,
            sessionStorage.userId
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } 
    })
    sessionStorage.removeItem('all_locations_by_user_id')
    sessionStorage.removeItem('user_data')
    pageReresh()
    return 'success' //目前默认成功
}

async function changePassword(){//提交修改密码

    const userval = JSON.parse(sessionStorage.user_data)[0].username
    const passval = $("#changePassWord_c").val()

    const newpass1 = $("#changePassWord_n").val()
    const newpass2 = $("#changePassWord_nr").val()

    let founduser = await query({
        type: 'check_signin',
        params: [userval,passval]
    });

    console.log(userval,passval)
    var result
    if (founduser.result.length > 0) {// 密码正确 /找到至少一个用户

        if(newpass1 == newpass2){
            console.log("Success")
            sessionStorage.userId = founduser.result[0].id;
            result =  'success' //目前默认成功

            await query({
                type: 'update_password',
                params: [
                    newpass1,
                    sessionStorage.userId
                ]
            }).then((data)=>{
                if (data.error) {
                    throw(data.error);
                } 
            })

            sessionStorage.removeItem('all_locations_by_user_id')
            sessionStorage.removeItem('user_data')
        } else{
            console.log("Failure_r0")
            $(".popContentConatiner_changePassword_container h1").text("Two Passwords Dosn't Match").css('color','var(--color-font-alert)').addClass('formError')//插入错误警告
        }
    } else {// 密码不正确
        console.log("Failure_r")
        $(".popContentConatiner_changePassword_container h1").text("Incorrect Current password").css('color','var(--color-font-alert)').addClass('formError')//插入错误警告
        
    }

    

   return result
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
    addColor,
    changeColor,
    deleteColor,
    editProfile,
    changePassword
}