package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.Criteria;
import kr.co.vo.SearchCriteria;
import kr.co.vo.VO;

@Repository
public class DAOImpl implements DAO{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void write(VO vo) throws Exception{
		sqlSession.insert("boardMapper.insert", vo);
	}

	@Override
	public List<VO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("boardMapper.listPage", scri);
	}
	
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("boardMapper.listCount", scri);
	} 

	@Override
	public VO read(int bno) throws Exception {
		return sqlSession.selectOne("boardMapper.read", bno);
	}

	@Override
	public void update(VO vo) throws Exception {
		sqlSession.update("boardMapper.update", vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("boardMapper.delete", bno);
	}
}
