<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	<link rel="stylesheet" href="../../../resources/css/style.css">
		 <title>게시판</title>
	</head>
	<script type="text/javascript">
		
		$(document).ready(function() {
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function() {
				if (fn_valiChk()) {
					return false;
				}
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk() {
			var regForm = $("form[name='writeForm'] .chk").length;
			for (var i = 0; i < regForm; i++) {
				if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
	<body>
		<div class="container">
			<header>
				<h1 class="title"><b>게시판</b></h1>
			</header>
			<hr />
			 
			<div><%@include file="nav.jsp" %></div>
		
			<section id="container">
				<c:if test="${member.userId != null }">
					<form name ="writeForm" method="post" action="/board/write" role="form">
						<div class="form-group">
							<label for="title" class="col-sm-2 control-label">제목</label>
							<input type="text" id="title" name="title" class="chk form-control" title="제목을 입력하세요"/>
						</div>
						
						<div class="form-group">
							<label for="content" class="col-sm-2 control-label">내용</label>
							<textarea id="content" name="content" class="chk form-control" title="내용을 입력하세요"></textarea>
						</div>
						
						<div class="form-group">
							<label for="writer" class="col-sm-2 control-label">작성자</label>
							<input type="text" id="writer" name="writer" class="chk form-control" title="작성자 입력하세요"/>
						</div>
						
						<div>
							<button type="submit" class="write_btn btn btn-success">작성</button>
						</div>
					</form>
				</c:if>
				<c:if test="${member.userId == null }">
					<p>로그인 후에 작성하실 수 있습니다.</p>
				</c:if>
			</section>
			<hr />
		</div>
	</body>
</html>