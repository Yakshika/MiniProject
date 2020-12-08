package model;

import java.sql.PreparedStatement;
import db.MyDBConnection;
import db.Students;

import java.sql.SQLException;



public class StudentDAO {
	
MyDBConnection db=new MyDBConnection();
	
	public void save(Students s) {
		PreparedStatement ps=db.getPreparedStatement("insert into studenttable values(?,?,?)");
		try {
		ps.setString(1, s.getUsername());
		ps.setString(2,s.getPassword());
		ps.setString(3,s.getName());
		
			ps.execute();
			
			db.closeConnection();
		}catch (SQLException e1) {
			e1.printStackTrace();
			
		}
		
	}

}
