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
  <link rel="stylesheet" href="/static/dist/themes/default/style.min.css" type="text/css"/>
  <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
</head>

<body>
<!-- Side -->
<c:import url="/side"/>
<!-- /Side -->
  <!-- Main content -->
  <div class="main-content" id="panel">
    <!-- Top -->
    <%@include file="/WEB-INF/views/include/top.jsp"%>
    <!-- /Top -->
    <div class="header bg-primary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-6 col-7">
              <h6 class="h2 text-white d-inline-block mb-0">메뉴관리</h6>
              <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                  <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
                  <li class="breadcrumb-item"><a href="/menu">메뉴관리</a></li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--6">
      <div class="row">
        <!-- left div -->
        <div class="col-xl-6 order-xl-1" id="menuList">
          <div class="card card-profile">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                </div>
              </div>
            </div>
            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4 bg-dark">
              <div class="d-flex justify-content-end">
                <input class="input-append" type="text" id="search" placeholder="검색"/><button type="button" class="btn btn-sm btn-primary" id="clear">지우기</button>
                <button type="button" class="btn btn-sm btn-primary" id="menuAdd">메뉴추가</button>
                <button type="button" class="btn btn-sm btn-primary" id="menuDelete">메뉴삭제</button>
              </div>
            </div>
            <div class="card-body pt-0">
              <!-- 내용 -->
              <div id="jstree" class="demo">
              </div>
              <!--/ 내용 -->
            </div>
          </div>
        </div>
        <!-- right div -->
        <div class="col-xl-6 order-xl-2" id="menuEdit" style="display: none;">
          <div class="card" style="width: 100%; height: 100%;">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">메뉴 편집</h3>
                </div>
                <div class="col-4 text-right">
                  <button type="button" class="btn btn-sm btn-primary" id="menuSave">저장</button>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form>
                <h3 class="text-muted mb-4" id="menuTitle">메뉴관리</h3>
                <input type="hidden" />
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label class="form-control-label" for="menuName">메뉴명</label>
                        <input type="text" id="menuName" class="form-control" value="">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label class="form-control-label" for="menuUrl">메뉴URL</label>
                        <input type="text" id="menuUrl" class="form-control"  value="">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-12">
                      <label class="form-control-label">메뉴사용여부</label>
                      <div class="form-group">
                        <label><input type="radio" name="useYn" value="Y">사용</label>
                        <label style="margin-left: 1em;"><input type="radio" name="useYn" value="N">사용안함</label>
                      </div>
                    </div>
                  </div>
                </div>
                <%--<div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <label class="form-control-label">권한</label>
                      <div class="form-group">
                        <label><input type="checkbox" name="authority" value="권한">&nbsp;메뉴관리자</label>
                      </div>
                    </div>
                  </div>
                </div>--%>
                <%--<div class="pl-lg-4">
                  <div class="form-group">
                    <label class="form-control-label">About Me</label>
                    <textarea rows="4" class="form-control" placeholder=""></textarea>
                  </div>
                </div>--%>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- Footer -->
      <%@ include file="/WEB-INF/views/include/footer.jsp"%>
      <!-- /Footer -->
    </div>
  </div>
<!-- Argon Scripts -->
<!-- Core -->
<script src="/static/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/static/vendor/js-cookie/js.cookie.js"></script>
<script src="/static/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
<script src="/static/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
<!-- Argon JS -->
<script src="/static/js/argon.js?v=1.2.0"></script>
<!-- JStree -->
<script src="/static/vendor/jquery/dist/jquery.min.js"></script>
<script src="/static/dist/jstree.min.js"></script>


