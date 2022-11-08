import { query } from "./useFunctions.js"
import { makeColorlList, makeCatlList, makeCatPage,makeUserPage,makeCatEditePage,
    makePopupColorlist} from "./usePageTemplates.js";


export const RecentPage = async() => {}

//渲染颜色列表页面
export const ColorListPage = async() => {

    let {result:colors} = await query({
        type:"colors_by_user_id",
        params:[sessionStorage.userId]
    })

    let {result:cats} = await query({
        type:"all_locations_by_user_id",
        params:[sessionStorage.userId]
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

    let {result:cats} = await query({
        type:"cats_by_color_id",
        params:[sessionStorage.Color_Id_Nav]
    })
    let {result:color} = await query({
        type:"color_by_id",
        params:[sessionStorage.Color_Id_Nav]
    })

    $("#cat-list-page .pageTag h1").text(color[0].color) //修改tag
    $("#cat-list-page .ListContainer").html(makeCatlList(cats))

}
//渲染猫咪页面
export const catProfilePage = async() => {
    let {result:thecat} = await query({
        type:"cat_by_id",
        params:[sessionStorage.Cat_Id_Nav]
    })
    let {result:color} = await query({
        type:"color_by_id",
        params:[sessionStorage.Color_Id_Nav]
    })

    $("#cat-detail-page .pageTag h1").text(color[0].color) //修改tag
    $("#cat-detail-page .catDetail_inforContainer").html(makeCatPage(thecat))
    
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



