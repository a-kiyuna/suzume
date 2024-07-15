package jp.co.netwrk.a_kiyuna;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.netwrk.a_kiyuna.entity.Player;

@WebServlet("/scoreboard")
public class ScoreboardController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();

		// セッションにプレイヤーデータがない場合、登録画面にリダイレクトさせる。
		if (session.getAttribute("players") == null) {
			res.sendRedirect("/suzume/register");
			return;
		}

		// ボタンIDを取得
		String buttonId = req.getParameter("BUTTON_ID");

		// ボタンIDがEXITなら、結果画面に遷移する。
		if (buttonId != null && buttonId.equalsIgnoreCase("EXIT")) {
			// スコアデータを取得
			List<Player> players = (List<Player>) session.getAttribute("players");

			// ここで並び替え処理

			// 並び替えたデータをセッションに格納
			session.setAttribute("scoreboard", players);

			// 結果画面にリダイレクト
			res.sendRedirect("/suzume/result");
			return;
		}

		doGet(req, res);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();

		// セッションにプレイヤーデータがない場合、登録画面にリダイレクトさせる。
		if (session.getAttribute("players") == null) {
			res.sendRedirect("/suzume/register");
			return;
		}

		RequestDispatcher rd = req.getRequestDispatcher("Scoreboard.jsp");
		rd.forward(req, res);
	}

}
