package sol.desk.wjjst;

public class RankVO {
	private String name;
	private int lp;
	private int win;
	private int lose;
	public RankVO(String name, int lp, int win, int lose) {
		super();
		this.name = name;
		this.lp = lp;
		this.win = win;
		this.lose = lose;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLp() {
		return lp;
	}
	public void setLp(int lp) {
		this.lp = lp;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	public int getLose() {
		return lose;
	}
	public void setLose(int lose) {
		this.lose = lose;
	}
	
	
}
