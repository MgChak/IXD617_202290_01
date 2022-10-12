
let textRenderTemplate_main = '<img src="./src/img/icons/pin.svg" alt="" style="left:10%;top:50%" class="mappin">'+
                        '<img src="./src/img/icons/pin.svg" alt="" style="left:8%;top:20%" class="mappin">'+
                        '<img src="./src/img/icons/pin.svg" alt="" style="left:60%;top:30%" class="mappin">'+
                        '<img src="./src/img/icons/pin.svg" alt="" style="left:70%;top:40%" class="mappin">'+
                        '<img src="./src/img/icons/pin.svg" alt="" style="left:90%;top:40%" class="mappin">'+
                        '<img src="./src/img/icons/pin.svg" alt="" style="left:80%;top:60%" class="mappin">'+
                        '<img src="./src/img/icons/pin.svg" alt="" style="left:20%;top:30%" class="mappin">'

let textRenderTemplate_detail = '<img src="./src/img/icons/pin.svg" alt="" style="left:60%;top:30%" class="mappin">'
                   


function pinRender(){
    let page = window.location.hash

    switch(page){
        case '#main-page':

            $('.googleMapPinConatiner').css('top','-100%')
            setTimeout(()=>{
                $('.googleMapPinConatiner').html(textRenderTemplate_main)
                $('.googleMapPinConatiner').css('top','0%')
            },500)
            

        break;
        case '#cat-detail-page':

            $('.googleMapPinConatiner').css('top','-100%')
            setTimeout(()=>{
                $('.googleMapPinConatiner').html(textRenderTemplate_detail)
                $('.googleMapPinConatiner').css('top','0%')
            },500)
            

        break;
        default:
            
            $('.googleMapPinConatiner').css('top','-100%')
            setTimeout(()=>{
                $('.googleMapPinConatiner').html('')
                $('.googleMapPinConatiner').css('top','0%')
            },500)
           

        break;
    }
}


export {pinRender}
