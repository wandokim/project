package sol.desk.wjjst.dto;

public class BoardDTO{
	private int b_no;
	private int user_no;
	private String title;
	private String write_date;
	private String writer;
	private String b_contents;
	private int b_like;
	private int b_hits;
	
	BoardDTO(){}

	public BoardDTO(int b_no, int user_no, String title, String write_date, String writer, String contents, int like,
			int hits) {
		super();
		this.b_no = b_no;
		this.user_no = user_no;
		this.title = title;
		this.write_date = write_date;
		this.writer = writer;
		this.b_contents = b_contents;
		this.b_like = b_like;
		this.b_hits = b_hits;
	}
	
	public BoardDTO(String title,String writer, String b_contents, int b_like,
			int b_hits) {
		super();
		this.title = title;
		this.writer = writer;
		this.b_contents = b_contents;
		this.b_like = b_like;
		this.b_hits = b_hits;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getb_Contents() {
		return b_contents;
	}

	public void setb_Contents(String b_contents) {
		this.b_contents = b_contents;
	}

	public int getb_Like() {
		return b_like;
	}

	public void setb_Like(int b_like) {
		this.b_like = b_like;
	}

	public int getb_Hits() {
		return b_hits;
	}

	public void setb_Hits(int b_hits) {
		this.b_hits = b_hits;
	}
	
	
	
}
