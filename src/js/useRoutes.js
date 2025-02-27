import { query } from "./useFunctions.js"
import { makeMap, makeMarkers } from "./useMap.js";
import { makeColorlList, makeCatlList, makeCatPage,makeUserPage,makeCatEditePage,
    makePopupColorlist} from "./usePageTemplates.js";

// all_locations_by_user_id

let emptyColors
export const checkData = async()=>{

    if (!sessionStorage.all_locations_by_user_id){//检查数据是否存在
        var {result:cats} = await query({
            type:"all_locations_by_user_id",
            params:[sessionStorage.userId]
        })
        sessionStorage.all_locations_by_user_id = JSON.stringify(cats)
    }
    var catsData = JSON.parse(sessionStorage.all_locations_by_user_id) 

    var allCats = []
    emptyColors = []

    catsData.forEach((item)=>{
        if (item.id == null){
            emptyColors.push(item)
        }else{
            allCats.push(item)
        }
    })
    return allCats
    
}

const checkUserData = async()=>{
    if (!sessionStorage.user_data || JSON.parse(sessionStorage.user_data).id != sessionStorage.userId){//检查数据是否存在
        var {result:user} = await query({ //请求用户数据
            type:"user_by_id",
            params:[sessionStorage.userId]
        })
        sessionStorage.user_data = JSON.stringify(user)
    }
    var userData = JSON.parse(sessionStorage.user_data) 

    return userData
}

//sort list 所使用的所有function===============================
const sortByStars_sM_L = (a,b)=>{
    if(a.friendly > b.friendly){
        return -1
    }else if (a.friendly < b.friendly){
        return 1
    }else if(a.friendly = b.friendly){
        return 0
    }
}
const sortByStars_sL_M = (a,b)=>{
    if(a.friendly > b.friendly){
        return 1
    }else if (a.friendly < b.friendly){
        return -1
    }else if(a.friendly = b.friendly){
        return 0
    }
}
const sortByStars_N_O = (a,b)=>{
    if(a.date_create > b.date_create){
        return -1
    }else if (a.date_create < b.date_create){
        return 1
    }else if(a.date_create = b.date_create){
        return 0
    }
}
const sortByStars_O_N = (a,b)=>{
    if(a.date_create > b.date_create){
        return 1
    }else if (a.date_create < b.date_create){
        return -1
    }else if(a.date_create = b.date_create){
        return 0
    }
}

const sortByStars_M_L = (a,b)=>{
    if(a.catnum > b.catnum){
        return -1
    }else if (a.catnum < b.catnum){
        return 1
    }else if(a.catnum = b.catnum){
        return 0
    }
}
const sortByStars_L_M = (a,b)=>{
    if(a.catnum > b.catnum){
        return 1
    }else if (a.catnum < b.catnum){
        return -1
    }else if(a.catnum = b.catnum){
        return 0
    }
}

const sortList = (theList)=>{

    let pageNow = window.location.hash

    if(pageNow == '#cat-list-page'){//猫猫列表页面
        switch (sessionStorage.listSortby ){
            case 'sM_L':
                theList.sort(sortByStars_sM_L)
            break;
            case 'sL_M':
                theList.sort(sortByStars_sL_M)
            break;
            case 'N_O':
                theList.sort(sortByStars_N_O)
            break;
            case 'O_N':
                theList.sort(sortByStars_O_N)
            break;
            default:
                theList.sort(sortByStars_N_O)
                sessionStorage.listSortby = 'N_O'
            break;
        }


    }else if(pageNow == '#color-list-page'){//颜色列表页面
    
        switch (sessionStorage.listSortby ){
            case 'M_L':
                theList.sort(sortByStars_M_L)
            break;
            case 'L_M':
                theList.sort(sortByStars_L_M)
            break;
            case 'N_O':
                theList.sort(sortByStars_N_O)
            break;
            case 'O_N':
                theList.sort(sortByStars_O_N)
            break;
            default:
                theList.sort(sortByStars_N_O)
                sessionStorage.listSortby = 'N_O'
            break;
        }
       

    }
    return theList
}
//=======================================================


//创建地图
export const CreatMap = async() => {

    var cats = await checkData()

    // console.log(cats)

    //制作color array
    var colors = []
    cats.forEach((item)=>{
        if (colors.indexOf(item.color_id)== -1){//判断数列中是否已经存在此id
            colors.push(item.color_id)
        }
    })

    let recentCatsPosition = [] 
    colors.forEach((color) => { //根据颜色循环
        let positionOfThisColor = { lat:0,lng:0,id:0}
        cats.forEach((cat)=>{//根据猫咪数据循环
            if (cat.color_id == color){ //确认id
                positionOfThisColor.lat = cat.lat
                positionOfThisColor.lng = cat.lng
                positionOfThisColor.id = cat.id
            }
        })
        recentCatsPosition.push(positionOfThisColor)//插入obj
    })
    

    let center 
    if (recentCatsPosition.length == 0){
        center={lat:37.786038, lng:-122.399342}
    }else{
        center = recentCatsPosition[0]
    }

    let map_el = await makeMap(".googleMapContainer",center);
    makeMarkers(map_el,recentCatsPosition);

}

