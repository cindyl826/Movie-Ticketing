package com.zyp.dao.impl;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaseDao {

	public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/db_moview_ticket?useUnicode=true&characterEncoding=utf-8";

	static {
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	// Get Connection
	public Connection getConn() {
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(URL, "root", "root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

	// Close All
	public void releaseAll(ResultSet rs, PreparedStatement pstmt, Connection conn) {

		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// 增删改 封装
	public boolean operUpdate(String sql, List<Object> params) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int res = 0;

		// 获得与数据库的连接对象
		conn = getConn();

		try {

			pstmt = conn.prepareStatement(sql);

			if (params != null) {
				for (int i = 0; i < params.size(); i++) {

					pstmt.setObject(i + 1, params.get(i));

				}

			}
			// 增刪改的統一方法

			res = pstmt.executeUpdate();
			//返回的是sql在数据库中影响的行数
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			releaseAll(null, pstmt, conn);
		}

		return res > 0 ? true : false;

	}

	public <T> List<T> operQuery(String sql, List<Object> params, Class<T> cls) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<T> list = new ArrayList<T>();
		conn = getConn();

		try {
			pstmt = conn.prepareStatement(sql);

			if (params != null) {
				for (int i = 0; i < params.size(); i++) {

					pstmt.setObject(i + 1, params.get(i));

				}

			}
			// 增刪改的統一方法

			rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			while (rs.next()) {
				T m = cls.newInstance();

				for (int i = 0; i < rsmd.getColumnCount(); i++) {
					String col_name = rsmd.getColumnName(i + 1);

					Object value = rs.getObject(col_name);

					Field field;

					field = cls.getDeclaredField(col_name);

					field.setAccessible(true);
					field.set(m, value);
				}
				list.add(m);
			}
		}

		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			releaseAll(rs, pstmt, conn);
		}
		return list;

	}

}
