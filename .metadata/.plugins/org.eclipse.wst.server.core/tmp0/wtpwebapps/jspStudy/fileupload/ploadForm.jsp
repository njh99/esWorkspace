
<%@ page contentType="text/html; charset=euc-kr"%>
<html>
<head>
<title>���� ���ε� ��</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
<main>
	<form action="processFileUpload.jsp" method="post"
		enctype="multipart/form-data">
		����1: <input type="file" name="file1"><br> 
		����2: <input type="file" name="file2"><br> 
		����2: <input type="file" name="file3"><br> 
		�Ķ����1: <input type="text" name="param1"><br> 
		�Ķ����2: <input type="text" name="param2"><br> 
		�Ķ����3: <input type="text" name="param3"><br> 
		<input type="submit" value="����">
	</form>
	</main>
</body>
</html>