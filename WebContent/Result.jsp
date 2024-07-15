<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<div class="row mt-5 justify-content-center">
	<div class="col-sm-6">

		<%-- 1位を表示 --%>
		<div class="row border-bottom border-black">
			<div class="row text-center">
				<h1>1位</h1>
				<h1>${scoreboard[0].name}</h1>
				<h1>${scoreboard[0].score}</h1>
			</div>
					<form action="/suzume/result" method="post">
			<div class="row">
				<div class="col-4 offset-8 mt-3 mb-3">
						<input class="btn btn-outline-dark fs-3" type="submit" id="HOME" value="スタートに戻る">
				</div>
			</div>
					</form>
		</div>

		<%-- 2位以下を表示 --%>
		<div class="row mt-3 justify-content-around text-center">
			<c:forEach var="player" varStatus="status" begin="1" items="${scoreboard}">
				<div class="col">
					<h4>${status.index+1}位</h4>
					<h4>${player.name}</h4>
					<h4>${player.score}</h4>
				</div>
			</c:forEach>
		</div>

	</div>
</div>

<script src="./js/form.js"></script>
</body>
</html>