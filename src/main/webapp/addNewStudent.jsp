<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String surname=request.getParameter("surname");
String firstName=request.getParameter("firstName");
String studentNo=request.getParameter("studentNo");
String gender=request.getParameter("gender");
String StudentEmail=request.getParameter("StudentEmail");
String course=request.getParameter("course");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student values('"+surname+"','"+firstName+"','"+studentNo+"','"+gender+"','"+StudentEmail+"','"+course+"' )");
	response.sendRedirect("adminHome.jsp");
}
catch (Exception e)
{
	out.println(e);
	}
%>