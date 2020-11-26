<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>SCK - ${roomName}채팅방</title>
  <style>
    *{
      margin:0;
      padding:0;
    }
    .container{
      width: 500px;
      margin: 0 auto;
      padding: 25px
    }
    .container h1{
      text-align: left;
      padding: 5px 5px 5px 15px;
      color: #FFBB00;
      border-left: 3px solid #FFBB00;
      margin-bottom: 20px;
    }
    .chating{
      background-color: lightblue;
      width: 600px;
      height: 500px;
      overflow: auto;
      border: 1px black solid;
    }
    .div-player{
      background-color: white;
      width: 200px;
      height: 500px;
      border: 1px black solid;
    }
    .div-player-top{
      height: 30px;
      background-color: white;
      color: black;
      margin: 0 auto;
      text-align: center;
      border-bottom: black solid 1px;
    }
    .player{
      color: black;
    }
    .player p{
      color: black;
      text-align: center;
    }
    .p{
      margin-bottom: 0;
    }
    .name {
      color: black;
      font-size: 11px;
    }
    .time {
      color: gray;
      font-size: 11px;
      margin-bottom: 1.8em;
    }
    .chating .me{
      color: black;
      background-color: yellow;
      margin-right: 5px;
      display:inline-block;
      padding-right: 0.5em;
      padding-left: 0.5em;
      border-radius: 6px 6px 6px 6px;
      margin-bottom: 0;
    }
    .chating .others{
      color: black;
      background-color: white;
      margin-right: 5px;
      display:inline-block;
      margin-left: 5px;
      padding-right: 0.5em;
      padding-left: 0.5em;
      border-radius: 6px 6px 6px 6px;
      margin-bottom: 0;
    }
    input{
      width: 330px;
      height: 25px;
    }
    #yourMsg{
      margin-top: 10px;
      display: none;
    }

    #yourName{
      margin-top: 10px;
    }

    .chattingNo{
      font-weight: bold;
      color: black;
      text-align: center;
    }
    .msgImg{
      width: 200px;
      height: 125px;
    }
    .clearBoth{
      clear: both;
    }
    .img{
      float: right;
    }
    .chating-top{
      width: 598px;
      position: absolute;
      color: black;
      background-color: skyblue;
      height: 30px;
      font-size: 20px;
    }

    .emoticon-div{
      z-index: -1;
      background-color: white;
      position: absolute;
      width: 598px;
      height: 200px;
      bottom:90px;
      margin: 0 auto;
    }
    .exit{
      transform: rotate(180deg);
      text-align: center;
      width: 20px;
      border: 0;
      outline: 0;
      background-color: transparent !important;
      vertical-align: middle;
      margin-right: 10px;
      margin-left: 5px;
    }
    .btn-hamburger{
      vertical-align: middle;
      width: 30px;
      float: right;
    }
    .emoticon-table tr td{
      text-align: center;
    }
    .emoji{
      background-color: white;
      width: 46px;
      height: 45px;
      border: 0;
      outline: 0;
    }
    .kaomoji{
      background-color: white;
      width: 119px;
      height: 45px;
      border: 0;
      outline: 0;
    }
    .sign{
      background-color: white;
      width: 46px;
      height: 45px;
      border: 0;
      outline: 0;
    }
    .emotion-top{
      width: 100%;
      height: 30px;
      border: 0;
      outline: 0;
      background-color: lightgray;
      color: black;
    }
  </style>
  <!-- Favicon -->
  <link rel="icon" href="/static/img/brand/favicon.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="/static/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="/static/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Argon CSS -->
  <link rel="stylesheet" href="/static/css/argon.css?v=1.2.0" type="text/css">

</head>

<body>
<!-- Side -->
<%@ include file="/WEB-INF/views/include/side.jsp"%>
  <!-- Main content -->
<!-- /Side -->
  <div class="main-content" id="panel">
    <!-- Top -->
    <%@include file="/WEB-INF/views/include/top.jsp"%>
    <!-- /Top -->
    <!-- Header -->
    <%@include file="/WEB-INF/views/include/header.jsp"%>
    <!-- /Header -->
    <!-- Page content -->
    <div class="container-fluid mt--6">
      <div class="row mt--5">
        <div class="col-md-10 ml-auto mr-auto">
          <div class="card card-upgrade">
            <div class="card-body" >
              <div class="table-responsive table-upgrade">
                <!-- 채팅 -->
                <div id="container" class="container">
                  <input type="hidden" id="sessionId" value="">
                  <input type="hidden" id="roomNumber" value="${roomNumber}">

                  <div class="row">
                    <div id="chating" class="chating">
                      <div class="chating-top">
                        <input class="exit" type="button" value="➜" onclick="chatExit()">${roomName}
