<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자정보를 가져온다  -->
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String address = request.getParameter("address");
//체크박스에서 체크한것만 가져온다. 4개에서 2개를 체크한다. String[] 사이즌 2개다.
String[] values = request.getParameterValues("pet");
Enumeration enumData = request.getParameterNames();

System.out.println("name = "+name);
System.out.println("address = "+address);
for(int i = 0 ;i<values.length;i++){
	System.out.println("values["+i+"] = "+values[i]);
	
}

while(enumData.hasMoreElements()){
		String enumName = (String)enumData.nextElement();
		System.out.println("enumName ="+enumName);
		
}


Map parameterMap = request.getParameterMap();

String[] nameParam = (String[])parameterMap.get("pet");
System.out.println("name ="+nameParam[1]);


%>
<!-- 2. CURD -->
<!-- 3. 화면설계(자바코드(x) -> jsp service 진행) -->
