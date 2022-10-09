import {PageAnimationDefaultIn,PageAnimationDefaultOut} from "./usePageAnimation.js"//页面转换的动画
import {checkSigninForm,checkSignupForm} from "./useCheckForm.js"//表单提交与检查
import usePathCheck from "./usePathCheck.js"//路径检测
import {openListMenu,closeListMenu_icon,closeListMenu_background,eSortHandle} from "./useCtrlListMenu.js"//list二级菜单控制
import {openFullSreenPop,closeFullSreenPop} from "./usePopupCtrl.js" //popup控制
import{starsCtrl} from "./useAddingEditPageFunctions.js" //添加和修改页面的控制
import{renderColorPopUp,renderPopup,handleColorSelect,handlePagePositionChange} from "./useRenderPopup.js"

$(()=>{

    let loginActionLock = false //登录行为锁

    let choseColorPagePosition = 0 //选择颜色颜面的路径记录

    usePathCheck()//Ctrl background of the app: switch bettwen google map and color background
   
    $(document)

    //====================================================================================生命周期
    .on("pagebeforeshow", '[data-role="page"]', function(){//页面切换后，还未展示前
        closeFullSreenPop(this)
        usePathCheck()//   
    })
    .on("pageshow", '[data-role="page"]', function(){////页面切换后
        PageAnimationDefaultIn(this)//call page transition animation : slide in 
    })

    //====================================================================================表单提交检查/登录登出
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

    //====================================================================================a标签劫持
    
    .on("click", ".aTag", function(e) {//代理a标签执行动画
        e.preventDefault()
        var tar = window.location.hash//获取当前页面
        var tarPage = $(this).attr('href')//获取目标页面
        PageAnimationDefaultOut(tar)//执行动画函数
        setTimeout(()=>{ $.mobile.navigate(tarPage,{transition: "none"})},400)//等待400毫秒后导航到目标页面,关闭动画
        
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
    


});