$(document).ready(function() {

    $(".skittish").on({
        mouseenter: function(){
            $(this).animate({height: '250px', width: '250px'}, "slow");
        },
        mouseleave: function(){
            $(this).animate({height: '300px', width: '300px'}, "slow");
        },
        click: function(){
            $(this).hide(5000);
        }
    });

    $(".shy").on({
        click: function(){
            $(this).animate({height: '-=25px', width: '-=25px'}, "slow");
        },
        mouseleave: function(){
            $(this).animate({height: '300px', width: '300px'}, 10000);
        }
    });

    


});