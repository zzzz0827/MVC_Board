package kr.co.service;

import java.util.List;

import kr.co.vo.Criteria;
import kr.co.vo.SearchCriteria;
import kr.co.vo.VO;

public interface Service {
	
	// write post
	public void write(VO vo) throws Exception;
	
	// list
	public List<VO> list(SearchCriteria scri) throws Exception;
	
	// Total list
	public int listCount(SearchCriteria scri) throws Exception;
	
	// post lookup
	public VO read(int bno) throws Exception;
	
	// post modifying
	public void update(VO vo) throws Exception;
	
	// post delete
	public void delete(int bno) throws Exception;
}
