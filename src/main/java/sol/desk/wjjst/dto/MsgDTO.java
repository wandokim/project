package sol.desk.wjjst.dto;

public class MsgDTO{
	private int m_no;
	private int send_user;
	private int rec_user;
	private String m_title;
	private String m_contents;
	private String write_date;
	private int m_read;
	
	public MsgDTO() {}

	public MsgDTO(int m_no, int send_user, int rec_user, String m_title, String m_contents, String write_date,
			int m_read) {
		super();
		this.m_no = m_no;
		this.send_user = send_user;
		this.rec_user = rec_user;
		this.m_title = m_title;
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

	public int getSend_user() {
		return send_user;
	}

	public void setSend_user(int send_user) {
		this.send_user = send_user;
	}

	public int getRec_user() {
		return rec_user;
	}

	public void setRec_user(int rec_user) {
		this.rec_user = rec_user;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
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
