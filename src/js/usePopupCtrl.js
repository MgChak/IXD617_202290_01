function openFullSreenPop(tar){
    $('.fullSreenCoverPopContainer').show()
    $('.fullSreenCoverPopBackground').show()
    setTimeout(()=>{
        $('.fullSreenCoverPopBackground').css('opacity','1')
        $('.fullSreenCoverPopBox').css('top','0px')
    },50)   
}

function closeFullSreenPop(tar){
    
    $('.fullSreenCoverPopBox').css('top','-100%')
    $('.fullSreenCoverPopBackground').css('opacity','0')
    setTimeout(()=>{
        $('.fullSreenCoverPopContainer').hide()
    },300)
}

export {
    openFullSreenPop,
    closeFullSreenPop
}