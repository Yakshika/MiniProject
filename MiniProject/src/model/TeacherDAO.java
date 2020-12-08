package model;

import java.sql.PreparedStatement;
import java.sql.SQLException;


import db.Admins;
import db.MyDBConnection;

public class TeacherDAO {
MyDBConnection db=new MyDBConnection();
	
	public void save(Admins a) {
		PreparedStatement ps=db.getPreparedStatement("insert into admintable values(?,?)");
		try {
		ps.setString(1, a.getUsername());
		ps.setString(2,a.getPassword());
		
			ps.execute();
			
			db.closeConnection();
		}catch (SQLException e1) {
			e1.printStackTrace();
			
		}
		
	}

}
