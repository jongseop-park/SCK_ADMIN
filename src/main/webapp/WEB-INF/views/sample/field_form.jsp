<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>SCK Admin</title>
    <!-- Favicon -->
    <link rel="icon" href="/static/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <link rel="stylesheet" href="/static/vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="/static/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
    <!-- Argon CSS -->
    <link rel="stylesheet" href="/static/css/argon.css?v=1.2.0" type="text/css">
    <!-- style css -->
    <link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>

<body>
<!-- Side -->
<%@ include file="/WEB-INF/views/include/side.jsp" %>
<!-- /Side -->
<div class="main-content" id="panel">
    <!-- Top -->
    <%@include file="/WEB-INF/views/include/top.jsp" %>
    <!-- /Top -->
    <!-- Header -->
    <div class="header bg-primary pb-6">
        <div class="container-fluid">
            <div class="header-body">
                <div class="row align-items-center py-4">
                    <div class="col-lg-6 col-7">
                        <h6 class="h2 text-white d-inline-block mb-0">구장</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
                                <li class="breadcrumb-item"><a href="/fieldSub/list?page=1&perPageNum=10&searchType=전체보기&keyword=">리스트</a></li>
                                <c:if test="${isUpdate eq true}">
                                    <li class="breadcrumb-item">상세</li>
                                </c:if>
                                <c:if test="${isUpdate eq false}">
                                    <li class="breadcrumb-item">등록</li>
                                </c:if>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header -->
    <!-- Page content -->
    <div class="container-fluid mt--6">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header bg-dark">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <c:if test="${isUpdate eq false}">
                                    <h2 class="mb-0" style="color: white;">구장 등록</h2>
                                </c:if>
                                <c:if test="${isUpdate eq true}">
                                    <h2 class="mb-0" style="color: white;">구장 상세</h2>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <!-- 입력 폼 -->
                    <div class="col-lg-10">
                        <%--<c:forEach var="result" items="${result}" varStatus="status">--%>
                        <div class="card">
                            <div class="card-body">
                                <form id="form">
                                    <!-- 구장상세 입력폼 -->
                                    <div id="fieldDetails">
                                        <input type="hidden" id="seq" value="${result.seq}"/>
                                            <div name="fieldDetail">
                                                <input type="hidden" name="detailSeq" value="${item.seq}">
                                                <h3 class="heading-title text-blue mb-3" style="margin-left: 1%;" name="fieldDetailTitles" data-value="${status.count}">${item.fieldSubName}</h3>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="form-control-label">구장명</label>
                                                        <input type="text" name="fieldSubName" data-value="${status.count}" class="form-control" placeholder="서브 구장명 변경" value="${item.fieldSubName}" maxlength="10">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="form-control-label">대여품</label>
                                                        <input type="text" name="fieldRental" class="form-control" placeholder="유니폼 / 축구화 / 공" value="${item.fieldRental}" >
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="form-control-label">시설</label>
                                                        <div class="row">
                                                            <label style="margin-left: 20px;"><input type="checkbox" name="fieldShower" <c:if test="${item.fieldShower eq 1}">checked="checked"</c:if>/>샤워시설</label>
                                                            <label style="margin-left: 20px;"><input type="checkbox" name="fieldParking" <c:if test="${item.fieldParking eq 1}">checked="checked"</c:if>/>주차시설</label>
                                                            <label style="margin-left: 20px;"><input type="checkbox" name="fieldDrink" <c:if test="${item.fieldDrink eq 1}">checked="checked"</c:if>/>음료판매</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="form-control-label">구장정보</label>
                                                        <textarea rows="4" class="form-control" name="fieldInfo" placeholder="구장정보">${item.fieldInfo}</textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="form-control-label">구장 이미지 (최대 10개)</label>
                                                        <div>
                                                            <button type="button" class="field-detail-img"          data-value="${status.count}" name="fieldImg" value="false">이미지1</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지2</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지3</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지4</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지5</button>
                                                            <button type="button" class="field-detail-img"          data-value="${status.count}" name="fieldImg" value="false">이미지6</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지7</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지8</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지9</button>
                                                            <button type="button" class="field-detail-img rear-img" data-value="${status.count}" name="fieldImg" value="false">이미지10</button>
                                                        </div>
                                                        <div class="div-field-img">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="1">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="2">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="3">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="4">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="5">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="6">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="7">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="8">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="9">
                                                            <input type="file" name="fieldImgFile" accept="image/*" data-seq="" data-order="10">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                    <!-- /구장상세 입력폼 -->
                                    <div class="col-lg-6 col-5 text-right" style="float: right">
                                        <c:if test="${isUpdate eq false}">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnSave" value="등록">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnCancel" value="취소">
                                        </c:if>
                                        <c:if test="${isUpdate eq true}">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnUpdate" value="수정">
                                            <input type="button" class="btn btn-lg btn-neutral" id="btnDelete" value="삭제">
                                        </c:if>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <%--</c:forEach>--%>
                    </div>
                    <!-- /입력 폼 -->
                </div>
            </div>
        </div>
        <!-- Footer -->
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
        <!-- /Footer -->
    </div>
