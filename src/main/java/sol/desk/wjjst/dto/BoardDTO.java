package sol.desk.wjjst.dto;

public class BoardDTO implements DTO{
	private int b_no;
	private int user_no;
	private String title;
	private String write_date;
	private String writer;
	private String contents;
	private int like;
	private int hits;
	
	BoardDTO(){}

	public BoardDTO(int b_no, int user_no, String title, String write_date, String writer, String contents, int like,
			int hits) {
		super();
		this.b_no = b_no;
		this.user_no = user_no;
		this.title = title;
		this.write_date = write_date;
		this.writer = writer;
		this.contents = contents;
		this.like = like;
		this.hits = hits;
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

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}
	
	
	
}
