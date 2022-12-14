<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../hwLogin/hwIsLoggedn.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    </div>
    <div class="row">
        <%@ include file="../inc/left.jsp" %>
        <div class="col-9 pt-3">
            <h3>게시판 작성 - <small>자유게시판</small></h3>

            <form enctype="multipart/form-data">
                <table class="table table-bordered">
                <colgroup>
                    <col width="20%"/>
                    <col width="*"/>
                </colgroup>
                <tbody>
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">작성자</th>
                        <td>
                            <input type="text" class="form-control" 
              
                                style="width:100px;" />
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">패스워드</th>
                        <td>
                            <input type="text" class="form-control" 
                                style="width:200px;" />
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">제목</th>
                        <td>
                            <input type="title" class="form-control" />
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">내용</th>
                        <td>
                            <textarea name="content"  rows="5" class="form-control"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">첨부파일</th>
                        <td>
                            <input type="file" class="form-control" />
                        </td>
                    </tr>
                </tbody>
                </table>
                
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
            </form>
        </div>
    </div>
    <div class="row border border-dark border-bottom-0 border-right-0 border-left-0"></div>
    <div class="row mb-5 mt-3">
        <div class="col-2">
            <h3>겸이아빠&trade;</h3>
        </div>
        <div class="col-10 text-center">
            Email : nakjasabal@naver.com&nbsp;&nbsp;
            Mobile : 010-7906-3600&nbsp;&nbsp;
            Address : 서울시 금천구 가산동 426-5 월드메르디앙2차 1강의실
            <br />
            copyright &copy; 2019 한국소프트웨어인재개발원.
            All right reserved.
        </div>
    </div>
</div>
</body>
</html>