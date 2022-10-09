<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%
	String sessionId = (String)session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="contailner">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item">
							<a class='nav-link' 
								<%-- href="<c:url value = "/member/loginMember.jsp"/>">로그인</a> --%>
								href="<c:url value = "/login"/>">로그인</a>
						</li>
						<li class="nav-item">
							<a class='nav-link' 
								href="<c:url value = "/member/addMember.jsp"/>">회원가입</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="nav-item">
							<a class='nav-link' 
								href="<c:url value = "/member/logoutMember.jsp"/>">로그아웃</a>
						</li>
						<li class="nav-item">
							<a class='nav-link' 
								<%-- href="<c:url value = "/member/updateMember.jsp"/>">회원수정</a> --%>
								href="<c:url value = "/updatemember"/>">회원수정</a>
								
						</li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="/product.jsp">상품목록</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/addProduct.jsp">상품등록</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/editProduct.jsp">상품수정</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
</body>
</html>