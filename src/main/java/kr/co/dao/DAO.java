package kr.co.dao;

import java.util.List;

import kr.co.vo.Criteria;
import kr.co.vo.SearchCriteria;
import kr.co.vo.VO;

public interface DAO {
	
	// Write post
	public void write(VO vo) throws Exception;
	
	// List
	public List<VO> list(SearchCriteria scri) throws Exception;
	
	// Total List
	public int listCount(SearchCriteria scri) throws Exception;
	
	// Post lookup
	public VO read(int bno) throws Exception;
	
	// Post modifying
	
	public void update(VO vo) throws Exception;
	
	// Post delete
	public void delete(int bno) throws Exception;
	
}
