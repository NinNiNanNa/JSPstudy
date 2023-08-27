package homework.regist;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class RegistDAO extends JDBConnect {

	public RegistDAO(ServletContext application) {
		super(application);
	}

	// 회원가입 메서드
	public int insertMember(RegistDTO dto) {
		int result = 0;
		
		try {
			// 쿼리문 생성
			String query = "INSERT INTO homwork_member "
						 + " VALUES "
						 + " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getMailing());
			psmt.setString(6, dto.getZipCode());
			psmt.setString(7, dto.getAddr1());
			psmt.setString(8, dto.getAddr2());
			psmt.setString(9, dto.getMobile());
			psmt.setString(10, dto.getSms());
			
			result = psmt.executeUpdate();
			
		}
		catch(Exception e) {
			System.out.println("회원가입 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	// 아이디 중복확인
	public boolean selectMember(String id) {
		try {
			String query = "SELECT * FROM homwork_member WHERE id=?";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				return false;
			}
		}
		catch(Exception e) {
			System.out.println("회원정보 확인 중 예외 발생");
			e.printStackTrace();
		}
		return true;
	}
	
}
