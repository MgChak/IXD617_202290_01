import {PageAnimationDefaultIn,PageAnimationDefaultOut} from "./usePageAnimation.js"//页面转换的动画
import {checkSigninForm,checkSignupForm,resetAlert,
        submitSaveCatForm,submitEditCatForm,deleteCat,addColor,changeColor,
        deleteColor,editProfile,changePassword} from "./useCheckSubmit.js"//表单提交与检查
import { catProfilePage, ColorListPage,CatListPage, UserProfilePage,CatEditingPage,
    CreatMap} from "./useRoutes.js"; //路由访问数据
import usePathCheck from "./usePathCheck.js"//路径检测
import {openListMenu,closeListMenu_icon,closeListMenu_background,eSortHandle} from "./useCtrlListMenu.js"//list二级菜单控制
import {openFullSreenPop,closeFullSreenPop} from "./usePopupCtrl.js" //popup控制
import{starsCtrl} from "./useAddingEditPageFunctions.js" //添加和修改页面的控制
import{renderColorPopUp,renderPopup,handleColorSelect,handlePagePositionChange,deleteButtonTimer} from "./useRenderPopup.js"
import {pageMove}from"./useOnBoardingSlideShow.js"//onBording page slideshow Ctrl
import {pinRender} from "./pinCtrl.js"
import {renderComfirmation} from "./useComfirmationCtrl.js"
import {checkUpload} from "./useFunctions.js"


