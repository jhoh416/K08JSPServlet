<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String saveDirectory = application.getRealPath("/Uploads");
int maxPostSize = 1024 * 1000;
String encoding = "UTF-8";


/* 
파일명이 중복되었을때 파일명에 자동으로 인덱스를 부여하여 파일명이
중복되지 않게 해주는 기능을 제공한다.
*/
FileRenamePolicy policy = new DefaultFileRenamePolicy();

try{
	/* 위 객체 생성만으로 파일명이 중복되는 부분까지 모두 처리할 수 있다.
	하지만 파일명이 한글인 경우 서버에서 인코딩 처리 등의 문제가 꺠짐 현
	상이 발생할수 있으므로 영문과 한글 조합하여 사용
	*/
   MultipartRequest mr = new MultipartRequest(request, saveDirectory, 
                           maxPostSize, encoding, policy);
   
}
catch(Exception e){
   e.printStackTrace();
}

%>
