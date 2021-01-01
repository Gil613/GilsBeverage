package com.gil.shop.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gil.shop.user.vo.UserVO;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SqlSessionTemplate sst;
	// 회원가입
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
	// 로그인구현
	@Override
	public String loginUser(UserVO vo) {
		// 암호화된 비밀번호 확인
		String log = "";
		try {
		    	SHA256 sha = SHA256.getInsatnce();
		    	String orgPass = vo.getPwd();
		    	String shaPass = sha.getSha256(orgPass.getBytes());
				UserVO temp = sst.selectOne("UserMapper.loginUser", vo);
				if(temp.getP_bcrypt()!= null ) {
					if(BCrypt.checkpw(shaPass,temp.getP_bcrypt())) {
			        //  오리지날 암호와  pwd2 를 비교해준다. !!	
						log = "success";  
			            System.out.println("성공");
			        } else {
			            log = "fail";   
			            System.out.println("암호 실패");
			        }
			    }				
		} catch (Exception e) {
			log = "fail"; 
			System.out.println("실패");
		}
		return log;
	}
	// 회원정보수정
	@Override
	public UserVO editUser(UserVO vo) {
		return sst.selectOne("UserMapper.editUser", vo);
	}
	
}
