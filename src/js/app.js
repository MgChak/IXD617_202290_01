import {PageAnimationDefaultIn,PageAnimationDefaultOut} from "./usePageAnimation.js"//页面转换的动画
import {checkSigninForm,checkSignupForm} from "./useCheckForm.js"//表单提交与检查
import usePathCheck from "./usePathCheck.js"//路径检测
import {openListMenu,closeListMenu_icon,closeListMenu_background,eSortHandle} from "./useCtrlListMenu.js"//list二级菜单控制
import {openFullSreenPic,closeFullSreenPic} from "./usePopupCtrl.js"


$(()=>{

    let loginActionLock = false

    usePathCheck()//Ctrl background of the app: switch bettwen google map and color background
   
    $(document)

    .on("pagebeforeshow", '[data-role="page"]', function(){//页面切换后，还未展示前
        usePathCheck()//
    })
    .on("pageshow", '[data-role="page"]', function(){////页面切换后
        PageAnimationDefaultIn(this)//call page transition animation : slide in 
    })


    .on("submit", "#signin-form", function(e) {//sign in 表单提交
        e.preventDefault()
        if(!loginActionLock){ //检测行为锁
            loginActionLock=true//行为锁锁定
            checkSigninForm()//检测提交
            usePathCheck()//检测路径
            setTimeout(()=>{loginActionLock=false},1000)//行为锁解锁
        }else{ return } //行为锁锁定，拒绝执行

    })


    .on("click", ".js-logout", function(e) {
        // sessionStorage.removeItem("userId");
        // checkUserId();
    })
    .on("click", ".aTag", function(e) {//代理a标签执行动画
        e.preventDefault()
        var tar = $(this).parents('[data-role="page"]')//获取页面
        var tarPage = $(this).attr('href')//获取目标链接
        PageAnimationDefaultOut(tar)//执行动画函数
        setTimeout(()=>{ $.mobile.navigate(tarPage,{transition: "none"})},400)//等待400毫秒后导航到目标页面,关闭动画
        
    })
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
    .on("click", ".catDetail_fullScreenIcon", function() {//全屏图片icon被点击
        openFullSreenPic(this)
    })
    .on("click", ".clossFullScreenPicIcon", function() {//关闭全屏图片icon被点击
        closeFullSreenPic(this)
    })
    
    


});