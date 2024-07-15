package jp.co.netwrk.a_kiyuna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/result")
public class ResultController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// ボタンIDを取得
		String buttonId = req.getParameter("BUTTON_ID");

		// ボタンIDがHOMEなら、登録画面に戻る。
		if (buttonId != null && buttonId.equalsIgnoreCase("HOME")) {
			RequestDispatcher rd = req.getRequestDispatcher("PlayerRegister.jsp");
			rd.forward(req, res);
			return;
		}

		doGet(req, res);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();

		// セッションにプレイヤーデータがない場合、登録画面にリダイレクトさせる。
		if (session.getAttribute("scoreboard") == null) {
			res.sendRedirect("/suzume/register");
			return;
		}

		RequestDispatcher rd = req.getRequestDispatcher("Result.jsp");
		rd.forward(req, res);
	}

}
