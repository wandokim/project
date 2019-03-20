package sol.desk.wjjst.dto;

public class PwDTO{
	private int user_no;
	private String password;
	
	public PwDTO() {}

	public PwDTO(int user_no, String password) {
		super();
		this.user_no = user_no;
		this.password = password;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
