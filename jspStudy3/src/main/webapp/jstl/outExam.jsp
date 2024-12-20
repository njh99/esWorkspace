<%@page import="java.io.FileReader"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	FileReader fr = null;
	String path = request.getParameter("path"); //http://~~~outExam.jsp?path=/jstl/setExam.jsp
	try{
		fr = new FileReader(getServletContext().getRealPath(path));
%>	
	<p>소스코드</p>
	<pre>
	<c:out value="<%= fr %>" escapeXml="true"></c:out>
	</pre>
<%		
	}	catch(Exception e){
		e.printStackTrace();
		
	}finally{
		if(fr != null){
			try{
				
			fr.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>