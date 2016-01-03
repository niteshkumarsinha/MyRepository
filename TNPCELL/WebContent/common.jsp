<%@ page import="java.sql.*"%>
<%! 
     Connection con = null;
     Statement st = null,st1=null,st2=null,st3=null,st4=null;
%>
<%
Class.forName("com.ibm.db2.jcc.DB2Driver");
con=DriverManager.getConnection("jdbc:db2://localhost:50000/TNPCELL","ROSHAN","9905590278");

//Class.forName("com.mysql.jdbc.river");
//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TNPCELL","root","");
st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();
st4=con.createStatement();
%>