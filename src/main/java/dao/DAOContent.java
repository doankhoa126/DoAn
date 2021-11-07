package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.DBConnection;

import java.util.ArrayList;
import java.util.List;

import model.Content;

public class DAOContent {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

// CRUD Content
// Select
	public List<Content> getAllContent() {
		List<Content> list = new ArrayList<>();
		String query = "select * from Content";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

// Insert
// Update
// Delete
	public Content deleteContent(String id) {
		String query = "Delete from Content where id = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

}