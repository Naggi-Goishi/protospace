$(window).on("load", function(){
    $(".active").removeClass("active");
    $("#list_" + gon.type).addClass("active");
});

function show_image(image_id, this_file){
    var file = this_file.files;

    // 画像ファイル以外は処理を中止
    if (!file[0].type.match(/^image\/(png|jpeg|gif)$/)) return;

    var img    = new Image();          // 表示用のイメージオブジェクトを取得
    var reader = new FileReader();  // ファイルリーダー作成
    // 画像がロードされてから処理を行う
    reader.onload = function (e) {
        // readAsDataURLをsrcに指定してイメージを作成
        $(image_id).html("<img src='"+e.target.result+"'/>");
    }

    // readAsDataURLメソッドでファイルの内容を取得
    reader.readAsDataURL(file[0]);

};

function pre_show_image(){
    $('.image-upload, .cover-image-upload').on('click', function(){
        var input = $(this).children('input:first').attr("id")
        var image_box = $(this).children('div').attr("id")
        $(document).on("change", "#"+input, function() {
            show_image("#"+image_box, this);
        });
    });
}


$(function(){
    pre_show_image()
    $('.list-group-item.col-md-4:has(img)').attr('id', "appear_form");
    $('.image-upload-plus').on('click',function(){
        if($("#hide_form").hasClass("last")){
            $("#add_new_form").hide();
            $("#hide_form").attr('id', "appear_form");
        }
        else{
            $("#hide_form").attr('id', "appear_form");
        }
    });
});
