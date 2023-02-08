package jdbc;

import java.sql.*;
import java.util.ArrayList;
import javax.naming.NamingException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import util.ConnectionPool;

public class feedDAO {

	
	//회원 가입시 아이디가 이미 존재하는 지 여부 확인
	public static boolean insert(String id,String content) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO feed(id,content) VALUES(?,?)";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, content);

				
			return (pstmt.executeUpdate() == 1) ? true : false;  //성공했으면 1, 실패했으면 0
			
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	

	//전체 목록 꺼내기(관리자용)
	public static ArrayList<feedDTO> getallList() throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM feed ORDER BY ts DESC";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); 
			
			ArrayList<feedDTO> feeds = new ArrayList<feedDTO>();
			
			while(rs.next()) {
				feeds.add(new feedDTO(rs.getString(1),
									  rs.getString(2),
									  rs.getString(3),
									  rs.getString(4)));

			}return feeds;
			
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}

	//전체 목록 꺼내기
	public static ArrayList<feedDTO> getList(String id) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM feed WHERE id = ? ORDER BY ts DESC";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			
				 pstmt.setString(1, id);
			rs = pstmt.executeQuery(); 
				 
			
			ArrayList<feedDTO> feeds = new ArrayList<feedDTO>();
			
			while(rs.next()) {
				feeds.add(new feedDTO(rs.getString(1),
									  rs.getString(2),
									  rs.getString(3),
									  rs.getString(4)));

			}return feeds;
			
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	
	//ajax 전체 목록 꺼내기
		public static String getListAJAX() throws NamingException, SQLException {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				String sql = "SELECT * FROM feed ORDER BY ts DESC";
				
				conn = ConnectionPool.get();
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery(); 
					 
				JSONArray feeds = new JSONArray();
				
				while(rs.next()) {
					JSONObject obj = new JSONObject();
					obj.put("no", rs.getString(1));
					obj.put("id", rs.getString(2));
					obj.put("content", rs.getString(3));
					obj.put("ts", rs.getString(4));
					
					feeds.add(obj);
				
				}return feeds.toJSONString(); //feeds가 JSONArray로 받기 때문에 string로 바꿔주는것
				
			}finally {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
		}
		

}