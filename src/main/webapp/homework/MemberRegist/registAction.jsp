<%@page import="homework_membership.HomeworkMemberDAO"%>
<%@page import="utils.JSFunction"%>
<%@page import="homework_membership.HomworkMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 회원가입폼에서 전송한 폼값 받기
	String id = request.getParameter("id");
	String pass = request.getParameter("pass1");
	String name = request.getParameter("name");
	String email = request.getParameter("email1")+"@"
		  +request.getParameter("email2");
	String zipCode = request.getParameter("zipcode");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String mobile = request.getParameter("mobile1")+"-"
		   +request.getParameter("mobile2")+"-"
		   +request.getParameter("mobile3");
	
	// 받은 폼값을 DTO객체에 저장
	HomworkMemberDTO dto = new HomworkMemberDTO();
	dto.setId(id);
	dto.setPass(pass);
	dto.setName(name);
	dto.setEmail(email);
	dto.setZipCode(zipCode);
	dto.setAddr1(addr1);
	dto.setAddr2(addr2);
	dto.setMobile(mobile);
	
	// DB에 연결하기 위해 DAO객체 생성
	HomeworkMemberDAO dao = new HomeworkMemberDAO(application);
	
	// 받은 폼값이 저장된 DTO객체를 인수로 전달해 insert쿼리문 실행
	int iResult = dao.insertMember(dto);
	
	// 자원해제
	dao.close();
	
	if ( iResult == 1 ){	// 회원가입에 성공한 경우 회원가입정보로 이동
		out.println("성공");
		JSFunction.alertLocation("회원가입성공", "registResult.jsp", out);
	}
	else {					// 회원가입에 실패한 경우 회원가입으로 다시 돌아감
		out.println("실패");
		JSFunction.alertBack("회원가입에 실패했습니다.", out);
	}
%>