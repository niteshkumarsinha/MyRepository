
<%@ page import="java.sql.*"%>
<%! Connection con=null;
    PreparedStatement pst;
    ResultSet rs=null;
	ResultSetMetaData rsmd=null;
    Statement stmt;
%>
<%
try

{

	Class.forName("com.ibm.db2.jcc.DB2Driver");
	con=DriverManager.getConnection("jdbc:db2://localhost:50000/TNPCELL","ROSHAN","9905590278" );
 stmt=con.createStatement();

}
catch(Exception e)
{
out.println("cannot create");
}
%>
































