<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>쇼핑몰</title>
</head>
<body>
<%!
	String greeting = "쇼핑몰에 오신것을 환영합니다. ";
	String taglib = "Welcome to Web Market";
	String dateTime;
%>
<%
	Date day = new Date();
	String ampm;
	int hour = day.getHours();
	int minuts = day.getMinutes();
	int second = day.getSeconds();
	if(hour / 12 == 0){
		ampm = "오전";
	}else{
		ampm = "오후";
		hour -= 12;
	}
	dateTime = String.format("%s %d시 %d분 %d초 ", ampm,hour,minuts,second);	
%>


<%@ include file="../common/menu.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">
			<%=greeting %>
		</h1>
	</div>
</div>
<div class="container">
	<div class="text-center">
		<h3> <%=taglib %>  </h3>
		<%= dateTime %>		
	</div>
</div>

<%@ include file="../common/footer.jsp" %>

</body>
</html>