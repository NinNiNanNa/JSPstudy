<%@page import="utils.JSFunction"%>
<%@page import="homework.regist.RegistDAO"%>
<%@page import="homework.regist.RegistDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 회원가입폼에서 전송한 폼값 받기
	String id = request.getParameter("id");
	String pass = request.getParameter("pass1");
	String name = request.getParameter("name");
	String email = request.getParameter("email1") +"@"
		  		 + request.getParameter("email2");
	String mailing = request.getParameter("mailing");
	String zipCode = request.getParameter("zipcode");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String mobile = request.getParameter("mobile1") +"-"
		   		  + request.getParameter("mobile2") +"-"
		   		  + request.getParameter("mobile3");
	String sms = request.getParameter("sms");
	
	// 받은 폼값을 DTO객체에 저장
	RegistDTO dto = new RegistDTO();
	dto.setId(id);
	dto.setPass(pass);
	dto.setName(name);
	dto.setEmail(email);
	dto.setMailing(mailing);
	dto.setZipCode(zipCode);
	dto.setAddr1(addr1);
	dto.setAddr2(addr2);
	dto.setMobile(mobile);
	dto.setSms(sms);
	
	// DB에 연결하기 위해 DAO객체 생성
	RegistDAO dao = new RegistDAO(application);
	
	// 받은 폼값이 저장된 DTO객체를 인수로 전달해 insert쿼리문 실행
	int isResult = dao.insertMember(dto);
	
	// 자원해제
	dao.close();
	
	if ( isResult == 1 ){	// 회원가입에 성공한 경우 회원가입정보로 이동
		out.println("회원가입에 성공했습니다.");
	}
	else {					// 회원가입에 실패한 경우 회원가입으로 다시 돌아감
		out.println("회원가입에 실패했습니다.");
	}
%>