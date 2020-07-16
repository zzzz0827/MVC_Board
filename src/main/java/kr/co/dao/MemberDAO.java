package kr.co.dao;

import kr.co.vo.MemberVO;

public interface MemberDAO {
	
	// Register
	public void register(MemberVO vo) throws Exception;
	
	// login
	public MemberVO login(MemberVO vo) throws Exception;
	
	// Member information modifying
	public void memberUpdate(MemberVO vo) throws Exception;
}
