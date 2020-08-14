package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import bd.*;

public final class valida_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

             
            String consulta; 
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            String idp;
            String s_usuario, s_clave;
            String count;
            String s_dni;
            String resultado;
            String s_codigo;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        ");

            
            try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                
                s_usuario = request.getParameter("f_usuario");
                s_clave = request.getParameter("f_clave");
                s_dni = request.getParameter("f_dni");
                
                if(s_usuario != null){
                    consulta = "select count(usuario and clave) from usuario where usuario='"+s_usuario+"' and clave='"+ s_clave+"';";
                 out.print(consulta);
                 pst = cn.prepareStatement(consulta);
                rs = pst.executeQuery();
                count="";
                if (rs.next()) {
                    count = rs.getString(1);
                }
                
                rs.close();
                pst.close();
                cn.close();
                if(count.equals("1")){
                    response.sendRedirect("foro.jsp?f_usuario="+s_usuario);
                }
                else if(count.equals("0")) {
                        response.sendRedirect("login.jsp?f_error=1");
                    }
                }
            }
            
            catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }
            
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
