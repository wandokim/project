package sol.desk.wjjst.dto;

public class UserDTO {
	private int user_no;
	private String nicname;
	private String id;
	private String email;
	private String join_date;
	private int rout;
	
	
	public UserDTO() {}
	
	
	public UserDTO(int user_no, String nicname, String id, String email, String join_date, int rout) {
		super();
		this.user_no = user_no;
		this.nicname = nicname;
		this.id = id;
		this.email = email;
		this.join_date = join_date;
		this.rout = rout;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getNicname() {
		return nicname;
	}
	public void setNicname(String nicname) {
		this.nicname = nicname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public int getRout() {
		return rout;
	}
	public void setRout(int rout) {
		this.rout = rout;
	}
	
	
}
