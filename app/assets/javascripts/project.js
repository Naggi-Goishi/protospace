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
        $(image_id).append("<img src='"+e.target.result+"'/>");
    }

    // readAsDataURLメソッドでファイルの内容を取得
    reader.readAsDataURL(file[0]);
}

function change_image(image_id, this_file){

    var file = this_file.files;

    // 画像ファイル以外は処理を中止
    if (!file[0].type.match(/^image\/(png|jpeg|gif)$/)) return;

    var img    = new Image();          // 表示用のイメージオブジェクトを取得
    var reader = new FileReader();  // ファイルリーダー作成
    // 画像がロードされてから処理を行う
    reader.onload = function (e) {
        // readAsDataURLをsrcに指定してイメージを作成
        console.log("hello")
        $(image_id).html("<img src='"+e.target.result+"'/>");
    }

    // readAsDataURLメソッドでファイルの内容を取得
    reader.readAsDataURL(file[0]);
}


$(document).on("change", "#project_project_images_attributes_0__image", function() {
    show_image(".cover-image-upload", this)
});

$(document).on("change", "#project_project_images_attributes_1__image", function() {
    show_image("#sub_image_0", this)
});

$(document).on("change", "#project_project_images_attributes_2__image", function() {
    show_image("#sub_image_1", this)
});

$(document).on("change", "#project_project_images_attributes_0_image", function() {
    change_image(".cover-image-upload", this)
});

$(document).on("change", "#project_project_images_attributes_1_image", function() {
    show_image("#sub_image_0", this)
});


$(document).on("change", "#project_project_images_attributes_2_image", function() {
    show_image("#sub_image_1", this)
});

