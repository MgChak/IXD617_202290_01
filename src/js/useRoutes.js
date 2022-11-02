import { query } from "./useFunctions.js"
import { makeAnimalList } from "./usePageTemplates.js";


export const RecentPage = async() => {}

export const ColorListPage = async() => {//渲染颜色列表页面

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
        color.catnum = catsnum
    })

    $("#color-list-page .ListContainer").html(makeAnimalList(colors))
}

export const UserProfilePage = async() => {}

export const AnimalProfilePage = async() => {}