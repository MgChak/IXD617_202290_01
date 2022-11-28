
import { catProfilePage, ColorListPage,CatListPage, UserProfilePage,CatEditingPage,
    CreatMap} from "./useRoutes.js"; //路由访问数据

export function pageReresh(){
    switch(window.location.hash) {
        case "#main-page": CreatMap(); break;
        case "#color-list-page": ColorListPage(); break;
        case "#cat-list-page": CatListPage(); break;
        case "#cat-detail-page": catProfilePage(); break;
        // case "#editing-page": CatEditingPage(); break;
        case "#profile-page": UserProfilePage(); break; 
    }
    console.log(window.location.hash)
}


function openFullSreenPop(tar){
    $('.fullSreenCoverPopContainer').show()
    $('.fullSreenCoverPopBackground').show()
    setTimeout(()=>{
        $('.fullSreenCoverPopBackground').css('opacity','1')
        $('.fullSreenCoverPopBox').css('top','0px')
    },50)   
}

function closeFullSreenPop(tar){

    pageReresh()//刷新当前页面的内容
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