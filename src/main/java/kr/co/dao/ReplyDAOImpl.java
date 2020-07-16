package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return sqlSession.selectList("replyMapper.readReply", bno);
	}

	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		sqlSession.insert("replyMapper.writeReply", vo);
	}

	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		sqlSession.update("replyMapper.updateReply", vo);
	}

	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		sqlSession.delete("replyMapper.deleteReply", vo);
	}

	@Override
	public ReplyVO selectReply(int bno) throws Exception {
		return sqlSession.selectOne("replyMapper.selectReply", bno);
	}

	
}
