<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>500</title>
    <link href="/static/css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="/static/css/bootstrap/bootstrap-grid.css" rel="stylesheet">
    <link href="/static/css/bootstrap/bootstrap-reboot.css" rel="stylesheet">
    <link href="/static/css/error.css" rel="stylesheet">
</head>
<div class="error">
    <div class="container-floud">
        <div class="col-xs-12 ground-color text-center">
            <div class="container-error-404">
                <div class="clip"><div class="shadow"><span class="digit thirdDigit">5</span></div></div>
                <div class="clip"><div class="shadow"><span class="digit secondDigit">0</span></div></div>
                <div class="clip"><div class="shadow"><span class="digit firstDigit">0</span></div></div>
                <div class="msg">OH!<span class="triangle"></span></div>
            </div>
            <h2 class="h1">Sorry! Internal Server Error</h2>
                <div class="" style="margin-top: 50px;">
                    <p>request_uri : <c:out value="${requestScope['javax.servlet.error.request_uri']}"/></p>
                    <p>status_code : <c:out value="${requestScope['javax.servlet.error.status_code']}"/></p>
                    <p>servlet_name : <c:out value="${requestScope['javax.servlet.error.servlet_name']}"/></p>
                    <p>exception : <c:out value="${requestScope['javax.servlet.error.exception']}"/></p>
                    <p>message : <c:out value="${requestScope['javax.servlet.error.message']}"/></p>
                </div>
            <input class="btn-info" type="button" value="이전 페이지로" onclick="history.go(-1)" style="font-size: 20px;">
        </div>
    </div>
</div>
</html>
<script href="/static/js/error.js"/>