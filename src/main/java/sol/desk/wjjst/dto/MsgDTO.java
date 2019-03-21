package sol.desk.wjjst.dto;

public class MsgDTO{
	private int m_no;
	private int user_no;
	private int rec_no;
	private String m_contents;
	private String write_date;
	private int m_read;
	
	public MsgDTO() {}

	public MsgDTO(int m_no, int user_no, int rec_no, String m_contents, String write_date, int m_read) {
		super();
		this.m_no = m_no;
		this.user_no = user_no;
		this.rec_no = rec_no;
		this.m_contents = m_contents;
		this.write_date = write_date;
		this.m_read = m_read;
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

	public String getM_contents() {
		return m_contents;
	}

	public void setM_contents(String m_contents) {
		this.m_contents = m_contents;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public int getM_read() {
		return m_read;
	}

	public void setM_read(int m_read) {
		this.m_read = m_read;
	}

	
	
}
