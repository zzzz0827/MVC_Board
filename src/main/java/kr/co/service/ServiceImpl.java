package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.DAO;
import kr.co.vo.Criteria;
import kr.co.vo.SearchCriteria;
import kr.co.vo.VO;

@Service
public class ServiceImpl implements kr.co.service.Service{

	@Inject
	private DAO dao;
	
	@Override
	public void write(VO vo) throws Exception {
		dao.write(vo);
	}

	@Override
	public List<VO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
	
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	@Override
	public VO read(int bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void update(VO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
}
