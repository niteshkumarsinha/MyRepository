<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*"%>
    <%!
       
        Statement stmt1=null;
		ResultSet rs=null;
        String usr=null,passwd=null,sid=null,spw=null,sid1=null,spw1=null,ty=null;
		int flag;
     %>
     <%
        usr=request.getParameter("usrname");
        passwd=request.getParameter("password");
      %>
      
      <%
         try{
                HttpSession ses=request.getSession();
				ses.setAttribute("sid",usr);
				ses.setAttribute("spw",passwd);
				sid1=(String)ses.getAttribute("sid");
				spw1=(String)ses.getAttribute("spw");
				
				
stmt1=con.createStatement();
 rs=stmt1.executeQuery("select * from login");
			
              while(rs.next())
		      {
                String uid=rs.getString(1);
				String pwd=rs.getString(2);
                String ty=rs.getString(3);
			 if((usr.equals(uid))&&(passwd.equals(pwd))&&(ty.equalsIgnoreCase("Admin")))
				  {%>
				    <jsp:forward page="ahome.html"/>
				  <%}
			 else if((usr.equals(uid))&&(passwd.equals(pwd))&&(ty.equalsIgnoreCase("Student")))
					  {%>
                    <jsp:forward page="student home.html"/>
                  <%}
	         else if((usr.equals(uid))&&(passwd.equals(pwd))&&(ty.equalsIgnoreCase("Recuirter"))) 
                  { %>                                            
                        <jsp:forward page="recthome.html"/>
                  <%                
			        }
              }                 
			  	         
                 %>
				    
					<jsp:include page="ahome2.html"/>
                      			 
	       <%   
	       }
        catch(Exception e)
       {
          out.println(e);
       }
   
   %>































