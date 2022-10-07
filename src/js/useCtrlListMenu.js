let isMenuOpen = false

function openListMenu(tar){
    
    if (!isMenuOpen){//menu没有打开时执行

        isMenuOpen = true //锁定行为锁

        $(tar).addClass("listPageMenuConatiner_active")
            .find(".listPageMenuContent").addClass("listPageMenuContent_active")
            .siblings(".listPageMenubutton").hide()
        $(tar).siblings(".listPageMenuBackground").addClass("listPageMenuBackground_active")

    }else{
        return
    }
}
function closeListMenu_icon(tar){

        $(tar).parents(".listPageMenuConatiner")
            .removeClass("listPageMenuConatiner_active")
            .find(".listPageMenuContent").removeClass("listPageMenuContent_active")
            .siblings(".listPageMenubutton").show()
        $(tar).parents(".listPageMenuConatiner").siblings(".listPageMenuBackground").removeClass("listPageMenuBackground_active")

        setTimeout(()=>{isMenuOpen = false},300)//打开行为锁

}

function closeListMenu_background(tar){
    $(tar).removeClass("listPageMenuBackground_active").siblings(".listPageMenuConatiner")
        .removeClass("listPageMenuConatiner_active")
        .find(".listPageMenuContent").removeClass("listPageMenuContent_active")
        .siblings(".listPageMenubutton").show()
    

    setTimeout(()=>{isMenuOpen = false},300)//打开行为锁
}

export{
    openListMenu,
    closeListMenu_icon,
    closeListMenu_background
}