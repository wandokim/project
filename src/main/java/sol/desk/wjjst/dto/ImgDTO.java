package sol.desk.wjjst.dto;

public class ImgDTO {
	private int b_no;
	private String image;
	
	public ImgDTO() {}

	public ImgDTO(int b_no, String image) {
		super();
		this.b_no = b_no;
		this.image = image;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
