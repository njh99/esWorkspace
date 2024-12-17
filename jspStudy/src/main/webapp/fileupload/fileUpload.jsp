
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%
String uploadPath = request.getRealPath("upload");
int size = 10 * 1024 * 1024;
String name = "";
String subject = "";
String filename1 = "";
String filename2 = "";
String origfilename1 = "";
String origfilename2 = "";
try {
	MultipartRequest multiRequest = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
	name = multiRequest.getParameter("name");
	subject = multiRequest.getParameter("subject");
	Enumeration files = multiRequest.getFileNames();
	String file1 = (String) files.nextElement();//String file1 = fileName2
	filename1 = multiRequest.getFilesystemName(file1);//서버에서 저장된 이름 DefaultFileRenamePolicy()
	origfilename1 = multiRequest.getOriginalFileName(file1);//orange.png(사용자가 작명한 이름)
	
	String file2 = (String) files.nextElement();
	filename2 = multiRequest.getFilesystemName(file2);//String file2 = fileName1
	origfilename2 = multiRequest.getOriginalFileName(file2);
} catch (Exception e) {
	e.printStackTrace();
}
%>
<html>
<body>
	<form name="filecheck" action="fileCheck.jsp" method="post">
		<input type="hidden" name="name" value="<%=name%>"> <input
			type="hidden" name="subject" value="<%=subject%>"> <input
			type="hidden" name="filename1" value="<%=filename1%>"> <input
			type="hidden" name="filename2" value="<%=filename2%>"> <input
			type="hidden" name="origfilename1" value="<%=origfilename1%>">
		<input type="hidden" name="origfilename2" value="<%=origfilename2%>">

	</form>
	<a href="#" onclick="javascript:filecheck.submit()"> 업로드 확인 및 다운로드
		페이지 이동</a>
</body>
</html>