import {PageAnimationDefaultIn,PageAnimationDefaultOut} from "./usePageAnimation.js"//页面转换的动画
import {checkSigninForm,checkSignupForm,resetAlert,
        submitSaveCatForm,submitEditCatForm,deleteCat,deleteColor,
        editProfile,changePassword} from "./useCheckSubmit.js"//表单提交与检查
import usePathCheck from "./usePathCheck.js"//路径检测
import {openListMenu,closeListMenu_icon,closeListMenu_background,eSortHandle} from "./useCtrlListMenu.js"//list二级菜单控制
import {openFullSreenPop,closeFullSreenPop} from "./usePopupCtrl.js" //popup控制
import{starsCtrl} from "./useAddingEditPageFunctions.js" //添加和修改页面的控制
import{renderColorPopUp,renderPopup,handleColorSelect,handlePagePositionChange} from "./useRenderPopup.js"
import {pageMove}from"./useOnBoardingSlideShow.js"//onBording page slideshow Ctrl
import {pinRender} from "./pinCtrl.js"
import {renderComfirmation} from "./useComfirmationCtrl.js"

$(()=>{

    let submitActionLock = false //登录行为锁

    let loginTimer//登录时间锁

    let onboardingActionLock = false //onboard行为锁

    let onboardingSlieshowPage = 0

    let choseColorPagePosition = 0 //选择颜色颜面的路径记录

    function navToWithAnimation(tarPage){//手动nav
        var tar = window.location.hash//获取当前页面
        PageAnimationDefaultOut(tar)//执行动画函数
        setTimeout(()=>{ $.mobile.navigate(tarPage,{transition: "none"})},400)//等待400毫秒后导航到目标页面,关闭动画
        console.log(tar)
    }

    usePathCheck()//Ctrl background of the app: switch bettwen google map and color background
   
    $(document)

    //====================================================================================生命周期
    .on("pagebeforeshow", '[data-role="page"]', function(){//页面切换后，还未展示前
        closeFullSreenPop(this)
        usePathCheck()//检查登录状态
        pinRender() //渲染mappin
    })
    .on("pageshow", '[data-role="page"]', function(){////页面切换后
        PageAnimationDefaultIn(this)//call page transition animation : slide in 
    })

    //====================================================================================表单提交检查/登录登出
    .on("submit", "#signin-form", function(e) {//sign in 表单提交
        e.preventDefault()
        if(!submitActionLock){ //检测行为锁
            submitActionLock=true//行为锁锁定
            checkSigninForm()//检测提交
            onboardingSlieshowPage = pageMove(onboardingSlieshowPage,"reset")//重置onbording
            setTimeout(()=>{submitActionLock=false},500)//行为锁解锁
            clearTimeout(loginTimer)//清除正在运行的计时器
            loginTimer = setTimeout(resetAlert,5000)//开启计时器
        }else{ return } //行为锁锁定，拒绝执行
    })
    .on("submit", "#adding-form", function(e) {//添加猫
        e.preventDefault()
        if(!submitActionLock){ //检测行为锁
            submitActionLock=true//行为锁锁定
            var submitResult = submitSaveCatForm()//检测提交，返回结果
                if(submitResult == 'success'){//提交返回成功时
                    navToWithAnimation('#cat-detail-page')//导航到目标页面
                }
            renderComfirmation(submitResult,'Cat Save')//渲染提示
            setTimeout(()=>{submitActionLock=false},500)//行为锁解锁
          
        }else{ return } //行为锁锁定，拒绝执行
    })
    .on("submit", "#editing-form", function(e) {//修改猫
        e.preventDefault()
        if(!submitActionLock){ //检测行为锁
            submitActionLock=true//行为锁锁定
            var submitResult = submitEditCatForm()//检测提交，返回结果
                if(submitResult == 'success'){//提交返回成功时
                    navToWithAnimation('#cat-detail-page')//导航到目标页面
                }
            renderComfirmation(submitResult,'Update')//渲染提示
            setTimeout(()=>{submitActionLock=false},500)//行为锁解锁
        }else{ return } //行为锁锁定，拒绝执行
    })
    .on("click", ".logoutButton", function(e) {
        sessionStorage.removeItem("userId");//移除令牌
        PageAnimationDefaultOut('#profile-page')//页面复位
        usePathCheck()//导航

    })

    //====================================================================================a标签劫持
    
    .on("click", ".aTag", function(e) {//代理a标签执行动画
        e.preventDefault()
        var tar = window.location.hash//获取当前页面
        var tarPage = $(this).attr('href')//获取目标页面
        PageAnimationDefaultOut(tar)//执行动画函数
        setTimeout(()=>{ $.mobile.navigate(tarPage,{transition: "none"})},400)//等待400毫秒后导航到目标页面,关闭动画
        
    })
    //====================================================================================onbording page
    .on("click", ".onbo_button_next", function() {//下一页被点击
        if(!onboardingActionLock){
            onboardingActionLock = true //行为锁锁定
            onboardingSlieshowPage = pageMove(onboardingSlieshowPage,"right")
            setTimeout(()=>{onboardingActionLock = false},300 )
        }
        
    })
    .on("click", ".onbo_button_pre", function() {//上一页被点击
        if(!onboardingActionLock){
            onboardingActionLock = true //行为锁锁定
            onboardingSlieshowPage = pageMove(onboardingSlieshowPage,"left")
            setTimeout(()=>{onboardingActionLock = false},300 )
        }
    })
    .on("click", ".onbo_dot", function() {//点点被点击
        if(!onboardingActionLock){
            onboardingActionLock = true //行为锁锁定
            onboardingSlieshowPage = pageMove(onboardingSlieshowPage,"dot",this)
            setTimeout(()=>{onboardingActionLock = false},300 )
        }
    })
    .on("click", ".leaveOnboPage", function() {//点点被点击
            onboardingSlieshowPage = pageMove(onboardingSlieshowPage,"leave")

    })

    //====================================================================================list page /二级菜单
    .on("click", ".listPageMenuConatiner", function() {//点击打开列表的二级菜单
        openListMenu(this)
    })
    .on("click", ".clossListNavIcon, .listPageMenuBackground_active", function(e) {//点击close图标关闭列表的二级菜单
        closeListMenu_icon(this)
    })
    .on("click", ".listPageMenuBackground_active", function(e) {//点击背景关闭列表的二级菜单
        closeListMenu_background(this)
    })
    .on("click", ".sortItem", function() {//sort选项被点击
        eSortHandle(this)
    })
    .on("click", ".colorListEditColor", function() {//打开颜色列表编辑
        choseColorPagePosition = "listPageOri" //保存定位
        openFullSreenPop(this) 
        renderPopup('colors',this)
        renderColorPopUp(choseColorPagePosition,this)
    })

    //====================================================================================detail page 
    .on("click", ".catDetail_fullScreenIcon", function() {//全屏图片icon被点击
        openFullSreenPop(this)
        renderPopup('fullimg',this)
    })
    .on("click", ".clossFullScreenPicIcon", function() {//关闭全屏图片icon被点击
        closeFullSreenPop(this)
    })

    //====================================================================================adding/edit page
    .on("click", ".friendlyStar", function() {//友好等级星星被点击
        starsCtrl(this)
    })
    
    .on("click", ".form-input-img", function() {//上传/修改图片，被点击
        openFullSreenPop(this) 
        renderPopup('img',this)
    })
    .on("click", ".deleteCat", function() {//删除
        openFullSreenPop(this) 
        renderPopup('delete',this)
    })
    //====================================================================================profile page

    .on("click", ".prodile_editProfile", function() {//修改用户信息被点击
        openFullSreenPop(this) 
        renderPopup('profileEdit',this)
    })
    .on("click", ".prodile_editPassword", function() {//修改密码被点击
        openFullSreenPop(this) 
        renderPopup('changePassword',this)
    })
    //====================================================================================颜色弹出
    .on("click", ".editingAdding_color_conatiner", function() {//颜色弹出——打开颜色选择popup页面
        choseColorPagePosition = 'ori' //保存定位
        openFullSreenPop(this) 
        renderPopup('colors',this)
        renderColorPopUp(choseColorPagePosition,this)     
    })
    .on("click", ".popContent_ChosseColor_colorlist_itemLine", function() {//颜色弹出——颜色选择
        handleColorSelect(choseColorPagePosition,this)      
    })
    .on("click", ".editColorListIcon", function() {//颜色弹出——编辑颜色列表
        choseColorPagePosition = 'editColorList'
        renderColorPopUp(choseColorPagePosition,this)      
    })
    .on("click", ".popContent_ChosseColor_addColor", function() {//颜色弹出——添加颜色
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'ColorAdd')
        renderColorPopUp(choseColorPagePosition,this)      
    })
    .on("click", ".popContent_ChosseColor_colorlist_edit", function() {//颜色弹出——编辑颜色
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'ColorChangeIconClick')
        renderColorPopUp(choseColorPagePosition,this)      
    })    
    .on("click", ".fullScreenNav_Left", function() {//颜色弹出——左icon被点击
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'LeftClick')
        renderColorPopUp(choseColorPagePosition,this)
    })
    .on("click", ".fullScreenNav_Right", function() {//颜色弹出——右icon被点击
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'RightClick')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".popContent_ChosseColor_nav_deleteEditSwitch", function() {//颜色弹出——删除修改切换被点击
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'editSwitch')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".popContent_ChosseColor_colorlist_delete", function() {//颜色弹出——颜色删除被点击
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'deletAlert')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".popContent_ChosseColor_deleteAlert_cancel", function() {//从颜色警告返回
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'deletAlertBack')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".popContent_ChosseColor_deleteAlert_delete", function() {//最终确认删除颜色
        var submitResult = deleteColor()
        renderComfirmation(submitResult,'Delete Color')
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'deletAlertBack')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    //====================================================================================确认删除弹出
    .on("click", ".popop_delect_confirm_cat", function() {//确定删除猫猫
        var submitResult = deleteCat()
        renderComfirmation(submitResult,'Delete Cat')
        if(submitResult == 'success'){//提交返回成功时
            navToWithAnimation('#cat-list-page')//导航到目标页面
        }
        
    })
    //====================================================================================编辑user profile弹出
     
    .on("click", ".popop_update_userprofile", function() {//确定更新用户资料
        var submitResult = editProfile()
        renderComfirmation(submitResult,'Profile Update')
        if(submitResult == 'success'){//提交返回成功时
            closeFullSreenPop(this)//关闭pop up
        }
        
    })
 //====================================================================================修改密码弹出
    .on("click", ".popop_update_password", function() {//确定更新用户资料
        var submitResult = changePassword()
        renderComfirmation(submitResult,'Update Password')
        if(submitResult == 'success'){//提交返回成功时
            closeFullSreenPop(this)//关闭pop up
        }   
    })
    


});