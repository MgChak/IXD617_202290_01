function openFullSreenPic(tar){
    $(tar).parents('[data-role="page"]').find('.catDetail_fullScreenPicContainer')
        .addClass('catDetail_fullScreenPicContainer_active')
}

function closeFullSreenPic(tar){
    $(tar).parents('.catDetail_fullScreenPicContainer')
        .removeClass('catDetail_fullScreenPicContainer_active')
}

export {
    openFullSreenPic,
    closeFullSreenPic
}