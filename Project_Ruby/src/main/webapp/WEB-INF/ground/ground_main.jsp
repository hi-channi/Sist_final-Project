<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Yeon+Sung&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<c:set var="root" value="<%=request.getContextPath()%>" />
<link rel="stylesheet" type="text/css"
	href="${root }/css/ground/crewlist.css">

<title>Insert title here</title>
</head>
<body>

	<div class="container">

		<div class="crewrank">
			<span class="crew_rank">크루 순위</span>
		</div>

		<div class="crewrank_list" style="height: 395px;">
			<div class="listbox1">
				<table class="table" style="margin-top: 7px;">
					<c:forEach var="dto" items="${pointlist }" varStatus="i" begin="0"
						end="4">
						<tr>
							<td class="subject1">${dto.name }<c:if test="">

									<img src="../image/1.png" style="width: 19px;">
								</c:if>
							</td>
							<!-- 게시글 제목 출력 -->
							<td></td>
							<td class="likecount1"><img src="../image/star.png"> <fmt:formatNumber
									value="${dto.score }" pattern="#,###" /></td>
						</tr>
					</c:forEach>
				</table>

			</div>

		</div>

		<span class="new_crew">신규 크루</span>

		<div class="newcrewlist"
			style="border: 1px solid #191919; border-left-color: #dbdbdb; border-right-color: #dbdbdb; border-bottom-color: #dbdbdb;">
			<table class="table" style="width: 280px; height: 110px;">
				<c:forEach var="dto" items="${newlist }" varStatus="i" begin="0"
					end="3">
					<tr>
						<td>${dto.name }</td>
					</tr>
				</c:forEach>
			</table>

		</div>

		<span class="crewlist">크루 리스트</span>
		<div class="btns">
			<button class="mycrew" onclick="location.href='/ground/mycrew'">마이
				크루</button>
			<button class="makecrew" onclick="location.href='/ground/crewenroll'">
				<span class="makecrew1">크루 만들기</span>
			</button>
		</div>



		<%-- <div class="crewlisttable"
			style="border: 1px solid #191919; border-left-color: #dbdbdb; border-right-color: #dbdbdb; border-bottom-color: #dbdbdb;">
			<table class="table">

				<thead>
					<tr>
						<th scope="col">#크루 번호</th>
						<th scope="col">크루 이름</th>
						<th scope="col">크루원 수</th>
						<th scope="col">크루 점수</th>
						<th scope="col">개설일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="a" items="${newlist }" end="12">
						<tr>
							<th scope="row">${a.team_idx }</th>
							<td>${a.name }</td>
							<td><img src="../image/face.png" style="width: 19px;">
								15/50</td>
							<td><img src="../image/star.png" style="width: 19px;">
								25598</td>
							<td>@mdo</td>
						</tr>

					</c:forEach>
				</tbody>

			</table>
		</div> --%>

		<div class="secondbox">
			<c:forEach var="a" items="${list }">
				<table class="communitylist">
					<tr align="center">
						<td colspan="4" width="130">${a.team_idx }</td>
						<td colspan="4" width="220"><button type="button"
								id="modal_opne_btn2">${a.name }</button></td>
						<td colspan="4" width="120"><img alt=""
							src="../image/face.png" style="width: 20px">3/50</td>
						<td colspan="4" width="220"><img alt=""
							src="../image/star.png" style="width: 20px"><fmt:formatNumber
									value="${a.score }" pattern="#,###" /></td>
						<td colspan="4" width="220"><fmt:formatDate value="${a.create_day }" pattern="yyyy-MM-dd"/></td>
						<tr>
				
				</table>
			</c:forEach>

		</div>



		<!-- 페이징 -->

		<div style="width: 800px; text-align: center;">
			<ul class="pagination">
				<!-- 이전 -->
				<c:if test="${startPage>1}">
					<li><a href="ground?currentPage=${startPage-1}">이전</a></li>
				</c:if>

				<c:forEach var="pp" begin="${startPage}" end="${endPage}">
					<c:if test="${currentPage==pp}">
						<li class="active"><a href="ground?currentPage=${pp}">${pp}</a></li>
					</c:if>
					<c:if test="${currentPage!=pp}">
						<li><a href="ground?currentPage=${pp}">${pp}</a></li>
					</c:if>
				</c:forEach>

				<!-- 다음 -->
				<c:if test="${endPage<totalPage}">
					<li><a href="ground?currentPage=${endPage+1}">다음</a></li>
				</c:if>
			</ul>
		</div>




		<div id="modal2">

			<div class="modal_content2">
				<h4 style="text-align: center; font-family: 'Noto Sans KR';">크루
					신청하기</h4>


				<div class="crewname_">crew</div>
				<span class="inwon"><img alt="" src="../image/face.png"
					style="width: 19px;">15/50</span>
				<div class="crewprone" style="border: 0px solid black;">크루 한 줄
					소개 란입니다. 크루 한 줄 소개 란입니다. 크루 한 줄 소개 란입니다.크루 한 줄 소개 란입니다.</div>

				<div class="mypricrew" style="height: 395px;">
					<span class="title">내 개인정보</span>
					<div class="listbox1">
						<table class="list1" style="margin-top: 7px;">

							<tr>
								<td class="subject1">이름</td>
								<!-- 게시글 제목 출력 -->
								<td></td>
								<td class="likecount1">김쌍용</td>
							</tr>

							<tr>
								<td class="subject1">연령대</td>
								<!-- 게시글 제목 출력 -->
								<td></td>
								<td class="likecount1">20대 초반</td>
							</tr>
						</table>
					</div>

				</div>

				<div class="wrapper">
					<input type="text" class="input" name="crew_name_text"
						placeholder="자기소개 한 줄" required="required" style="width: 360px;">
					<span class="underline"></span>
				</div>

				<button type="submit" class="btn-large">
					<span class="crew_enroll_btn">신청하기</span>
				</button>


				<button type="button" id="modal_close_btn2"
					style="color: gray; background-color: white; border: none; size: 15px;">X</button>

			</div>

			<div class="modal_layer2"></div>
		</div>




	</div>



	<div class="search">
		<input type="text" class="text_search" placeholder="검색하실 크루명을 입력하세요"
			style="width: 300px; height: 36px; font-family: 'Noto Sans KR';">
		<span class="icon glyphicon glyphicon-search"></span>
	</div>



	<div class="check" style="width: 210px;">
		<input type="checkbox" name="check" id="check1" value="crewsearch"
			style="font-family: 'Noto Sans KR';"> 신청 가능한 크루만 보기
	</div>








	<script type="text/javascript">
		document.getElementById("modal_opne_btn2").onclick = function() {
			document.getElementById("modal2").style.display = "block";
		}

		document.getElementById("modal_close_btn2").onclick = function() {
			document.getElementById("modal2").style.display = "none";
		}
	</script>
</body>
</html>