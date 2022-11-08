import{changeMapContainerSize} from "./useMap.js"//控制地图

function PageAnimationDefaultIn(tar){
    
    var theId = $(tar).attr('id')
    $(tar).find('.animation-default').css('bottom', 0)
    if(theId == 'cat-detail-page'){ //如果是进入猫猫详情页
        changeMapContainerSize('half') //地图尺寸减半
    }

}


function PageAnimationDefaultOut(tar){

    
    changeMapContainerSize('full') //不管离开哪一页都reset地图尺寸到100
    

    var theHeight = $(tar).find('.animation-default').css('height')

    $(tar).find('.animation-default').css('bottom', '-' + theHeight)

}



export{
    PageAnimationDefaultIn,
    PageAnimationDefaultOut
}