 <%@ page contentType="text/html; charset=euc-kr" %>
 <% 
   try{
 if(session.getAttribute("memId")==null){
         response.sendRedirect("sessionMemberLogIn.jsp");}
   }catch(Exception e){ } 
%>
 <html>
 <head>
 <title>������ ����� ������ ȸ������</title>
 <link href="style.css" rel="stylesheet" type="text/css">
 </head>
 <body >
  <form method="post" action="sessionLogOut.jsp">
    <table width="300" border="1" align="center">
      <tr> 
         <td align="center"> 
           <b><%= session.getAttribute("memId") %></b>
                      ���� �α��� �ϼ̽��ϴ�. 
         </td>
  </tr>
  <tr>
 <td align="center">
   <input type="submit" value="�α׾ƿ�">
 </td>
      </tr>
    </table>
  </form>
 </body>
 </html>