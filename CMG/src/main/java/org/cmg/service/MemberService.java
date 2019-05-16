package org.cmg.service;

import org.cmg.dto.MemberVO;
import org.springframework.stereotype.Service;

@Service
public interface MemberService {
	public void register(MemberVO memberVO) throws Exception;
}
