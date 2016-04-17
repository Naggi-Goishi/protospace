$(window).on("load", function(){
    $(".active").removeClass("active");
    $("#list_" + gon.type).addClass("active");
});
