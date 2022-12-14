<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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