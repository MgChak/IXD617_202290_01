function eSortHandle(tar){

    $(tar).addClass("sortItem_active")
        .siblings().removeClass("sortItem_active")
}

export {
    eSortHandle
}