<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>SCK 채팅방</title>
    <style>
        *{
            margin:0;
            padding:0;
        }
        .container{
            width: 500px;
            margin: 0 auto;
            padding: 25px;
        }
        .container h1{
            text-align: left;
            padding: 5px 5px 5px 15px;
            border-left: 3px solid #FFBB00;
            margin-bottom: 20px;
        }
        .roomContainer{
            background-color: white;
            width: 500px;
            height: 500px;
            overflow: auto;
            border: white 1px solid;
        }
        .roomCreate{
            width: 500px;
            border: white 1px solid;
        }
        .roomList{
            border: none;
        }
        .roomList th{
            border: 1px solid black;
            border-top: 0;
            background-color: #fff;
            color: black;
        }
        .roomList td{
            border: 1px solid black;
            background-color: #fff;
            text-align: left;
            color: black;
        }
        .roomList .num{
            width: 75px;
            text-align: center;
        }
        .roomList .room{
            width: 350px;
        }
        .roomList .go{
            width: 71px;
            text-align: center;
        }
        button{
            background-color: #FFBB00;
            font-size: 14px;
            color: #000;
            border: 1px solid #000;
            border-radius: 5px;
            padding: 3px;
            margin: 3px;
        }
        .inputTable th{
            padding: 5px;
        }
        .inputTable input{
            width: 330px;
            height: 25px;
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
                <div class="card card-upgrade" style="background-image: url('/static/img/chat/back_gif.gif')">
                    <div class="card-body">
                        <div class="table-responsive table-upgrade">
                            <!-- 채팅 -->
                            <div class="container">
                                <h1 style="color: white;">채팅방</h1>
                                <div id="roomContainer" class="roomContainer">
                                    <table id="roomList" class="roomList"></table>
                                </div>
                                <div class="roomCreate">
                                    <table class="inputTable">
                                        <tr>
                                            <th style="color:white;">방제목</th>
                                            <th><input type="text" name="roomName" id="roomName" maxlength="15"></th>
                                            <th><button class="btn-sm btn-primary" id="createRoom">방 만들기</button></th>
                                        </tr>
                                    </table>
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

    var ws;
    window.onload = function(){
        getRoom();
        createRoom();
    }

    function getRoom(){
        commonAjax('/getRoom', "", 'post', function(result){
            createChatingRoom(result);
        });
    }

    function createRoom(){
        $("#createRoom").click(function(){

            var msg = {	roomName : $('#roomName').val()	};
            commonAjax('/createRoom', msg, 'post', function(result){
                createChatingRoom(result);
            });
            $("#roomName").val("");
        });
    }

    function goRoom(number, name){
        location.href="/moveChating?roomName="+name+"&"+"roomNumber="+number;
    }

    function createChatingRoom(res){
        if(res != null){
            var tag = "<tr><th class='num'>순서</th><th class='room' style='text-align: center;'>방제목</th><th class='go'></th></tr>";
            res.forEach(function(d, idx){
                var rn = d.roomName.trim();
                var roomNumber = d.roomNumber;
                tag += "<tr>"+
                    "<td class='num'>"+(idx+1)+"</td>"+
                    "<td class='room'>"+ rn +"</td>"+
                    "<td class='go'><button class='btn-primary btn-sm' style='width: 100%;' type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
                    "</tr>";
            });
            $("#roomList").empty().append(tag);
        }
    }

    function commonAjax(url, parameter, type, callbak, contentType){
        $.ajax({
            url: url,
            data: parameter,
            type: type,
            contentType : contentType!=null?contentType:'application/x-www-form-urlencoded; charset=UTF-8',
            success: function (res) {
                callbak(res);
            },
            error : function(err){
                console.log('error');
                callbak(err);
            }
        });
    }
</script>