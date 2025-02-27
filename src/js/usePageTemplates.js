import { templater,query } from "./useFunctions.js";


let handleFriendlyData = (friendly)=>{
        
    let friendlyArray = [ //默认为0，全空
        ' <img class="friendlyStar" src="./src/img/icons/starUnactive.svg" alt="">',
        ' <img class="friendlyStar" src="./src/img/icons/starUnactive.svg" alt="">',
        ' <img class="friendlyStar" src="./src/img/icons/starUnactive.svg" alt="">',
        ' <img class="friendlyStar" src="./src/img/icons/starUnactive.svg" alt="">',
        ' <img class="friendlyStar" src="./src/img/icons/starUnactive.svg" alt="">'
    ]

    var i = 0

    for(i=0; i < friendly; i++){ //根据friendly数据循环次数，依次替换成激活状态
        friendlyArray[i] = '<img class="friendlyStar" src="./src/img/icons/starActive.svg" alt="">'
    }

    return friendlyArray.join().replace(/,/g,' ')
}

let handleDate = (date)=>date.slice(0,10)



//渲染颜色列表页面
export  const makeColorlList = templater(({id,color,img,date_create,catnum})=>{
if (id == null){
    return `
    <a class="listItem listItem_defult aTag" href="#adding-page" ">
        <div class="colorList_pic" style="background-image:url('${img}')"></div>
        <div class="colorList_informationContainer">
            <h1> ${color}</h1>
            <h2 class="catAmountSlot" data-solot-id="${id}">No cat yet, lets add one!</h2>
        </div>
        <div style="flex:1"></div>
        <img src="./src/img/icons/arrow.svg" alt="" style="margin-right:24px; opacity:0.3">
    </a>
    `

}else{
    return `
    <a class="listItem listItem_defult aTag" href="#cat-list-page" data-nav-color—id="${id}">
        <div class="colorList_pic" style="background-image:url('${img}')"></div>
        <div class="colorList_informationContainer">
            <h1> ${color}</h1>
            <h2 class="catAmountSlot" data-solot-id="${id}"> Amount : ${catnum} cats</h2>
            <h2>Last Update : ${handleDate(date_create)} </h2>
        </div>
        <div style="flex:1"></div>
        <img src="./src/img/icons/arrow.svg" alt="" style="margin-right:24px; opacity:0.3">
    </a>
    `
}

})

//渲染猫列表页面
export  const makeCatlList = templater(({id,color,photo,friendly,date_create})=>{
return `
<a class="listItem listItem_defult aTag" href="#cat-detail-page" data-nav-cat—id="${id}">
    <div class="catList_pic" style="background-image:url('${photo}')" ></div>
    <div class="catList_informationContainer">
        <h2> Date : ${handleDate(date_create)} </h2>
        <h2> Friendly : 
            ${handleFriendlyData(friendly)}
        </h2>
    </div>
    <div style="flex:1"></div>
    <img src="./src/img/icons/arrow.svg" alt="" style="margin-right:24px; opacity:0.3">
</a>
`
})

//渲染猫咪页面
export  const makeCatPage = templater(({id,friendly,photo,date_create,description})=>{
return `
<div class="catDetail_pic" style="background-image:url('${photo}')" data-photo='${photo}'>
    <img class="catDetail_fullScreenIcon" src="./src/img/icons/fullSreen.svg" alt="">
</div>
<div class="catDetail_inforBox">
    <h2> Date : ${handleDate(date_create)} </h2>
    <h2> Friendly : 
        ${handleFriendlyData(friendly)}
    </h2>
    <h2> Location : ${description}</h2>
</div>
`
})

//渲染猫咪编辑页面
export  const makeCatEditePage = templater(({id,color,color_id,friendly,photo,date_create,description})=>{
    return `
    <form class="form noMargin" id="editing-form" data-ajax="false">
                    
        <div class="form-control">
            <input type="hidden" id="editing-img" data-role="none" value="${photo}">
            <label class="form-input-img" style="background-image:url('${photo}')">
                <img src="./src/img/icons/addPicture.svg" alt="">
                <input type="file" id="cat-photo-input" data-role="none" style="display:none">
            </label>
        </div>

        <div class="form-control">
            <label class="form-label" for="editing-color" >COLOR</label>
            <input type="hidden" class="editingAdding_color" id="editing-color" data-role="none" value="${color_id}">
            <div class="form-input editingAdding_color_conatiner">${color}</div>
        </div>

        <div class="form-control">
            <label class="form-label" for="editing-friendly" >FRIENDLY</label>
            <input type="hidden" id="editing-friendly" data-role="none" value="${friendly}">
            <div class="form-input editingAdding_friendly_conatiner"> 
                ${handleFriendlyData(friendly)}
            </div>                     
        </div>

        <div class="form-control">
            <label class="form-label" for="editing-note" >Note</label>
            <textarea class="form-input" type="textarea" id="editing-note" data-role="none" style="height:100px;padding-top: 15px;"> ${description} </textarea>              
        </div>
        <!-- <div class="form-plactake"></div> -->
        <div class="form_buttonContainer_line1">
            <a class="form-button_s_redline deleteCat " style="line-height: 30px;width:42px" data-tar-cat-id="${id}"><img style="width:20px;height:20px;" src="./src/img/icons/trashcan_red.svg" alt=""></a>
            <input type="submit" class="form-button_s" value="UPDATE" data-role="none">
        </div>               
    </form>
    `
})
    

//渲染用户页面
export  const makeUserPage = templater(({id,img,name,username,cats,colors})=>{
return `
<div class="userImgContainer" style="background-image:url('${img}')" ></div>
<div class="userInforConatiner">
    <h1>${name}</h1>
    <h2>ID : ${username}</h2>
    <h3>CATS : ${cats} ; COLORS : ${colors}</h3>
</div>
`
})





//渲染popup 颜色列表页面
export  const makePopupColorlist = templater(({id,color,color_id})=>{
    return `
    <div class="popContent_ChosseColor_colorlist_itemLine" data-color-id="${id}">
        <div class="popContent_ChosseColor_colorlist_item">
            <h1 style="text-transform: uppercase;">${color}</h1>
            <img class="popContent_ChosseColor_colorlist_itemcheck" src="./src/img/icons/check.svg" alt="">
        </div>
        <div class="popContent_ChosseColor_colorlist_edit">
            <img src="./src/img/icons/edit.svg" alt="">
        </div>
        <div class="popContent_ChosseColor_colorlist_delete">
            <img src="./src/img/icons/trashcan.svg" alt="">
        </div>
    </div>
    `
})