<%--                        <progress class="progressTag" value="0" max="100"/>--%>
                        <input class="btn-hamburger" id="hamburgerBtn" type="image" src="/static/img/chat/hamburger.png">
                      </div>
                      <p class="chattingNo" id="chattingNo" style="margin-top: 30px;">로그인하셔야 대화에 참가하실 수 있습니다.</p>
                      <div id="chat">
                      </div>
                      <div class="emoticon-div">
                        <table class="emoticon-table" style="width: 100%">
                          <colgroup>
                            <col width="33.3%"/>
                            <col width="33.3%"/>
                            <col width="33.3%"/>
                          </colgroup>
                          <tr class="emotion-top">
                            <td colspan="3"><div id="emoticonTitle"style="display: inline; margin-left: 50px;">이모티콘</div><input type="button" id="emoticonClose" value="X" style="float: right; width: 45px; border: 0; outline: 0;  background-color: lightgray;"></td>
                          </tr>
                          <tr>
                            <td name="emoticonColspan" title="이모지"><input class="emotion-top" type="button" name="emojiBtn" id="emoji" value="&#x1F601;"></td>
                            <td name="emoticonColspan" title="kaomoji"><input class="emotion-top" type="button" name="emojiBtn" id="kaomoji" value=";-)"/></td>
                            <td name="emoticonColspan" title="기호"><input class="emotion-top" type="button" name="emojiBtn" id="sign"value="Ω"/></td>
                          </tr>
                        </table>
                        <table class="emoticon-table" id="emoticonTable" style="display: none;" >
                          <tbody name="emoticonTbody" title="emoji">
                          <tr>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F601;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F602;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F603;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F604;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F605;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F606;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F607;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F608;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F609;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F60A;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F60B;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F60C;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F60D;"/></td>
                          </tr>
                          <tr>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F60F;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F612;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F613;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F614;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F616;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F618;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F61A;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F61C;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F61D;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F61E;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F620;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F621;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F622;"/></td>
                          </tr>
                          <tr>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F624;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F625;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F628;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F629;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F62A;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F62B;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F62D;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F630;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F631;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F632;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F633;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F625;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#x1F637;"/></td>
                          </tr>
                          </tbody>
                          <tbody name="emoticonTbody" title="kaomoji">
                          <tr>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="ヾ(≧▽≦*)o"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="φ(*￣0￣)"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="q(≧▽≦q)"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="ψ(｀∇´)ψ"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="（￣︶￣）↗　"/></td>
                          </tr>
                          <tr>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="[]~(￣▽￣)~*"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="φ(゜▽゜*)♪"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="o(*^＠^*)o"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="O(∩_∩)O"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="(✿◡‿◡)"/></td>
                          </tr>
                          <tr>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="(*^_^*)"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="(❁´◡`❁)"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="(≧∇≦)ﾉ"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="(´▽`ʃ♡ƪ)"/></td>
                            <td><input class="kaomoji" type="button"  name="emoticon" value="(●ˇ∀ˇ●)"/></td>
                          </tr>
                          </tbody>
                          <tbody name="emoticonTbody" title="sign">
                          <tr>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65282;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65281;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65287;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65292;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65294;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65295;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65306;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65307;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65311;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65342;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65343;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65344;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65372;"/></td>
                          </tr>
                          <tr>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65291;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65293;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65308;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65309;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#65310;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#177;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#215;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#247;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8800;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8804;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8805;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8734;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8704;"/></td>
                          </tr>
                          <tr>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9734;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9733;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9679;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9678;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9670;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9632;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9650;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9660;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8594;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8592;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8593;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#8595;"/></td>
                            <td><input class="emoji" type="button"  name="emoticon" value="&#9742;"/></td>
                          </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <div class="div-player" style="display: none;">
                      <div class="div-player-top">대화상대
                      </div>
                      <div class="player"></div>
                    </div>
                  </div>
                  <div >
                    <div id="yourName">
                      <table class="inputTable">
                        <tr>
                          <th>사용자명</th>
                          <th><input class="form-control-sm" style="margin-left: 5px; width: 430px;" type="text" name="userName" id="userName" maxlength="10"></th>
                          <th><button class="btn-sm btn-primary" style="margin-left: 5px; width: 80px;" onclick="chatName()" id="startBtn">채팅참가</button></th>
                        </tr>
                      </table>
                    </div>
                    <div id="yourMsg">
                      <table class="inputTable">
                        <tr>
                          <th>메시지</th>
                          <th><input class="form-control-sm" type="url" style="margin-left: 5px; width: 390px;" id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
                          <th><button class="btn-sm disabled" disabled style="margin-left: 5px; width: 60px; background-color: yellow;" onclick="send()" id="sendBtn">전송</button></th>
                          <th><button class="btn-sm" style="margin-left: 5px; width: 70px; background-color: yellow;" id="emoticonOpen">이모티콘</button></th>
                        </tr>
                        <%-- <tr>
                          <th>파일업로드</th>
                          <th><input class="form-control-sm" type="file" id="fileUpload"></th>
                          <th><button class="btn-sm btn-primary" style="margin-left: 5px; margin-top:10px" onclick="fileSend()" id="sendFileBtn">파일 첨부</button></th>
                        </tr>--%>
                      </table>
                    </div>
                  </div>
                </div>
                <!-- /채팅 -->
              </div>
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
  <script src="/static/vendor/jquery/dist/jquery.min.js"></script>
  <script src="/static/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="/static/vendor/js-cookie/js.cookie.js"></script>
  <script src="/static/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="/static/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Argon JS -->
  <script src="/static/js/argon.js?v=1.2.0"></script>
