

function upload(data) {
    $.ajax({
        url : "/file/multiUpload",
        type : "POST",
        processData : false,
        contentType : false,
        data : data,
        success : function (data) {
            // console.log(data);

        }, error : function (jqxhr) {
            alert("실패");
        }
    })
}