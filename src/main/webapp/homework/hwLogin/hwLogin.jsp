<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">    
</head>
<body>
	<div class="container">
	
		<div class="row">
			
				<%@ include file="../inc/top.jsp" %>
			
			
				<%@ include file="../inc/left.jsp" %>
			
			<div class="col-9 pt-3">
				<%-- <jsp:include page="../common/hwLink.jsp"/> --%>
				<h2>로그인 페이지</h2>
				
				<span style="color: red; font-size: 1.2em;">
					<%= request.getAttribute("LoginErrMsg") == null ?
							"" : request.getAttribute("LoginErrMsg")%>
				</span>
				<%
				/* 세션영역에 UserId라는 속성값이 없는 경우 , 즉 로그인 처리가
				되지 않은 상태에서는 로그인폼과 검증을 위한 JS를 웹브라우저에
				출력한다. */
				if(session.getAttribute("UserId") == null){
				%>
			
				<script>
				function validateForm(form){
					
					if(!form.user_id.value){
						alert("아이디를 입력하세요");
						form.user_id.focus();
						return false;
					}
					if(form.user_pw.value == ""){
						alert("패스워드를 입력하세요.");
						form.user_pw.focus();
						return false;
					}
				}
				</script>
			
				<form action="hwLoginprocess.jsp" method="post" name="login"
					onsubmit="return validateForm(this);">
					아이디 : <input type="text" name="user_id"/><br />
					패스워드 : <input type="password" name="user_pw"/><br />
					<input type="submit" value="로그인하기"/>
				</form>
				 
				<% 
				}else{
					
				%>
					<%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다.<br/>
					<a href="hwLogout.jsp">[로그아웃]</a>
				<%
				}		
				%>	
			</div>
		</div>	
	</div>
		<form name="writeFrm" method="post" action="hwWriteProcess.jsp"
	      onsubmit="return validateForm(this);">
			<div class="row">
			    <div class="col d-flex justify-content-end">
			        <!-- 각종 버튼 부분 -->
			        <button type="button" class="btn">Basic</button>
			        <button type="button" class="btn btn-primary" onclick="location.href='hwWrite.jsp';">글쓰기</button>
			        <button type="button" class="btn btn-secondary" onclick="location.href='hwEdit.jsp';">수정하기</button>
			        <button type="button" class="btn btn-success">삭제하기</button>
			        <button type="button" class="btn btn-info">답글쓰기</button>
			        <button type="button" class="btn btn-warning" onclick="location.href='hwList.jsp';">리스트보기</button>
			        <button type="submit" class="btn btn-danger">전송하기</button>
			        <button type="button" class="btn btn-dark">Reset</button>
			        <button type="button" class="btn btn-light">Light</button>
			        <button type="button" class="btn btn-link">Link</button>
			    </div>
			</div>
		</form>
</body>
</html>