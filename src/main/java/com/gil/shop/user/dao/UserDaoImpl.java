package com.gil.shop.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gil.shop.user.vo.UserVO;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SqlSessionTemplate sst;
	//회원가입
	@Override
	public void insertUser(UserVO vo) {
		// 패스워드 암호화저장
		try {
			    SHA256 sha = SHA256.getInsatnce();
				String shaPass;
				shaPass = sha.getSha256(vo.getPwd().getBytes());
				String bcPass = BCrypt.hashpw(shaPass, BCrypt.gensalt());
				vo.setP_sha256(shaPass);
				vo.setP_bcrypt(bcPass);
			} catch (Exception e) {
				e.printStackTrace();
			}
		// 쿼리문 실행 
		sst.insert("UserMapper.insertUser", vo);
	}
	
}
