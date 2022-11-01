import { query } from "./useFunctions.js"
import { makeAnimalList } from "./usePageTemplates.js";


export const RecentPage = async() => {}

export const ColorListPage = async() => {//渲染颜色列表页面

    let {result:animals} = await query({
        type:"colors_by_user_id",
        params:[sessionStorage.userId]
    });


    animals.forEach(async (item) => { //循环颜色列表，根据颜色id获取数据
        let {result:catnum} = await query({//返回猫咪的总数
            type:"cats_count_by_color_id",
            params:[item.id]
        });
        let {result:lastUpDate} = await query({//返回最后创建的数据
            type:"last_update_by_color_id",
            params:[item.id]
        });
        console.log(lastUpDate)
        $("[data-solot-id="+item.id+"]").text(catnum[0]['COUNT(*)'] +' cats')//更新页面_数量
            .next('h2').text('Last Updata: '+lastUpDate[0].date_create.slice(0,10))//更新页面_日期
    });



    $("#color-list-page .ListContainer").html(makeAnimalList(animals))
}

export const UserProfilePage = async() => {}

export const AnimalProfilePage = async() => {}