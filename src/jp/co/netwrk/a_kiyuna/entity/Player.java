package jp.co.netwrk.a_kiyuna.entity;

public class Player {

	/**
	 * プレイヤー名
	 */
	private String name;

	/**
	 * スコア
	 */
	private int score;

	/**
	 * コンストラクタ
	 */
	public Player(String name, int score) {
		this.name = name;
		this.score = score;
	}

	/**
	 * プレイヤー名を取得
	 * 
	 * @return プレイヤー名
	 */
	public String getName() {
		return name;
	}

	/**
	 * スコアを取得
	 * 
	 * @return スコア
	 */
	public int getScore() {
		return score;
	}

	/**
	 * スコアを設定
	 * 
	 * @param score 新しいスコア
	 */
	public void setScore(int score) {
		this.score = score;
	}

}
