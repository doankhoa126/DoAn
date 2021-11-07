package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Member;

public class DAOMember {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
// CRUD Member
// Select
	public List<Member> getAllMember() {
		List<Member> list = new ArrayList<>();
		String query = "select * from Member";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Member(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8),rs.getString(9), rs.getString(10)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

// Insert
// Update
// Delete
}
