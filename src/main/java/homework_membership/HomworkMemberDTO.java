package homework_membership;

public class HomworkMemberDTO {

	// 멤버변수
	private String id;				// 아이디
	private String pass;			// 비밀번호
	private String name;			// 이름
	private String email;			// 이메일
	private String zipCode;			// 우편번호
	private String addr1;			// 주소
	private String addr2;			// 상세주소
	private String mobile;			// 휴대전화 앞부분
	private java.sql.Date regidate;	// 가입일
	
	
	// getter, setter
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	
	public String getPass() { return pass; }
	public void setPass(String pass) { this.pass = pass; }
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getZipCode() { return zipCode; }
	public void setZipCode(String zipCode) { this.zipCode = zipCode; }
	
	public String getAddr1() { return addr1; }
	public void setAddr1(String addr1) { this.addr1 = addr1; }
	
	public String getAddr2() { return addr2; }
	public void setAddr2(String addr2) { this.addr2 = addr2; }
	
	public String getMobile() { return mobile; }
	public void setMobile(String mobile) { this.mobile = mobile; }
	
	public java.sql.Date getRegidate() { return regidate; }
	public void setRegidate(java.sql.Date regidate) { this.regidate = regidate; }
	
}
