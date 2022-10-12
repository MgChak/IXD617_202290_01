function comfirmationTemplet(isSuccess,action){

    var svgIcon
    var defulatText

    if (isSuccess == 'success'){

        svgIcon = '<svg width="50" height="50" viewBox="0 0 65 65" fill="none" xmlns="http://www.w3.org/2000/svg"> <g clip-path="url(#clip0_42_200)"><path d="M59.6099 28.5099C60.3299 33.8399 59.4999 39.4399 56.8999 44.6099C50.0299 58.2599 33.3999 63.7599 19.7399 56.8999C6.07988 50.0399 0.589879 33.3999 7.45988 19.7399C14.3299 6.07988 30.9599 0.589879 44.6099 7.45988" stroke="#FFFFFF" stroke-width="9" stroke-miterlimit="10" stroke-linecap="round"/><path d="M18.2798 28.58L30.0398 42.31L59.8598 10.98" stroke="#FFFFFF" stroke-width="9" stroke-linecap="round" stroke-linejoin="round"/></g><defs><clipPath id="clip0_42_200"><rect width="64.36" height="64.36" fill="white"/></clipPath></svg>'
        defulatText = ' Successfully'
    }


    return '<div class="comfirmation">'+
                svgIcon+ '<h1>'+ action + defulatText +'</h1>' +
            '</div>'

}



function renderComfirmation(isSuccess,action){

    $('.comfirmationSlot').show()
    $('.comfirmationSlot').html(comfirmationTemplet(isSuccess,action))
        .css("top","20px")

    setTimeout(()=>{
        $('.comfirmationSlot').eq(0).css("top","-50px")
    },2000)
    setTimeout(()=>{
        $('.comfirmationSlot').hide()
    },2350)
    

}

export{
    renderComfirmation,
}