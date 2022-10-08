function openFullSreenPop(tar){
    $(tar).parents('[data-role="page"]').find('.fullSreenCoverPopContainer')
        .addClass('fullSreenCoverPopContainer_active')
}

function closeFullSreenPop(tar){
    $(tar).parents('.fullSreenCoverPopContainer')
        .removeClass('fullSreenCoverPopContainer_active')
}

export {
    openFullSreenPop,
    closeFullSreenPop
}