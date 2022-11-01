import { query } from "./useFunctions.js"
import { makeAnimalList } from "./usePageTemplates.js";


export const RecentPage = async() => {}

export const ColorListPage = async() => {

    let {result:animals} = await query({
        type:"colors_by_user_id",
        params:[sessionStorage.userId]
    });


    let Animals =  animals.forEach(async (item) => {
        let {result:l} = await query({
            type:"cats_count_by_color_id",
            params:[item.id]
        });
        // item.catnum = a
        console.log(l[0]['COUNT(*)'])
    });

    // console.log(Animals)

    

    $("#color-list-page .ListContainer").html(makeAnimalList(animals))
}

export const UserProfilePage = async() => {}

export const AnimalProfilePage = async() => {}