package jp.co.netwrk.a_kiyuna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/scoreboard")
public class ScoreboardController extends HttpServlet {

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
