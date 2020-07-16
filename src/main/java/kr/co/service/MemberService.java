package kr.co.service;

import kr.co.vo.MemberVO;

public interface MemberService {
	
	// Register
	public void register(MemberVO vo) throws Exception;
	
	// login
	public MemberVO login(MemberVO vo) throws Exception;
	
	// Member information modifying
	public void memberUpdate(MemberVO vo) throws Exception;
}