</div>
</body>
</html>
<!-- Argon Scripts -->
<!-- Core -->
<script src="/static/vendor/jquery/dist/jquery.min.js"></script>
<script src="/static/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/static/vendor/js-cookie/js.cookie.js"></script>
<script src="/static/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
<script src="/static/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
<!-- Argon JS -->
<script src="/static/js/argon.js"></script>
<!-- common JS -->
<script src="/static/js/common.js"></script>

<%--
<script type="text/javascript">
    $(function () {
        var $form = $('#form');
        var $btnSave = $('#btnSave'); // 저장
        var $btnUpdate = $('#btnUpdate'); // 수정
        var $btnDelete = $('#btnDelete'); // 삭제
        var $btnCancle = $('#btnCancel'); // 취소

        var $fieldBtnAdd = $('#fieldBtnAdd'); // 구장 추가
        var $fieldBtnDelete = $('#fieldBtnDelete'); // 구장 삭제
        var $field_line1 = $('#field_line1'); // 1 ~ 5 구장
        var $field_line2 = $('#field_line2'); // 6 ~ 10 구장
        var $field_line3 = $('#field_line3'); // 11 ~ 15 구장
        let fieldCnt = $('[name=fields]').length;
        var $fieldDetails = $("#fieldDetails"); // 구장 상세 div
        var $seq = $('#seq');
        var $fieldName = $('#fieldName'); // 구장
        var $fieldAddress = $('#fieldAddress'); // 주소
        var $fieldTel = $('#fieldTel'); // 연락처
        var $fieldRefund = $('#fieldRefund'); // 환불규정
        var detailDelObj;
        var fileObject; // input file name
        var imgBtn;
        var isUpdate = "${isUpdate}";
        var fileData;

        $fieldBtnAdd.on("click",function(){
            if(fieldCnt >= 0 && fieldCnt < 5){
                fieldCnt++;
                $field_line1.append("<input class='form-control-sm field-select' type='button' data-value='"+fieldCnt+"' name='fields' value='"+fieldCnt+"구장'/>");
                addDetail();
            } else if(fieldCnt >= 5 && fieldCnt < 10){
                fieldCnt++;
                $field_line2.append("<input class='form-control-sm field-select' type='button' data-value='"+fieldCnt+"' name='fields' value='"+fieldCnt+"구장'/>");
                addDetail();
            }else if(fieldCnt >= 10 && fieldCnt < 15){
                fieldCnt++;
                $field_line3.append("<input class='form-control-sm field-select' type='button' data-value='"+fieldCnt+"' name='fields'  value='"+fieldCnt+"구장'/>");
                addDetail();
            } else {
                alert("구장은 최대 15개까지 생성 가능합니다.");
            }

        });

        // 구장 삭제버튼 클릭 이벤트
        $fieldBtnDelete.on("click",function(){
            var divfieldDetail = $('div[name=fieldDetail]').eq(fieldCnt-1)
            var delYnSeq =  divfieldDetail.find($("[name=detailSeq]")).val();
            if(fieldCnt != 0){
                if(delYnSeq == '') {
                    alert(delYnSeq);
                    $('input[name=fields]').eq(fieldCnt - 1).remove();
                    $('div[name=fieldDetail]').eq(fieldCnt - 1).remove();

                } else {
                    detailDelObj = {
                        "seq" : divfieldDetail.find("[name=detailSeq]").val(),
                        "fieldSeq" : $seq.val(),
                        "fieldSubName" : divfieldDetail.find("[name=fieldSubName]").val(),
                        "fieldRental" : divfieldDetail.find("[name=fieldRental]").val(),
                        "fieldShower" : divfieldDetail.find("[name=fieldShower]").is(":checked") == true ? 1 : 0,
                        "fieldParking" : divfieldDetail.find("[name=fieldParking]").is(":checked") == true ? 1 : 0,
                        "fieldDrink" : divfieldDetail.find("[name=fieldDrink]").is(":checked") == true ? 1 : 0,
                        "fieldInfo" : divfieldDetail.find("[name=fieldInfo]").val(),
                        "orderNo" : 0,
                        "delYn" : 'Y'
                    }
                    console.log(detailDelObj);
                    $('input[name=fields]').eq(fieldCnt - 1).remove();
                    $('div[name=fieldDetail]').eq(fieldCnt - 1).remove();
                }
                fieldCnt--;
            }
        });

        // 구장명 입력 시 구장버튼 이름 변경
        $(document).on("keyup","input[name=fieldSubName]",function(){
            $("input[name=fields]").eq($(this).data("value")-1).val($(this).val());
            $("h3[name=fieldDetailTitles]").eq($(this).data("value")-1).text($(this).val());
        })

        // 구장 클릭 이벤트
        $(document).on("click","input[name=fields]",function(){
            $("input[name=fields]").css("font-weight","normal");
            $("input[name=fields]").css("font-size","0.75rem");
            $("input[name=fields]").eq($(this).data("value")-1).css("font-weight","bold");
            $("input[name=fields]").eq($(this).data("value")-1).css("font-size","1rem");
            $("div[name=fieldDetail]").hide(); // 구장 상세 전체 숨기기
            $("div[name=fieldDetail]").eq($(this).data("value")-1).show(); // 클릭한 구장의 상세만 보여줌

        })

        // 이미지 클릭 이벤트
        $(document).on("click","button[name=fieldImg]",function (evt) {
            imgBtn = $(this);
            fileObject = $(this).parent().next().children().eq(imgBtn.index());

            if($(this).val() == "false") {
                fileObject.click();
            } else if ($(this).val() == "true"){
                if(confirmImg() == true) { // 컨펌의 return이 true일 경우 이미지 삭제
                    $(this).text('이미지' + (imgBtn.index() + 1));
                    $(this).val("false");
                    fileObject.val('');
                }
            }
        })

        // 이미지 추가/변경 시 이벤트
        $(document).on("change","input[name=fieldImgFile]",function (e) {
            var img = e.target.files[0];
            var fileReader = new FileReader();
            fileReader.readAsDataURL(img);
            fileReader.onload = function (event) {
                var image = new Image();
                image.style.width = '100%';
                image.style.height = '100%';
                image.src = event.target.result;
                imgBtn.empty();
                imgBtn.append(image);
                imgBtn.val('true');
            }
        })

        // 저장
        $btnSave.on("click",function(){
            if(fieldCnt > 0){
                Save(fieldData());
            } else {
                alert("구장의 개수는 최소 1개 이상이어야 합니다.");
            }

        });
        // 수정
        $btnUpdate.on("click",function(){
            if(fieldCnt > 0){
                fieldData();
                // Save(fieldData());
            } else {
                alert("구장의 개수는 최소 1개 이상이어야 합니다.");
            }
        });
        // 삭제(DEL_YN = 'Y')
        $btnDelete.on("click",function(){
            var object = {
                "seq" : $seq.val()
            };
            Delete(object);
        });
        // 취소
        $btnCancle.on("click",function(){
            window.history.back();
        });
        // 이미지 삭제 컨펌
        function confirmImg(){
            var confirmImg = confirm("이미지를 삭제하시겠습니까?");
            if (confirmImg == true){
                return true;
            } else if(confirmImg == false){
                return false;
            }
        }

        function fieldData(){
            var fieldList = []; // DB에 저장될 값
            $("div[name=fieldDetail]").each(function (index,item) { // index  item
                var obj = {
                    "seq" : $(item).find("[name=detailSeq]").val(),
                    "fieldSeq" : $seq.val(),
                    "fieldSubName" : $(item).find("[name=fieldSubName]").val(),
                    "fieldRental" : $(item).find("[name=fieldRental]").val(),
                    "fieldShower" : $(item).find("[name=fieldShower]").is(":checked") == true ? 1 : 0,
                    "fieldParking" : $(item).find("[name=fieldParking]").is(":checked") == true ? 1 : 0,
                    "fieldDrink" : $(item).find("[name=fieldDrink]").is(":checked") == true ? 1 : 0,
                    "fieldInfo" : $(item).find("[name=fieldInfo]").val(),
                    "orderNo" : index,
                    "delYn" : 'N'
                }
                fieldList.push(obj);


            });
            if(detailDelObj != null) {
                fieldList.push(detailDelObj);
            }
            var data = {
                "fieldName" : $fieldName.val(),
                "fieldAddress" : $fieldAddress.val(),
                "fieldTel" : $fieldTel.val(),
                "fieldRefund" : $fieldRefund.val(),
                "fieldDetail" : fieldList
            };
            if($seq.val() != ''){
                data["seq"] = $seq.val();
            }
            if(isUpdate == 'false'){
                data["regId"] = "<%=username%>";
            } else if(isUpdate == 'true'){
                data["modId"] = "<%=username%>";
            }

            var formData = new FormData();
            for(var i = 0; i<$("[name=fieldImgFile]").length; i++){
                var file = $("[name=fieldImgFile]").eq(i)[0].files[0];
                if(file != null){
                    formData.append("seq",$("[name=fieldImgFile]").eq(i).attr("data-seq"));
                    formData.append("orderNo",$("[name=fieldImgFile]").eq(i).attr("data-order"));
                    formData.append("file",file);
                }
            }

            var fileExist = false;
            for(var value of formData.entries()){
                console.log(value);
                fileExist = true;
            }
            if(fileExist == true){
                formData.append("adminId","<%=username%>");
                formData.append("groupSeq",$seq.val());
                upload(formData);
            }
            return data;
        }

        // 구장 상세입력칸 생성
        function addDetail(){
            $("#fieldDetails").append("<div name='fieldDetail' style='display:none;' data-value='"+fieldCnt+"'>" +
                "<hr class='my-4' />" +
                "<h3 class='heading-title text-blue mb-3' style='margin-left: 1%;' name='fieldDetailTitles' data-value='"+fieldCnt+"'>"+fieldCnt+"구장</h3>" +
                "<div class='col-md-12'>" +
                "<div class='form-group'>" +
                "<label class='form-control-label'>구장명</label>" +
                "<input type='text' name='fieldSubName' class='form-control' data-value='"+fieldCnt+"' placeholder='서브 구장명 변경' value='"+fieldCnt+"구장' maxlength='10'>" +
                "</div>" +
                "</div>" +
                "<div class='col-md-12'>" +
                "<div class='form-group'>" +
                "<label class='form-control-label'>대여품</label>" +
                "<input type='text' name='fieldRental' class='form-control' placeholder='유니폼 / 축구화 / 공' value='' >" +
                "</div>" +
                "</div>" +
                "<div class='col-md-12'>" +
                "<div class='form-group'>" +
                "<label class='form-control-label'>시설</label>" +
                "<div class='row'>" +
                "<label style='margin-left: 20px;'><input type='checkbox' name='fieldShower'/>샤워시설</label>" +
                "<label style='margin-left: 20px;'><input type='checkbox' name='fieldParking'/>주차시설</label>" +
                "<label style='margin-left: 20px;'><input type='checkbox' name='fieldDrink'/>음료판매</label>" +
                "</div>" +
                "</div>" +
                "</div>" +
                "<div class='col-md-12'>" +
                "<div class='form-group'>" +
                "<label class='form-control-label'>구장정보" +
                "</label>" +
                "<textarea rows='4' class='form-control' name='fieldInfo' placeholder='구장정보'></textarea>" +
                "</div>" +
                "</div>" +
                "<div class='col-md-12'>" +
                "<div class='form-group'>" +
                "<label class='form-control-label'>구장 이미지 (최대 10개)</label>" +
                "<div>" +
                "<button type='button' class='field-detail-img'          data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지1</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지2</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지3</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지4</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지5</button>" +
                "<button type='button' class='field-detail-img'          data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지6</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지7</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지8</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지9</button>" +
                "<button type='button' class='field-detail-img rear-img' data-value='"+fieldCnt+"' name='fieldImg' value='false'>이미지10</button>" +
                "</div>" +
                "<div class='div-field-img'>" +
                "<input type='file' name='fieldImgFile' accept='image/*'>" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "<input type='file' name='fieldImgFile' accept='image/*' >" +
                "</div>" +
                "</div>" +
                "</div>" +
                "</div>");
        }

        function Save(object) {
            $.ajax({
                url : "/field/save",
                type : "POST",
                contentType : "application/json", // 명시하지 않으면 application/x-www-form-urlencoded; charset=UTF-8로 지정
                processData : false, // 파일전송 시 사용. query string 설정
                data : JSON.stringify(object),
                success : function () {
                    upload(fileData);
                    if(${isUpdate eq false}){
                        alert("등록이 완료되었습니다.");
                    } else {
                        alert("수정이 완료되었습니다.");
                    }
                    location.href = document.referrer; //뒤로가기 후 새로고침
                }, error: function (jqxhr){
                    alert("정상적인 작동이 아닙니다. 이전 페이지로 돌아갑니다.");
                    location.href = document.referrer;
                }
            });
        }

        function Delete(object) {
            $.ajax({
                url : "/field/delete",
                type : "POST",
                contentType: "application/json",
                data : JSON.stringify(object),
                success : function(){
                    alert("삭제가 완료되었습니다.");
                    location.href = document.referrer;
                }, error(jqxhr){
                    alert("정상적인 작동이 아닙니다. 이전 페이지로 돌아갑니다.");
                    location.href = document.referrer;
                }
            });
        }

    });
</script>--%>
