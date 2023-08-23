package homework_membership;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class HomeworkMemberDAO extends JDBConnect {

	public HomeworkMemberDAO(ServletContext application) {
		super(application);
	}

	// 회원가입 메서드
	public int insertMember(HomworkMemberDTO dto) {
		int result = 0;
		try {
			// 쿼리문 생성
			String query = "INSERT INTO homwork_member "
						+ " (id, password, name, email, zipcode, addr1, addr2, mobile, regidate) "
						+ " VALUES "
						+ " (?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getZipCode());
			psmt.setString(6, dto.getAddr1());
			psmt.setString(7, dto.getAddr2());
			psmt.setString(8, dto.getMobile());
			
			result = psmt.executeUpdate();
			
		}
		catch(Exception e) {
			System.out.println("회원가입 중 예외 발생");
			e.printStackTrace();
		}
		return result;
		
	}
	
}
