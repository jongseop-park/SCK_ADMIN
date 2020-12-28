<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                                <li class="breadcrumb-item"><a href="/fieldSub/list?page=1&perPageNum=10&searchType=전체보기&keyword=">서브구장 리스트</a></li>
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
                        <div class="row align-results-center">
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
                        <%--<c:forEach var="result" results="${result}" varStatus="status">--%>
                        <div class="card">
                            <div class="card-body">
                                <form id="form">
                                    <!-- 구장상세 입력폼 -->
                                    <div id="fieldDetails">
                                        <input type="hidden" id="seq" value="${result.seq}"/>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label class="form-control-label">메인구장번호</label>
                                                <input type="text" id="fieldSeq"  class="form-control" placeholder="메인구장번호" value="${result.fieldSeq}" maxlength="10">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-control-label">서브구장명</label>
                                                <input type="text" id="fieldSubNm"  class="form-control" placeholder="서브구장명" value="${result.fieldSubNm}" maxlength="10">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-control-label">대여품</label>
                                                <input type="text" id="fieldRental" class="form-control" placeholder="유니폼 / 축구화 / 공" value="${result.fieldRental}" >
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-control-label">시설</label>
                                                <div class="row">
                                                    <label style="margin-left: 20px;"><input type="checkbox" id="fieldShower" <c:if test="${result.fieldShower eq 'Y'}">checked="checked"</c:if>/>샤워시설</label>
                                                    <label style="margin-left: 20px;"><input type="checkbox" id="fieldParking" <c:if test="${result.fieldParking eq 'Y'}">checked="checked"</c:if>/>주차시설</label>
                                                    <label style="margin-left: 20px;"><input type="checkbox" id="fieldDrink" <c:if test="${result.fieldDrink eq 'Y'}">checked="checked"</c:if>/>음료판매</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-control-label">구장정보</label>
                                                <textarea rows="4" class="form-control" id="fieldInfo" placeholder="구장정보">${result.fieldInfo}</textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label class="form-control-label">구장순서</label>
                                                <input type="text" id="orderNo"  class="form-control" placeholder="구장순서" value="${result.orderNo}" maxlength="2">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-control-label">구장 이미지 (최대 10개)</label>
                                                <div id="imageBtn"></div>
                                                <div class="div-field-img">
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                    <input type="file" name="fieldImgFile" accept="image/*" >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
<script type="text/javascript">
    $(document).ready(function () {
        var $imageBtn = $("#imageBtn");
        var obj = [];
        <c:forEach var="img" items="${resultFile}" varStatus="status">
                var result = {
                    seq : "${img.seq}",
                    groupSeq : "${img.groupSeq}",
                    fileNm : "${img.fileNm}",
                    fileOrigNm : "${img.fileOrigNm}",
                    filePath : "${img.filePath}",
                    fileType : "${img.fileType}",
                    fileSize : "${img.fileSize}",
                    orderNo : "${img.orderNo}",
                    regId : "${img.regId}",
                    regDate : "${img.regDate}",
                    modId : "${img.modId}",
                    modDate : "${img.modDate}"
                }
                obj.push(result);
        </c:forEach>

        for(var i=1,j=0; i<=10; i++){
            if(obj[j] != undefined && i == obj[j].orderNo){
                var location = obj[j].filePath+obj[j].fileNm;
                if(i === 1 || i === 6){
                    $imageBtn.append('<button type="button" class="field-detail-img" name="fieldImg" value="true" data-seq="'+obj[j].seq+'" data-order="'+i+'">' +
                        '<img style="width: 100%; height: 100%;" src="'+location+'">' +
                        '</button>');
                } else {
                    $imageBtn.append('<button type="button" class="field-detail-img rear-img" name="fieldImg" value="true" data-seq="'+obj[j].seq+'" data-order="'+i+'">' +
                        '<img style="width: 100%; height: 100%;" src="'+location+'">' +
                        '</button>');
                }
                j++;
            }
            else {
                if(i === 1 || i === 6){
                    $imageBtn.append('<button type="button" class="field-detail-img" name="fieldImg" value="false" data-seq="" data-order="'+i+'">이미지'+i+'</button>')
                } else {
                    $imageBtn.append('<button type="button" class="field-detail-img rear-img"  name="fieldImg" value="false" data-seq="" data-order="'+i+'">이미지'+i+'</button>')
                }
            }
        }
        // <button type="button" class="field-detail-img"           name="fieldImg" value="false">이미지1</button>
        // <button type="button" class="field-detail-img rear-img"  name="fieldImg" value="false">이미지2</button>
    })
    $(function () {
        var $form = $('#form');
        var $btnSave = $('#btnSave'); // 저장
        var $btnUpdate = $('#btnUpdate'); // 수정
        var $btnDelete = $('#btnDelete'); // 삭제
        var $btnCancel = $('#btnCancel'); // 취소

        var $seq = $("#seq"); // 시퀀스
        var $fieldSeq = $("#fieldSeq"); // 메인구장번호
        var $fieldSubNm = $("#fieldSubNm"); // 서브구장명
        var $fieldRental = $("#fieldRental"); // 대여품
        var $fieldInfo = $("#fieldInfo"); // 구장정보
        var $orderNo = $("#orderNo"); // 정렬 순서
        var $fieldShower = $("#fieldShower"); // 샤워시설 체크박스
        var $fieldParking = $("#fieldParking"); // 주차시설 체크박스
        var $fieldDrink = $("#fieldDrink"); // 음료판매 체크박스
        var $fieldImgFile = $("[name=fieldImgFile]"); // 구장 이미지
        var $fieldImg = $("[name=fieldImg]");
        var formData;

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
            fieldLength();
        });

        // 수정
        $btnUpdate.on("click",function(){
            fieldLength();
        });

        // 삭제(DEL_YN = 'Y')
        $btnDelete.on("click",function(){
            var data = {
                "seq" : $seq.val()
            };
            Delete(data);
        });

        // 취소
        $btnCancel.on("click",function(){
            window.history.back();
        });

        // 이미지 삭제 컨펌
        function confirmImg(){
            var confirmImg = confirm("이미지를 삭제하시겠습니까?");
            if (confirmImg === true){
                return true;
            } else if(confirmImg === false){
                return false;
            }
        }

        function saveData(){
            var data = {
                seq : $seq.val(),
                fieldSeq : $fieldSeq.val(),
                fieldSubNm : $fieldSubNm.val(),
                fieldRental : $fieldRental.val(),
                fieldShower : $fieldShower.is(":checked") == true ? 'Y' : 'N',
                fieldParking : $fieldParking.is(":checked") == true ? 'Y' : 'N',
                fieldDrink : $fieldDrink.is(":checked") == true ? 'Y' : 'N',
                fieldInfo : $fieldInfo.val(),
                orderNo : $orderNo.val()
             }
             if($seq.val() == ''){
                 data['regId'] = '<%=username%>';
             } else {
                 data['modId'] = '<%=username%>';
             }

             formData = new FormData();
            $.each($fieldImg,function (index,object) { // 이미지 파일 업로드
                var imgFile = $fieldImgFile[index].files[0];

                if($(this).val() == 'true' && imgFile != null){ // 이미지 추가 및 수정 시
                    formData.append("file",imgFile);
                    formData.append("seq",$(this).attr("data-seq"));
                    formData.append("orderNo",$(this).attr("data-order"));
                } else if ($(this).val() == 'false'){
                    formData.append("deleteFileSeq",$(this).attr("data-seq"));
                }

                if($fieldImgFile.length == index+1){ // 반복문 마지막에 저장
                    formData.append("groupSeq",$seq.val());
                    formData.append("adminId",'<%=username%>');
                }
            });

            return data
        }

        function Save(object) {
            $.ajax({
                url : "/fieldSub/save",
                type : "POST",
                contentType : "application/json", // 명시하지 않으면 application/x-www-form-urlencoded; charset=UTF-8로 지정
                processData : false, // 파일전송 시 사용. query string 설정
                data : JSON.stringify(object),
                success : function () {
                    upload(formData);
                    if(${isUpdate eq false}){
                        alert("등록이 완료되었습니다.");
                    } else {
                        alert("수정이 완료되었습니다.");
                    }
                    location.href = document.referrer; //뒤로가기 후 새로고침
                }, error: function (jqxhr,textStatus,errorThrown){
                    alert("존재하지않는 구장번호입니다. 메인구장번호를 확인해주세요.");
                    // location.href = document.referrer;
                }
            });
        }

        function Delete(object) {
            $.ajax({
                url : "/fieldSub/delete",
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

        function fieldLength(){ // 서브구장 개수 리턴
            var fieldSeq = {
                fieldSeq : $("#fieldSeq").val()
            };
            $.ajax({
                url : "/fieldSub/length",
                type : "POST",
                async: true, // 동기방식처리
                contentType : "application/json",
                data : JSON.stringify(fieldSeq),
                success : function(data){
                    if(data < 15){
                        Save(saveData());
                    } else {
                        alert("서브구장은 최대 15개까지 생성 가능합니다. 구장번호를 확인하세요.");
                    }
                }
            });
        }
    })
</script>