</body>
</html>
<script type="text/javascript">
  $(document).ready(function () {
    const $jstree = $("#jstree");

    $jstree.jstree({
      'plugins' : ['search','dnd'],
      'core' : {
        'data' : [
          <c:forEach var="admin" items="${adminResult}" varStatus="status">
          {
            'id':'${admin.seq}',
            'parent':'${admin.parentSeq eq null ? '#' : admin.parentSeq}',
            'text':'${admin.menuName}',
            'state':
                    {
                      'opened': true
                    },
            'result' : {
              'seq' : '${admin.seq}',
              'menuType' : '${admin.menuType}',
              'menuName' : '${admin.menuName}',
              'menuUrl' : '${admin.menuUrl}',
              'parentSeq' : '${admin.parentSeq}',
              'depth' : '${admin.depth}',
              'orderNo' : '${admin.orderNo}',
              'useYn' : '${admin.useYn}'
            }
          },
          </c:forEach>
          <c:forEach var="front" items="${frontResult}" varStatus="status">
          {
            'id':'${front.seq}',
            'parent':'${front.parentSeq eq null ? '#' : front.parentSeq}',
            'text':'${front.menuName}',
            'state':
                    {
                      'opened': true
                    },
            'result' : {
              'seq' : '${front.seq}',
              'menuType' : '${front.menuType}',
              'menuName' : '${front.menuName}',
              'menuUrl' : '${front.menuUrl}',
              'parentSeq' : '${front.parentSeq}',
              'depth' : '${front.depth}',
              'orderNo' : '${front.orderNo}',
              'useYn' : '${front.useYn}'
            }
          },
          </c:forEach>

        ],
        'animation': true, // 폴더 열 때 애니메이션(슬라이드 효과)
        'check_callback' : true, // 드로그 앤 드랍 시 이동가능여부
        'themes':{
          'icons':true,  // 폴더 모양
        }
      },
      'search':{
        'show_only_matches':true,
        'show_only_matches_children':true
      }
    });

  })
  $(function () {
    const $jstree = $("#jstree");
    const $menuEdit = $("#menuEdit"); // 메뉴 편집
    const $menuSave = $("#menuSave"); // 메뉴 저장
    const $menuAdd = $("#menuAdd"); // 메뉴 추가
    const $menuDelete = $("#menuDelete"); //메뉴 삭제
    const $search = $("#search"); // jstree 검색
    const $clear = $("#clear"); // jstree 검색창 clear
    const $menuList = $("#menuList"); // 메뉴 리스트
    var $menuName = $("#menuName"); // 메뉴명
    var $menuUrl = $("#menuUrl"); // 메뉴 URL
    var $useYn = $("[name=useYn]"); // 메뉴사용여부
    var $menuTitle = $("#menuTitle"); // 메뉴 title
    // var menuSwitch = false;
    // 리터럴 표기법 [] 생성자 표기법 new Array()
    // 데이터가 들어갈 컬럼 명
    var seq;
    var menuType;
    var menuName;
    var menuUrl;
    var parentSeq;
    var depth;
    var useYn;
    var orderNo;

    $menuSave.on("click",function () {
      var obj = {
        seq : !isNaN(seq) ? seq : null,
        menuType : menuType,
        menuName : $menuName.val(),
        menuUrl : $menuUrl.val(),
        parentSeq : parentSeq === '#' ? null : parentSeq,
        depth : depth,
        // orderNo : ? ,
        useYn : $("[name=useYn]:checked").val()
      };

      $.ajax({
        url : '/menu/save',
        type : 'POST',
        contentType : 'application/json',
        data : JSON.stringify(obj),
        success : function(data) {
          alert("저장되었습니다.");
          location.reload();
        }, error : function(jqxhr){
          alert("실패");
        }
      })
    });

    $menuAdd.on("click",function () {
      var addNode = $(".jstree-clicked").parent().attr("id");
      if(addNode == undefined){
        alert("메뉴를 선택해주세요.")
      } else{
        var obj = { 'text' : '새메뉴', 'result' : {'menuType' : menuType, 'depth' : String(Number(depth)+1)}};
        $jstree.jstree("create_node",addNode,obj,"last",function (newNode) {
          $jstree.jstree("open_node",$jstree.jstree("get_selected"));
          var inst = $.jstree.reference(newNode);
          inst.edit(newNode);
        });
      }

    });

    $menuDelete.on("click",function () {
      var deleteNode = $(".jstree-clicked").attr("id");
      var deleteRoot = $(".jstree-clicked").attr("aria-level");
      if(deleteRoot == 1){
        alert("최상위 루트는 삭제하실 수 없습니다.");
      } else {
        if(confirmYn() == true) {
          $jstree.jstree().delete_node($("#"+deleteNode)); // 노드 삭제
          $.ajax({
            url : '/menu/delete',
            type : 'POST',
            contentType : 'application/json',
            data : JSON.stringify({seq : seq}),
            success : function(data){
              alert("삭제되었습니다.");
              location.reload();
            }, error : function(jqxhr){
              console.log(jqxhr);
            }
          })
        }
      }
    });

    $search.on("keyup change",function () {
      $jstree.jstree(true).search($(this).val());
    });

    $clear.click(function(e){
      $search.val('').change().focus();
    });

    $jstree.on("select_node.jstree",function (e,data) { // jstree 선택 이벤트
      // console.log(data.instance.get_node(data.node));

      seq = data.instance.get_node(data.selected).id;
      parentSeq = data.instance.get_node(data.node).parent;
      menuType = data.instance.get_node(data.node).original.result.menuType;
      depth = data.instance.get_node(data.node).original.result.depth;
      useYn = data.instance.get_node(data.node).original.result.useYn;

      $menuTitle.text($jstree.jstree(true).get_node(seq).text);
      $menuName.attr("placeholder","메뉴명");
      $menuName.val($menuTitle.text());
      $menuUrl.attr("placeholder","메뉴URL이 공백일 경우 Heading Menu로 취급됩니다.");
      $menuUrl.val('');
      $useYn.eq(0).prop("checked",true);

      if(!isNaN(seq) == true){ // 기존에 있던 메뉴일 경우
        menuName = data.instance.get_node(data.node).original.result.menuName;
        menuUrl = data.instance.get_node(data.node).original.result.menuUrl;

        $menuName.val(menuName);
        $menuUrl.val(menuUrl);
        useYn == 'Y' ? $useYn.eq(0).prop("checked",true) : $useYn.eq(1).prop("checked",true);
      }

      $menuEdit.show();
    })

    function confirmYn() {
      var confirmYn = confirm("메뉴를 삭제하시겠습니까?");
      return confirmYn;
    }

  });
</script>