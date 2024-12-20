<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${3>4}">
	<p>화면에 나타나지 않음 \${3>4}</p>
	</c:if>
<c:if test="${3<4}">
	<p>화면에 나타납니다. \${3<4}</p>
	</c:if>
<c:if test="${param.type eq 'gest'}">
	<p>guest 저희 사이트에 방문해주셔서 감사합니다.</p>
	</c:if>
<c:if test="${param.type eq 'member'}">
	<p>member 저희 사이트에 방문해주셔서 감사합니다.</p>
	</c:if>

</body>
</html>