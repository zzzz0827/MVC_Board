<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
	<head>
		<title>Home</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<link rel="stylesheet" href="../../../resources/css/style.css">
	</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#logoutBtn").on("click", function(){
				location.href="member/logout";
			})
			$("#registerBtn").on("click", function(){
				location.href="member/register";
			})
			$("#memberUpdateBtn").on("click", function(){
				location.href="member/memberUpdateView";
			})
			$("#golistbtn").on("click", function(){
				location.href="board/list";
			})
		})
	</script>
	<body>
		<header>
			<h1 class="title"><b>로그인</b></h1>
		</header>
		<hr>
		
		<div class="container">
			<form name='homeForm' method="post" action="/member/login" role="form">
				<c:if test="${member == null}">
					<div class="form-group">
						<label for="userId" class="col-sm-2 control-label">아이디 : </label>
						<input type="text" id="userId" name="userId" class="chk form-control">
					</div>
					<div class="form-group">
						<label for="userPass" class="col-sm-2 control-label">비밀번호 : </label>
						<input type="password" id="userPass" name="userPass" class="chk form-control">
                    </div>
                    
					<div class="form-group">
						<button type="submit" class="write_btn btn btn-success">로그인</button>
						<button type="button" id="registerBtn" class="write_btn btn btn-primary">회원가입</button>
						<button id="golistbtn" type="button" class="write_btn btn btn-info">게시판으로</button>
                    </div>
                    
				</c:if>
				<c:if test="${member != null }">
					<div class="form-group">
						<p>${member.userId}님 환영합니다.</p>
						<button id="logoutBtn" type="button" class="write_btn btn btn-danger">로그아웃</button>
						<button id="memberUpdateBtn" type="button" class="write_btn btn btn-primary">정보 수정</button>
						<button id="golistbtn" type="button" class="write_btn btn btn-info">게시판으로</button>
					</div>
				</c:if>
				<c:if test="${msg == false}">
					<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
				</c:if>
            </form>
            
		</div>
	</body>
</html>