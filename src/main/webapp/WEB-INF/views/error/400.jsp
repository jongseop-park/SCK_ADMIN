<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>400</title>
    <link href="/static/css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="/static/css/bootstrap/bootstrap-grid.css" rel="stylesheet">
    <link href="/static/css/bootstrap/bootstrap-reboot.css" rel="stylesheet">
    <link href="/static/css/error.css" rel="stylesheet">
</head>
<div class="error">
    <div class="container-floud">
        <div class="col-xs-12 ground-color text-center">
            <div class="container-error-404">
                <div class="clip"><div class="shadow"><span class="digit thirdDigit">4</span></div></div>
                <div class="clip"><div class="shadow"><span class="digit secondDigit">0</span></div></div>
                <div class="clip"><div class="shadow"><span class="digit firstDigit">0</span></div></div>
                <div class="msg">OH!<span class="triangle"></span></div>
            </div>
            <h2 class="h1">Sorry! Bad Request
                <div class="small" style="margin-top: 50px;">
                    이용에 불편을 드려 죄송합니다.<br/>
                    현재 이 페이지를 표시할 수 없습니다.<br/>
                    잠시 후 다시 시도해 주십시오.<br/>
                </div>
            </h2>
            <input class="btn-info" type="button" value="이전 페이지로" onclick="history.go(-1)" style="font-size: 20px;">
        </div>
    </div>
</div>
</html>
<script href="/static/js/error.js"/>