package sol.desk.wjjst.dto;

public class CommentsDTO{
	private int com_no;
	private int b_no;
	private String c_contents;
	private String c_date;
	
	public CommentsDTO() {}

	public CommentsDTO(int com_no, int b_no, String c_contents, String c_date) {
		super();
		this.com_no = com_no;
		this.b_no = b_no;
		this.c_contents =c_contents;
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

	public String getC_contents() {
		return c_contents;
	}

	public void setC_contents(String c_contents) {
		this.c_contents = c_contents;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	
	
}
