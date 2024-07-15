<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>すずめ雀 計算機</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="mt-5 row justify-content-center">
		<div class="col-sm-6">
			<%@include file="./ScoreHeader.jsp" %>

			<form method="POST" action="/suzume/scoreboard">
				<div class="row justify-content-around">

						<%-- プレイヤーの名前のボタン --%>
						<%-- 1行に2名ずつ表示する --%>
						<c:forEach var="player" varStatus="status" step="2" items="${players}">
							<div class="row mt-5 justify-content-around">

								<%-- 奇数番目のプレイヤーを表示 --%>
								<div class="col-6">
									<div class="p-2 border border-black text-center btn btn-outline-dark w-100">
										<h3>${players[status.index].name}</h3>
									</div>
								</div>

								<%-- 偶数番目のプレイヤーが存在すれば表示 --%>
								<c:if test="${players[status.index+1] != null}">
									<div class="col-6">
										<div class="p-2 border border-black text-center btn btn-outline-dark w-100">
											<h3>${players[status.index+1].name}</h3>
										</div>
									</div>
								</c:if>
							</div>
						</c:forEach>

						<div class="row mt-5 justify-content-around">
							<div class="col-2 p-3 border border-black text-center btn btn-outline-dark">
								<input type="submit" id="EXIT" value="終了">
							</div>
						</div>
				</div>
			</form>

		</div>
	</div>
	<script src="./js/form.js"></script>
</body>

</html>