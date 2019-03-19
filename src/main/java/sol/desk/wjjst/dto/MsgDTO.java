package sol.desk.wjjst.dto;

public class MsgDTO implements DTO{
	private int m_no;
	private int user_no;
	private int rec_no;
	private String contents;
	private String write_date;
	
	public MsgDTO() {}

	public MsgDTO(int m_no, int user_no, int rec_no, String contents, String write_date) {
		super();
		this.m_no = m_no;
		this.user_no = user_no;
		this.rec_no = rec_no;
		this.contents = contents;
		this.write_date = write_date;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getRec_no() {
		return rec_no;
	}

	public void setRec_no(int rec_no) {
		this.rec_no = rec_no;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
	
}
