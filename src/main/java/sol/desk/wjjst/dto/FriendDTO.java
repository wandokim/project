package sol.desk.wjjst.dto;

public class FriendDTO{
	private int f_no;
	private int user_no;
	private int friend_no;
	private String f_date;
	
	public FriendDTO() {}

	public FriendDTO(int f_no, int user_no, int friend_no, String f_date) {
		super();
		this.f_no = f_no;
		this.user_no = user_no;
		this.friend_no = friend_no;
		this.f_date = f_date;
	}

	public int getF_no() {
		return f_no;
	}

	public void setF_no(int f_no) {
		this.f_no = f_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getFriend_no() {
		return friend_no;
	}

	public void setFriend_no(int friend_no) {
		this.friend_no = friend_no;
	}

	public String getF_date() {
		return f_date;
	}

	public void setF_date(String f_date) {
		this.f_date = f_date;
	}
	
	
}
