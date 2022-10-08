function openFullSreenPop(tar){
    $('.fullSreenCoverPopContainer')
        .addClass('fullSreenCoverPopContainer_active')
}

function closeFullSreenPop(tar){
    $('.fullSreenCoverPopContainer')
        .removeClass('fullSreenCoverPopContainer_active')
}

export {
    openFullSreenPop,
    closeFullSreenPop
}