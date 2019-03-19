package sol.desk.wjjst.dto;

public class ComDTO implements DTO{
	private int com_no;
	private int b_no;
	private String contents;
	private String c_date;
	
	public ComDTO() {}

	public ComDTO(int com_no, int b_no, String contents, String c_date) {
		super();
		this.com_no = com_no;
		this.b_no = b_no;
		this.contents = contents;
		this.c_date = c_date;
	}

	public int getCom_no() {
		return com_no;
	}

	public void setCom_no(int com_no) {
		this.com_no = com_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	
	
}
