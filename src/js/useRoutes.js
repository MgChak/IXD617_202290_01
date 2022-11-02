import { query } from "./useFunctions.js"
import { makeColorlList, makeCatlList } from "./usePageTemplates.js";


export const RecentPage = async() => {}

//渲染颜色列表页面
export const ColorListPage = async() => {

    let {result:colors} = await query({
        type:"colors_by_user_id",
        params:[sessionStorage.userId]
    })

    let {result:cats} = await query({
        type:"cats_colorId_date_by_user_id",
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
        type:"locations_by_color_id",
        params:[sessionStorage.targetPageId]
    })

    $("#cat-list-page .ListContainer").html(makeCatlList(cats))
    
    console.log(cats)
}

export const UserProfilePage = async() => {}

export const AnimalProfilePage = async() => {}