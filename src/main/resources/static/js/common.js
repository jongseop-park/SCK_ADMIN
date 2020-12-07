

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

function excelDownload(title,header,body,cellLen) {
    $.ajax({
        url : "/excel/download",
        type : "POST",
        data : {"title":title, "header":header, "body" : body, "cellLen" : cellLen},
        success : function (data) {
            alert("다운로드가 완료되었습니다.")
        }, error : function (jqxhr) {
            console.log("다운로드에 실패하였습니다.");
        }
    })
}

function getFileDownload(){

    window.open()
}