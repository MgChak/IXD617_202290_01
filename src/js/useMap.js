import { checkData } from "./useFunctions.js";
import {PageAnimationDefaultOut} from "./usePageAnimation.js"//页面转换的动画

function navToWithAnimation(id){//手动nav
    sessionStorage.Cat_Id_Nav = id;
    var tar = window.location.hash//获取当前页面
    PageAnimationDefaultOut(tar)//执行动画函数
    setTimeout(()=>{ $.mobile.navigate("#cat-detail-page",{transition: "none"})},400)//等待400毫秒后导航到目标页面,关闭动画
}


export const makeMap = async(target, center) => {
    await checkData(()=>window.google);

    let map_el = $(target);

    if (!map_el.data("map")){ map_el.data({
        map: new google.maps.Map(map_el[0], {
            center,
            zoom: 12,
            disableDefaultUI: true,
            mapId:'317e492ff59adc76'	
        })
    });}else{//如果已经存在地图，就用panTo()移动中心点到新的位置
        let a = map_el.data()
        a.map.panTo (center)
    }

    return map_el;
}


export const makeMarkers = (map_el,marker_locs=[]) => {
    let {map,markers} = map_el.data();

    if (markers) markers.forEach((marker) => marker.setMap(null));

    markers = [];

    marker_locs.forEach((location)=>{
        let marker = new google.maps.Marker({
            position: location,
            map,
            icon: {
                url:"src/img/icons/pin.svg",
                scaledSize: {
                    width:40,
                    height:40,
                }
            }
        });
        markers.push(marker);
        marker.addListener("click", ()=>{navToWithAnimation(location.id)});
    });

    map_el.data({markers});
}


export const changeMapContainerSize = (tar)=>{

    switch(tar) {
        case "full": 
            $('.googleMapContainer').css('height','100%')
        break
        case "half": 
            $('.googleMapContainer').css('height','70%')
        break
    }

}
