package db.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.dto.UserDto;

public class UserManager {
	
	private static SqlSessionFactory sqlMapper;
	
	static{
		try{
			Reader reader = Resources.getResourceAsReader("db/mybatis/SqlMapConfig.xml");
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch(IOException e){
			throw new RuntimeException("Something bad happened while building the SqlMapClient instant");
		}
	}

	public static String chkId(String id){
		
		String result = null;
		SqlSession session = sqlMapper.openSession();
		result = (String) session.selectOne("chkId", id);
		
		return result;
	}	
	
	public static void registerUser(UserDto user){
		SqlSession session  = sqlMapper.openSession();
		session.insert("registerUser", user);
		session.commit();
	}
	
}