//渲染颜色列表页面
export const ColorListPage = async() => {

    var cats = await checkData()


    //制作color array
    var colors = []
    var colorsIds = []
    cats.forEach((item)=>{
        
        if (colorsIds.indexOf(item.color_id)== -1){//判断数列中是否已经存在此id

            colorsIds.push(item.color_id)

            var color = {}//因为需要过多信息，所以创建obj为每一个item
            color.id = item.color_id
            color.date_create = item.date_create
            color.color = item.color
            color.img = item.img
            colors.push(color)
        }
    })

    colors.forEach((color) => { //根据颜色循环
        var catsnum = 0
        cats.forEach((cat)=>{//根据猫咪数据循环
            if (cat.color_id == color.id){ //确认id
                color.date_create = cat.date_create //循环赋值 日期
                color.img = cat.photo
                catsnum++ //累加计数
            }
        })
        color.catnum = catsnum //插入obj
    })

    var thecolors = colors.concat(emptyColors)

    thecolors = sortList(thecolors)


    $("#color-list-page .ListContainer").html(makeColorlList(thecolors))
}
//渲染猫咪列表页面
export const CatListPage = async() => {

    var cats = await checkData()

    var catslist = []

    var catsLocationList = []

    
    cats.forEach((item)=>{//找出所有的符合color_id的data
        if(item.color_id==sessionStorage.Color_Id_Nav){
            catslist.push(item)

            catsLocationList.push({lat:item.lat,lng:item.lng,id:item.id})
        }
    })

    catslist = sortList(catslist)


    $("#cat-list-page .pageTag h1").text(catslist[0].color) //修改tag
    $("#cat-list-page .ListContainer").html(makeCatlList(catslist))
    
    let map_el = await makeMap(".googleMapContainer",catsLocationList[0]);
    makeMarkers(map_el,catsLocationList);

}
//渲染猫咪页面
export const catProfilePage = async() => {

    var cats = await checkData()

    var thecat = cats.find((item)=>{//知道到猫咪的数据
        var tarcat
        if (item.id == sessionStorage.Cat_Id_Nav){
            tarcat = item
        }
        return tarcat
    })


    sessionStorage.Color_Id_Nav = thecat.color_id

    let catLocation = {lat:thecat.lat,lng:thecat.lng}

    $("#cat-detail-page .pageTag h1").text(thecat.color) //修改tag
    $("#cat-detail-page .catDetail_inforContainer").html(makeCatPage(thecat))

    let map_el = await makeMap(".googleMapContainer",catLocation);
    makeMarkers(map_el,[catLocation]);
    
}
//渲染猫咪编辑页面
export const CatEditingPage = async() => {
    
    var cats = await checkData()

    var thecat = cats.find((item)=>{//知道到猫咪的数据
        var tarcat
        if (item.id == sessionStorage.Cat_Id_Nav){
            tarcat = item
        }
        return tarcat
    })

    console.log(thecat)
    $("#editing-page .ListContainer_default").html(makeCatEditePage(thecat))
    
}
//渲染user页面
export const UserProfilePage = async() => {
    
    var user = await checkUserData()

    var cats = await checkData()


    //制作color array
    var colorsIds = []
    cats.forEach((item)=>{
        if (colorsIds.indexOf(item.color_id)== -1){//判断数列中是否已经存在此id
            colorsIds.push(item.color_id)
        }
    })

    var thecolors = colorsIds.concat(emptyColors)

    console.log(cats,thecolors)
    user[0].cats = cats.length
    user[0].colors = thecolors.length
    // user[0].countCats = countCats[0]['COUNT(*)'] //增加新的attr to user obj
    // user[0].countColors = countColors[0]['COUNT(*)']


    $("#profile-page .profile_inforContainer").html(makeUserPage(user))
}

//渲染编辑颜色列表
export const ColorEditList = async() => {

    var cats = await checkData()
    //制作color array
    var colors = []
    var colorsIds = []
    cats.forEach((item)=>{
        
        if (colorsIds.indexOf(item.color_id)== -1){//判断数列中是否已经存在此id

            colorsIds.push(item.color_id)

            var color = {}//因为需要过多信息，所以创建obj为每一个item
            color.id = item.color_id
            color.color = item.color
            colors.push(color)
        }
    })
    emptyColors.forEach((item)=>{
        var a ={}
        a.id = item.cid
        a.color = item.color
        colors.push(a)
    })

    $(".fullSreenCoverPopContainer .popContent_ChosseColor_colorlist").html(makePopupColorlist (colors))
}
//返回删除目标颜色的数据
export const colorDelteComfirm = async(id) => {

    sessionStorage.DeleteTarId = id
    
    var cats = await checkData()
   var tarColor = {count:0}
   emptyColors.forEach((item)=>{
    if(item.cid == id){
        tarColor.color = item.color
        tarColor.count = 0
    }
   })
    cats.forEach((item)=>{
    if(item.color_id == id){
        tarColor.color = item.color
        tarColor.count++
    }
   })
   return tarColor
}




