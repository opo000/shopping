package db.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.dto.GoodsDto;

public class GoodsManager {

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
	
	public static List<GoodsDto> getSelectedList(List itemList){
		
		List list = itemList;
		
		List<GoodsDto> result = null;
		SqlSession session = sqlMapper.openSession();
		result = session.selectList("getSelectedList", list);
		return result;
	}
}