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

			<h4 class="text-center">１局目</h4>

			<!-- 下に罫線を引く -->
			<div class="border-bottom border-black">

				<!-- ボーダーに隙間を空けるため、上下にpaddingを入れる -->
				<div class="row pt-2 pb-2">

					<!-- 画面上部にプレイヤーの名前とスコアを横並びで表示する -->
					<c:forEach var="player" varStatus="status" items="${players}">

						<!-- 一番左のプレイヤーには罫線を入れない -->
						<c:if test="${status.index == 0}">
							<div class="col text-center">
								<h3>${player.name}</h3>
								<p>${player.score}</p>
							</div>
						</c:if>

						<!-- ２番目以降のプレイヤーの左側に罫線を引く -->
						<c:if test="${status.index != 0}">
							<div class="col border-start border-black text-center">
								<h3>${player.name}</h3>
								<p>${player.score}</p>
							</div>
						</c:if>

					</c:forEach>

				</div>

			</div>

			<div class="row justify-content-around">

					<!-- プレイヤーの名前のボタン -->
					<!-- 1行に2名ずつ表示する -->
					<c:forEach var="player" varStatus="status" step="2" items="${players}">
						<div class="row mt-5">

							<!-- 奇数番目のプレイヤーを表示 -->
							<div class="col border border-black text-center btn btn-outline-dark">
								<h3>${players[status.index].name}</h3>
							</div>

							<!-- 偶数番目のプレイヤーが存在すれば表示 -->
							<c:if test="${players[status.index+1] != null}">
								<div class="col border border-black text-center ms-5 btn btn-outline-dark">
									<h3>${players[status.index+1].name}</h3>
								</div>
							</c:if>
						</div>
					</c:forEach>

					<div class="mt-5 p-3 col-2 border border-black text-center btn btn-outline-dark">
						終了
					</div>
			</div>

		</div>
	</div>
</body>

</html>