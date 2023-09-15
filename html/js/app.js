$(function(){
    $('.box').css("opacity", "0")

    let time = 250

    window.addEventListener('message', function(event){
        let v = event.data

        if (v.action == 'show'){
            $('.box').html(v.text)
            $(".box").css("left", v.x + "%")
            $(".box").css("top", v.y + "%")
            $(".box").css("opacity", "1")
            setTimeout(function(){
                $(".box").css("opacity", "0")
                setTimeout(function(){
                    if (document.getElementById('box').style.opacity == 0){
                        time = 250
                    }
                }, 300);
            }, time)
            time += 350
        }
    })
})