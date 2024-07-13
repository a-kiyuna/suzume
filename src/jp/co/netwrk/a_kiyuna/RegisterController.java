package jp.co.netwrk.a_kiyuna;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.netwrk.a_kiyuna.entity.Player;

@WebServlet("/register")
public class RegisterController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("PlayerRegister.jsp");
		rd.forward(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 文字コードを設定
		req.setCharacterEncoding("utf-8");

		// 登録されているプレイヤー
		List<Player> players = new ArrayList<>();
		for (int i = 1; i <= 4; i++) {
			// 入力内容保持用に設定
			String name = req.getParameter("player" + i);
			req.setAttribute("player" + i, name);

			// 名前が空白でないなら登録する
			if (name != null && !name.isEmpty()) {
				Player player = new Player(name, 0);

				players.add(player);
			}
		}

		// ３人未満ならエラーを設定し、同じページに移動
		// そもそも３人登録しないとボタンが押せないのでこのエラーが起こることはないが、念の為実装。
		if (players.size() < 3) {
			req.setAttribute("error", "プレイヤーを3人以上登録してください。");
			RequestDispatcher rd = req.getRequestDispatcher("PlayerRegister.jsp");
			rd.forward(req, res);
			return;
		}

		// スタートできる場合

		// セッションにデータを保管
		HttpSession session = req.getSession();
		session.setAttribute("players", players);

		// リダイレクト
		res.sendRedirect("/suzume/scoreboard");
	}

}