</body>
</html>
<script type="text/javascript">
  $(document).ready(function () {
    var windowkey = 91;
    var pointkey = 190;

  })

  $(function (){
    var $chatting = $("#chatting");
    var $sendBtn = $("#sendBtn");
    var $hamburgerBtn = $("#hamburgerBtn");
    var $emoticonOpen = $("#emoticonOpen");
    var divPlayer = 0
    var $emoticonTable = $("#emoticonTable"); // 이모티콘 테이블
    var $emoticonColspan = $("[name=emoticonColspan]"); // 이모티콘 서브 타이틀 colspan
    var $emoticonTbody = $("[name=emoticonTbody]"); // 이모티콘 tbody
    var $emoticonTitle = $("#emoticonTitle"); // 이모티콘 타이틀
    var $emoticonClose = $("#emoticonClose");
    var $emoji = $("#emoji"); // 이모지
    var $kaomoji = $("#kaomoji"); // 카오모지
    var $sign = $("#sign"); // 기호
    var $emojiBtn = $("input:button[name=emojiBtn]"); //이모티콘 선택 버튼
    var $emoticon = $("input:button[name=emoticon]"); // 이모티콘 값
    var emoticonState = false;
    var $emoticonDiv = $(".emoticon-div");


    $hamburgerBtn.on("click",function(){
      if(divPlayer == 0) {
        $(".div-player").show();
        divPlayer = 1;
      } else {
        $(".div-player").hide();
        divPlayer = 0;
      }
    })

    // 내용 입력 시
    $chatting.on("keyup",function (e){
      sendBtnTrueFalse();
      if(emoticonState == true){
        emoticonClose();
      }
    })

    // 전송버튼 클릭 시시
   $sendBtn.on("click",function () {
      sendBtnTrueFalse();
     if(emoticonState == true){
       emoticonClose();
     }
    })

    // 이모티콘 열기
    $emoticonOpen.on("click",function (e){
      $emoticonDiv.css("z-index",999);
      $emoticonTitle.text("이모지");
      $emojiBtn.css("background-color","lightgray");
      $emojiBtn.eq(0).css("background-color","white"); // 이모지 활성화
      $emoticonTbody.hide(); // 이모티콘 상자 숨김
      $emoticonTbody.eq(0).show(); // 이모티콘 상자 - 이모지만 보임
      $emoticonTable.css("z-index",999);
      $(".emoticon-table").show();
      emoticonState = true;
     $emoticonOpen.attr("disabled",true);
    });
    // 이모티콘 닫기
    $emoticonClose.on("click",function(){
      emoticonClose();
    })

    // 이모티콘 서브 타이틀 클릭
    $emojiBtn.on("click",function(){
      var index = $(this).parent().index();
      var title = $(this).parent().attr('title');
      $emojiBtn.css("background-color","lightgray");
      $emoticonTbody.hide();
      $emojiBtn.eq(index).css("background-color","white");
      $emoticonTbody.eq(index).show();
      $emoticonTitle.text(title);
    })

    // 이모티콘 클릭
    $emoticon.on("click",function(){
      var chatting = $chatting.val();
      $chatting.val(chatting + $(this).val());
      $("#chatting").focus(); // 메시지 창으로 커서 이동
      sendBtnTrueFalse();

    })

    $(document).on("mousedown",function(e){
      if(e.button == 2){
      alert("우클릭");
      }
    })

    function emoticonClose(){
      $emoticonDiv.css("z-index",-1);
      $emoticonOpen.attr("disabled",false);
      $emoticonTable.css("z-index",-1);
      $emoticonTable.hide();
      emoticonState = false;
    }


    function sendBtnTrueFalse() {
      if($chatting.val().trim() != "") { // 채팅입력칸에 내용이 있으면
        $sendBtn.removeClass("disabled");
        $sendBtn.addClass("btn-primary");
        $sendBtn.attr("disabled",false);
        $sendBtn.css("color","black");
      } else if($chatting.val() == ""){ // 내용이 없으면
        $sendBtn.removeClass("btn-primary");
        $sendBtn.addClass("disabled");
        $sendBtn.attr("disabled",true);
        $sendBtn.css("color","gray");
      }
    }

  });

  var ws;

  function wsOpen(data){
    //웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
    ws = new WebSocket("ws://" + location.host + "/chating/"+$("#roomNumber").val());
    wsEvt();
  }

  function wsEvt() {
    ws.onopen = function(data){
      //소켓이 열리면 동작
      var userName = $("#userName").val();
      // $("#chating").append, $(".div-player").append
      var enter = "<p style='font-weight: bold; text-align: center; color: black; margin-top:30px;'>"+ userName +" 님이 입장하셨습니다.</p>";
      var playerAdd = "<p style='text-align: center; color: black; margin-bottom: 0'>"+ userName + "</p><hr style='margin-top: 0; margin-bottom: 0; background-color: white'>";

      var obj = {
        type: "enter",
        roomNumber: $("#roomNumber").val(),
        sessionId : $("#sessionId").val(),
        userName : $("#userName").val(),
        enter : enter,
        player : playerAdd
      }
      ws.send(JSON.stringify(obj));

    }

    // onmessage 시작
    ws.onmessage = function(data) {
      //메시지를 받으면 동작
      var msg = data.data;
      var date = new Date();
      var hour = (date.getHours() > 12) ? "오후 " +(date.getHours()-12) : date.getHours();
      var minute = (date.getMinutes() < 10) ? ":0"+date.getMinutes() : ":"+date.getMinutes();
      var time =hour+minute;
      $("#chating").append(JSON.parse(msg).enter);
      $(".div-player").append(JSON.parse(msg).player);
      if(msg != null && msg.type != ''){
        //파일 업로드가 아닌 경우 메시지를 뿌려준다.
        var d = JSON.parse(msg);
        if(d.type == "getId"){
          var si = d.sessionId != null ? d.sessionId : "";
          if(si != ''){
            $("#sessionId").val(si);
          }
        } else if(d.type == "message"){
          if(d.sessionId == $("#sessionId").val()){
            $("#chating").append("<div style='text-align: right;'><div class='name' style='margin-right: 5px;'>"+d.userName+"</div><p class='me'>" + d.msg + "</p><div class='time' style='margin-right: 10px;'>"+ time +"</div></div>");
          }else{
            $("#chating").append("<div style='text-align: left;'><div class='name' style='margin-left: 5px;'>"+ d.userName +"</div><p class='others'>" + d.msg + "</p><div class='time' style='margin-left: 5px;'>"+ time +"</div></div>");
          }
        } else{
          console.warn("unknown type!")
        }
      } else{
        //파일 업로드한 경우 업로드한 파일을 채팅방에 뿌려준다.
        var url = URL.createObjectURL(new Blob([msg]));
        $("#chating").append("<div class='img'><img class='msgImg' src="+url+"></div><div class='clearBoth'></div>");
      }
      $("#chating").scrollTop($("#chating")[0].scrollHeight);
    }
    // onmessage 끝

    document.addEventListener("keypress", function(e){
      if(e.keyCode == 13){ //enter press
        if($("#chatting").val().trim() != "") {
          send();
        }
      }
    });
  }

  function chatExit(){
    history.back();

  }

  // 로그인
  function chatName(){
    var userName = $("#userName").val();
    if(userName == null || userName.trim() == ""){
      alert("사용자 이름을 입력해주세요.");
      $("#userName").focus();
    }else{
      wsOpen();
      $("#yourName").hide();
      $("#yourMsg").show();
      $("#chattingNo").css("display","none");
    }
  }

  function send() {

    var option ={
      type: "message",
      roomNumber: $("#roomNumber").val(),
      sessionId : $("#sessionId").val(),
      userName : $("#userName").val(),
      msg : $("#chatting").val()
    }
    ws.send(JSON.stringify(option));
    $('#chatting').val("");
  }

  function fileSend(){
    var file = document.querySelector("#fileUpload").files[0];
    var fileReader = new FileReader();
    if(file != null) {
      fileReader.onload = function () {
        var param = {
          type: "fileUpload",
          file: file,
          roomNumber: $("#roomNumber").val(),
          sessionId: $("#sessionId").val(),
          msg: $("#chatting").val(),
          userName: $("#userName").val()
        };
        console.log(JSON.stringify(param))
        ws.send(JSON.stringify(param)); //파일 보내기전 메시지를 보내서 파일을 보냄을 명시한다.
        arrBuffer = this.result;
        ws.send(arrBuffer); //파일 소켓 전송
      };
      fileReader.readAsArrayBuffer(file);
    } else {
      alert("첨부된 파일이 없습니다.");
    }

  }
</script>

