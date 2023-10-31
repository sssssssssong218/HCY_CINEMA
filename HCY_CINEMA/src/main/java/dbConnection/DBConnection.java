package dbConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnection {
private static DBConnection db;

private DBConnection() {
}//constructor

public static DBConnection getInstance() {
	if(db==null) {
		db=new DBConnection();
	}//if
	return db;
}//getInstance

public Connection getCon() throws SQLException {
	Connection con = null;
	try {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/hcydb");
		con=ds.getConnection();
	} catch (NamingException e) {
		e.printStackTrace();
	}//catch
 
	
	return con;
}//getCon
public void dbClose(ResultSet rs, Statement stmt, Connection con) throws SQLException {
	if(rs!=null) {rs.close();}
	if(stmt!=null) {stmt.close();}
	if(con!=null) {con.close();}
}
}//class