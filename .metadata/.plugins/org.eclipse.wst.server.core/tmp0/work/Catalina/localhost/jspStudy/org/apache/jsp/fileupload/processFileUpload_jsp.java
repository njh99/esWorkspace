/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.97
 * Generated at: 2024-12-17 03:31:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.fileupload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.IOException;
import java.io.File;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileUpload;

public final class processFileUpload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(7);
    _jspx_imports_classes.add("org.apache.commons.fileupload.DiskFileUpload");
    _jspx_imports_classes.add("org.apache.commons.fileupload.FileItem");
    _jspx_imports_classes.add("java.io.IOException");
    _jspx_imports_classes.add("java.io.File");
    _jspx_imports_classes.add("org.apache.commons.fileupload.FileUpload");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

//1.사용자가 전송할때 form에 enctype="multipart/form-data"
request.setCharacterEncoding("UTF-8");	
if (FileUpload.isMultipartContent(request)) {
	//2. 임시파일지정
	String temporaryDir = "D:\\temp";
	//3. MultipartRequest(request, 위치, 사이즈, encode, 이름정책) 객체와 같은 역할
	DiskFileUpload fileUpload = new DiskFileUpload();
	//3.1 위치
	fileUpload.setRepositoryPath(temporaryDir);
	//3.2 (사이즈)최대 1메가까지 업로드 가능
	fileUpload.setSizeMax(1024 * 1024);
	//3.3 내부메모리에 들어올 사이즈  한번에 100K 까지는 메모리에 저장.
	fileUpload.setSizeThreshold(1024 * 100);
	/*4. Enumeration files = multiRequest.getFileNames();와 같은역할 FileItem의 리스트 */
	//4. (String) files.nextElement();와 비슷함
	java.util.List fileItemList = fileUpload.parseRequest(request);
	for (int i = 0; i < fileItemList.size(); i++) {
		//4.1 해당되는 파일정보
		FileItem fileItem = (FileItem) fileItemList.get(i);
		//4.2 폼파라미터 보내온 <input type="file">아닌것만 찾음
		if (fileItem.isFormField()) {// 파일 이외의 파라미터
		  out.println("폼 파라미터:"); 	
		  out.println(fileItem.getFieldName() +" = "+ fileItem.getString()+"<br>");
		} else { //  <input type="file">것만 찾음
			out.println("파일:"); 
			out.println(fileItem.getFieldName() 
					+" = "+ fileItem.getString()+"(" +fileItem.getSize() +"bytes) <br>");
			//메모리에 저장되있는 파일, 디스크에 저장되어있는 파일
			if (fileItem.isInMemory()) {
				out.println("메모리에 저장 <br>"); 
			} else {
				out.println("디스크에 저장 <br>"); 
			}
			//upload 위치를 알려준다.
			String filepath = application.getRealPath("upload");
			// 업로드한 파일이 사이즈가 있는지 체크
			if (fileItem.getSize() > 0) {
				// \\없으면 위치는 -1
				int idx = fileItem.getName().lastIndexOf("\\");
				if (idx == -1) {
					idx = fileItem.getName().lastIndexOf("/");
				}
				//썰어 orange.png
				String fileName = fileItem.getName().substring(idx + 1);
				try {
					//file String filepath = application.getRealPath("upload");
					//new File(upload/orange.png);
					File uploadedFile = new File(filepath, fileName);
					//d://temp/orange.png => /jspStudy/upload/orange.png
					fileItem.write(uploadedFile);
				} catch (IOException ex) {
				// 예외 처리
				}
			}// 업로드한 파일이 존재하는 경우
		}// 파일인 경우
	}//end of for
} else { //1.사용자가 전송할때 form에 enctype="multipart/form-data"
	out.println("인코딩 타입이 multipart/form-data가 아님.");
}

      out.write('\r');
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
