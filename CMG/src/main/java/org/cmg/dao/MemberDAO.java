package org.cmg.dao;

import org.cmg.dto.MemberVO;

public interface MemberDAO {
	public void register(MemberVO memberVO) throws Exception;
}
