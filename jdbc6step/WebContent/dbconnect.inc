
<%
// 2 load JDBC Driver
	try{
		Class.forName("com.mysql.jdbc.Driver");
	}catch(ClassNotFoundException err){
	    out.print("JDBC Driver loading error<br>"+ err.getMessage());		
	}
	// com.mysql.jdbc.Driver mySQL용

// 3 create Connection Object
	Connection conn = null;

	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "0000");
	}catch(SQLException err){
	    out.print("JDBC Driver loading error<br>"+ err.getMessage());		
	}
%>