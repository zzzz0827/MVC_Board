package kr.co.dao;

import java.util.List;

import kr.co.vo.ReplyVO;

public interface ReplyDAO {
	
	// Reply lookup
	public List<ReplyVO> readReply(int bno) throws Exception;
	
	// Reply write
	public void writeReply(ReplyVO vo) throws Exception;
	
	// Reply modifying
	public void updateReply(ReplyVO vo) throws Exception;
	
	// Reply delete
	public void deleteReply(ReplyVO vo) throws Exception;
	
	// Selected-reply lookup
	public ReplyVO selectReply(int bno) throws Exception;

}