$(()=>{

    sessionStorage.removeItem('all_locations_by_user_id')

    let submitActionLock = false //登录行为锁

    let loginTimer//登录时间锁

    let onboardingActionLock = false //onboard行为锁

    let onboardingSlieshowPage = 0

    let choseColorPagePosition = 0 //选择颜色颜面的路径记录

    let deleteTimer //删除时间锁
    
    let catListPageStatus = 'close' // 猫猫页面状态（close/open）

    function navToWithAnimation(tarPage){//手动nav
        var tar = window.location.hash//获取当前页面
        PageAnimationDefaultOut(tar)//执行动画函数
        setTimeout(()=>{ $.mobile.navigate(tarPage,{transition: "none"})},400)//等待400毫秒后导航到目标页面,关闭动画
    
    }

    usePathCheck()//Ctrl background of the app: switch bettwen google map and color background

   
    $(document)

    //====================================================================================生命周期
    .on("pagecontainerbeforeshow",function(event,ui){//页面切换后，还未展示前
        closeFullSreenPop(this)
        usePathCheck()//检查登录状态
        // pinRender() //渲染mappin 

        /* PAGE ROUTES ; 切换并且渲染页面 */
        switch(ui.toPage[0].id) {
            case "main-page": CreatMap(); break;
            case "color-list-page": ColorListPage(); break;
            case "cat-list-page": CatListPage(); catListPageStatus = 'close'; $(".pageTag_c img").css('transform','rotate(180deg)'); break;
            case "cat-detail-page": catProfilePage();  break;
            case "editing-page": CatEditingPage(); break;
            case "profile-page": UserProfilePage(); break; 
        }
    })
    .on("pageshow", '[data-role="page"]', function(){////页面切换后
        PageAnimationDefaultIn(this)//call page transition animation : slide in 
    })

    //====================================================================================表单提交检查/登录登出
    .on("submit", "#signin-form", function(e) {//sign in 表单提交
        sessionStorage.removeItem('all_locations_by_user_id')
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
    .on("submit", "#signup-form", function(e) {//sign up 表单提交
        e.preventDefault()
        if(!submitActionLock){ //检测行为锁
            checkSignupForm()
            $.mobile.navigate('#signin-page',{transition: "none"})
        }else{ return } //行为锁锁定，拒绝执行
    })
    .on("submit", "#adding-form", function(e) {//添加猫
        e.preventDefault()
        if(!submitActionLock){ //检测行为锁
            submitActionLock=true//行为锁锁定
            var submitResult = submitSaveCatForm()//检测提交，返回结果
                if(submitResult == 'success'){//提交返回成功时
                    navToWithAnimation('#main-page')//导航到目标页面
                    renderComfirmation(submitResult,'Cat Save')//渲染提示 
                }
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
        sessionStorage.removeItem("userId")//移除令牌
        PageAnimationDefaultOut('#profile-page')//页面复位
        navToWithAnimation('#signin-page')
        sessionStorage.removeItem('all_locations_by_user_id')
        
    })
    //====================================================================================页面跳转目标id存储

    .on("click", "[data-nav-color—id]", function(e) {//点击存入id
        let id = $(this).data("nav-color—id");

        sessionStorage.Color_Id_Nav = id;

    })

    .on("click", "[data-nav-cat—id]", function(e) {//点击存入id
        let id = $(this).data("nav-cat—id");

        sessionStorage.Cat_Id_Nav = id;

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
    .on("click", ".leaveOnboPage", function() {//start和skip被点击
            onboardingSlieshowPage = pageMove(onboardingSlieshowPage,"leave")
            console.log('leave')
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
    .on("click", ".pageTag_c", function() {//猫猫列表页面开关点击
        if(catListPageStatus == 'close'){
            $('#cat-list-page > .animation-default').css('bottom','-70%')
                .find(".pageTag_c img").css('transform','rotate(0deg)')
            catListPageStatus = 'open'
        }else if(catListPageStatus == 'open'){
            $('#cat-list-page > .animation-default').css('bottom','0')
                .find(".pageTag_c img").css('transform','rotate(180deg)')
            catListPageStatus = 'close'
        }
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
    
    // .on("click", ".form-input-img", function() {//上传/修改图片，被点击
    //     openFullSreenPop(this) 
    //     renderPopup('img',this)
    // })
    .on("click", ".deleteCat", function() {//打开删除页面
        sessionStorage.catDeleteTar = $(this).data("tar-cat-id")
        openFullSreenPop(this) 
        renderPopup('delete',this)
        clearTimeout(deleteTimer)
        deleteTimer = deleteButtonTimer()
    })
    .on("change", "#cat-photo-input", function(e) {
        checkUpload(this.files[0])
        .then((d) => {
            console.log(d);
            let filename = `uploads/${d.result}`;
            $(this).parent().prev().val(filename);
            $(this).parent().css({
                "background-image": `url('${filename}')`
            })
        })
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
        console.log("you")
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".popContent_ChosseColor_nav_deleteEditSwitch", function() {//颜色弹出——删除修改切换被点击
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'editSwitch')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".popContent_ChosseColor_colorlist_delete", function() {//颜色弹出——颜色删除被点击
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'deletAlert')
        renderColorPopUp(choseColorPagePosition,this) 
        clearTimeout(deleteTimer)
        deleteTimer = deleteButtonTimer()
    })
    .on("click", ".popContent_ChosseColor_deleteAlert_cancel", function() {//从颜色警告返回
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'deletAlertBack')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".popContent_ChosseColor_deleteAlert_delete", function() {//最终确认删除颜色
        var submitResult = deleteColor(choseColorPagePosition)
        renderComfirmation('success','Delete Color')
        choseColorPagePosition = handlePagePositionChange(choseColorPagePosition,'deletAlertBack')
        renderColorPopUp(choseColorPagePosition,this) 
    })
    .on("click", ".updateColorname", function() {//更新颜色点击
       console.log('gengxin')
       var submitResult = changeColor(choseColorPagePosition)
    //    renderColorPopUp(choseColorPagePosition,this) 
        renderComfirmation(submitResult,'Change Color')
    })
    .on("click", ".addNewColorname", function() {//添加颜色点击
        console.log('tianjia')
        var submitResult = addColor(choseColorPagePosition)
        renderComfirmation('success','Add New Color')
     })
    //====================================================================================确认删除弹出
    .on("click", ".popop_delect_confirm_cat", function() {//确定删除猫猫
        
        var submitResult = deleteCat()
        renderComfirmation('success','Delete Cat')
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

    .on("change", ".imagepicker_user input", function(e) {
        checkUpload(this.files[0])
        .then((d) => {
            console.log(d);
            let filename = `uploads/${d.result}`;
            $('#user-edit-photo-image').val(filename);
            $('.userImgContainer').css({
                "background-image": `url('${filename}')`
            })
            console.log($('#user-edit-photo-image').val());
        })
    })
 //====================================================================================修改密码弹出
    .on("click", ".popop_update_password", async function() {//确定更新用户资料
        var submitResult = await changePassword()
        if(submitResult == 'success'){//提交返回成功时
            closeFullSreenPop(this)//关闭pop up
            renderComfirmation(submitResult,'Update Password')
            console.log("called")
        }   
    })
    


});