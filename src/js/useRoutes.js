import { query } from "./useFunctions.js"
import { makeMap, makeMarkers } from "./useMap.js";
import { makeColorlList, makeCatlList, makeCatPage,makeUserPage,makeCatEditePage,
    makePopupColorlist} from "./usePageTemplates.js";

// all_locations_by_user_id


const checkData = async()=>{

    if (!sessionStorage.all_locations_by_user_id){//检查数据是否存在
        var {result:cats} = await query({
            type:"all_locations_by_user_id",
            params:[sessionStorage.userId]
        })
        sessionStorage.all_locations_by_user_id = JSON.stringify(cats)
    }
    var catsData = JSON.parse(sessionStorage.all_locations_by_user_id) 

    return catsData
}

//创建地图
export const CreatMap = async() => {

    var cats = await checkData()

    console.log(cats)

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

    let map_el = await makeMap(".googleMapContainer",{lat:37.786038, lng:-122.399342});
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
                color.lastUpdate = cat.date_create //循环赋值 日期
                catsnum++ //累加计数
            }
        })
        color.catnum = catsnum //插入obj
    })

    $("#color-list-page .ListContainer").html(makeColorlList(colors))
}
//渲染猫咪列表页面
export const CatListPage = async() => {

    var cats = await checkData()

    var catslist = []
    
    cats.forEach((item)=>{//找出所有的符合color_id的data
        if(item.color_id==sessionStorage.Color_Id_Nav){
            catslist.push(item)
        }
    })


    $("#cat-list-page .pageTag h1").text(catslist[0].color) //修改tag
    $("#cat-list-page .ListContainer").html(makeCatlList(catslist))
    

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
    let {result:catedit} = await query({
        type:"cat_by_id",
        params:[sessionStorage.Cat_Id_Nav]
    })
    let {result:color} = await query({
        type:"color_by_id",
        params:[sessionStorage.Color_Id_Nav]
    })

    catedit[0].color = color[0].color

    console.log(catedit)
    $("#editing-page .ListContainer_default").html(makeCatEditePage(catedit))
    
}
//渲染user页面
export const UserProfilePage = async() => {
    let {result:user} = await query({ //请求用户数据
        type:"user_by_id",
        params:[sessionStorage.userId]
    })
    let {result:countCats} = await query({ //请求猫咪的总数
        type:"count_cats_by_user_id",
        params:[sessionStorage.userId]
    })
    let {result:countColors} = await query({ //请求颜色的总数
        type:"count_colors_by_user_id",
        params:[sessionStorage.userId]
    })


    user[0].countCats = countCats[0]['COUNT(*)'] //增加新的attr to user obj
    user[0].countColors = countColors[0]['COUNT(*)']


    $("#profile-page .profile_inforContainer").html(makeUserPage(user))
}

//渲染编辑颜色列表
export const ColorEditList = async() => {
    let {result:colors} = await query({ //请求用户数据
        type:"colors_by_user_id",
        params:[sessionStorage.userId]
    })

    $(".fullSreenCoverPopContainer .popContent_ChosseColor_colorlist").html(makePopupColorlist (colors))
}



