package jdbc;

public class feedDTO {
	private String no;
	private String id;
	private String content;
	private String ts;
	
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTs() {
		return ts;
	}
	public void setTs(String ts) {
		this.ts = ts;
	}
	
	public feedDTO(String no, String id, String content, String ts) {
		super();
		this.no = no;
		this.id = id;
		this.content = content;
		this.ts = ts;
	}
}
