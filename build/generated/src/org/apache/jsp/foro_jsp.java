package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import bd.*;

public final class foro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            Connection cn1;
            PreparedStatement pst1;
            ResultSet rs1;
            String consulta1;
            String count;
            String s_accion;
            String s_idpublicacion;
            String s_curso, s_contenido, s_titulo, s_usuario;
        
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"icon\" href=\"images/icon/favicon-32x321.png\">        \n");
      out.write("        <link href=\"css/estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Publicaciones</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");

            try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                s_usuario = request.getParameter("f_usuario");


        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"title\">\n");
      out.write("            Bienvenido ");
 out.print(s_usuario);
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");


            consulta = "select idpublicacion, titulo, curso, contenido, idusuario from publicacion;";
            //out.print(consulta);
            pst = cn.prepareStatement(consulta);
            rs = pst.executeQuery();

            int num = 0;
            String idp, idu;
            while (rs.next()) {
                idp = rs.getString(1);
                idu = rs.getString(5);
                num += 1;
        
      out.write("\n");
      out.write("        <div class=\"box\">\n");
      out.write("            <form name=\"Ingreso de comentario\" action=\"comentario.jsp\" method=\"POST\">\n");
      out.write("                <table border=\"0\">\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td align=\"right\"><input type=\"submit\" value=\"Comentar\" name=\"f_comentar\" />\n");
      out.write("                                <input type=\"hidden\" name=\"f_idpublicacion\" value=\"");
 out.print(idp); 
      out.write("\" />\n");
      out.write("                                <input type=\"hidden\" name=\"f_idusuario\" value= \"");
out.print(rs.getString(5));
      out.write("\" />\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                            }

                            cn1 = bd.getConnection();
                            consulta1 = "select idusuario from usuario where usuario='" + s_usuario + "';";
                            //out.print(consulta1);
                            pst1 = cn1.prepareStatement(consulta1);
                            rs1 = pst1.executeQuery();
                            String idu1;
                            if (rs1.next()) {
                                idu1 = rs1.getString(1);
                        
      out.write("\n");
      out.write("                    <form action=\"Publicar.jsp\" name=\"Publicar\" method=\"POST\">         \n");
      out.write("                        <input type=\"submit\" value=\"Publicar nuevo tema\" name=\"f_agregar\">\n");
      out.write("                        <input type=\"hidden\" name=\"f_idusuario\" value=\"");
out.print(idu1);
      out.write("\" />\n");
      out.write("                    </form> \n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("        </div>           \n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
  }

            } catch (SQLException e) {
                System.out.println("Error: " + e.getMessage());
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
