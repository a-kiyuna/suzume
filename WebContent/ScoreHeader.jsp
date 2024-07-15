<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4 class="text-center">１局目</h4>

<%-- 下に罫線を引く --%>
<div class="border-bottom border-black">

	<%-- ボーダーに隙間を空けるため、上下にpaddingを入れる --%>
	<div class="row pt-2 pb-2">

		<%-- 画面上部にプレイヤーの名前とスコアを横並びで表示する --%>
		<c:forEach var="player" varStatus="status" items="${players}">

			<%-- 一番左のプレイヤーには罫線を入れない --%>
			<c:if test="${status.index == 0}">
				<div class="col text-center">
					<h3>${player.name}</h3>
					<p>${player.score}</p>
				</div>
			</c:if>

			<%-- ２番目以降のプレイヤーの左側に罫線を引く --%>
			<c:if test="${status.index != 0}">
				<div class="col border-start border-black text-center">
					<h3>${player.name}</h3>
					<p>${player.score}</p>
				</div>
			</c:if>

		</c:forEach>

		</div>

</div>