<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>공지사항</title>
<!-- sweet alert import -->
<script src='${CTX_PATH}/js/sweetalert/sweetalert.min.js'></script>
<jsp:include page="/WEB-INF/view/common/common_include.jsp"></jsp:include>
<!-- sweet swal import -->

<script type="text/javascript">
	
</script>

</head>
<body>
	<form id="myForm" action="" method="">
		<input type="hidden" name="action" id="action" value=""> <input
			type="hidden" name="loginId" id="loginId" value="${loginId}">
		<input type="hidden" name="userNm" id="userNm" value="${userNm}">
		<input type="hidden" name="noticeno" id="noticeno" value=""> <input
			type="hidden" name="currentpage" id="currentpage" value="">

		<!-- 모달 배경 -->
		<div id="mask"></div>

		<div id="wrap_area">

			<h2 class="hidden">header 영역</h2>
			<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>

			<h2 class="hidden">컨텐츠 영역</h2>
			<div id="container">
				<ul>
					<li class="lnb">
						<!-- lnb 영역 --> <jsp:include
							page="/WEB-INF/view/common/lnbMenu.jsp"></jsp:include> <!--// lnb 영역 -->
					</li>
					<li class="contents">
						<!-- contents -->
						<h3 class="hidden">contents 영역</h3> <!-- content -->
						<div class="content">

							<p class="Location">
								<a href="../dashboard/dashboard.do" class="btn_set home">메인으로</a>
								<span class="btn_nav bold">실습</span> <span class="btn_nav bold">공지사항
									관리</span> <a href="../system/notice.do" class="btn_set refresh">새로고침</a>
							</p>
							<p class="conTitle">
								<span class="btn_nav bold">공지사항 </span>
							</p>

							<p>
								<span class="fr"> 제목 <input type="text" id="srctitle"
									name="srctitle" /> <input type="date" id="srcsdate"
									name="srcsdate" /> ~ <input type="date" id="srcedate"
									name="srcedate" />
								</span>
							</p>
							<div align="right"></div>
							<div class="divComGrpCodList">
								<table class="col">
									<caption>caption</caption>
									<colgroup>
										<col width="6%">
										<col width="57%">
										<col width="17%">
										<col width="20%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">제목</th>
											<th scope="col">작성자</th>
											<th scope="col">날짜</th>
											<th scope="col">날짜</th>
										</tr>
									</thead>
									<tbody id="listNotice"></tbody>
								</table>
							</div>

							<div class="paging_area" id="noticePagination"></div>

						</div> <!--// content -->

						<h3 class="hidden">풋터 영역</h3> <jsp:include
							page="/WEB-INF/view/common/footer.jsp"></jsp:include>
					</li>
				</ul>
			</div>
		</div>

		<div id="noticeregfile" class="layerPop layerType2"
			style="width: 600px;">
			<dl>
				<dt>
					<strong>공지사항 등록/수정</strong>
				</dt>
				<dd class="content">
					<!-- s : 여기에 내용입력 -->
					<table class="row">
						<caption>caption</caption>
						<colgroup>
							<col width="120px">
							<col width="*">
							<col width="120px">
							<col width="*">
						</colgroup>

						<tbody>
							<tr>
								<th scope="row">작성자 <span class="font_red">*</span></th>
								<td><input type="text" class="inputTxt p100"
									name="writerfile" id="writerfile" readonly /></td>
								<th scope="row">작성일자 <span class="font_red">*</span></th>
								<td><input type="text" class="inputTxt p100"
									name="notice_datefile" id="notice_datefile" readonly /></td>
							</tr>
							<tr>
								<th scope="row">제목 <span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="inputTxt p100"
									name="notice_titlefile" id="notice_titlefile" /></td>
							</tr>

							<tr>
								<th scope="row">내용 <span class="font_red">*</span></th>
								<td colspan="3"><textarea class="inputTxt p100"
										name="notice_detfile" id="notice_detfile"> </textarea></td>
							</tr>

							<tr>
								<th scope="row">파일 <span class="font_red">*</span></th>
								<td>
									<!-- input type="file" class="inputTxt p100" name="addfile" id="addfile"  onChange="fn_filechange(event)"  / -->
									<input type="file" class="inputTxt p100" name="addfile"
									id="addfile" />
								</td>
								<td colspan="2"><div id="fileview"></div></td>
							</tr>

						</tbody>
					</table>

					<!-- e : 여기에 내용입력 -->

					<div class="btn_areaC mt30">
						<a href="" class="btnType gray" id="btnClosefile" name="btn"><span>닫기</span></a>
					</div>
				</dd>
			</dl>
			<a href="" class="closePop"><span class="hidden">닫기</span></a>
		</div>

	</form>
</body>
</html>