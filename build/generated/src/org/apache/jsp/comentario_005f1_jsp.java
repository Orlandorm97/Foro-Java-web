package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import bd.*;

public final class comentario_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            String consulta1;
            Connection cn1;
            PreparedStatement pst1;
            ResultSet rs1;
            String consulta2;
            Connection cn2;
            PreparedStatement pst2;
            ResultSet rs2;
            String count;
            String s_accion;
            String s_comentario;
            String s_idpublicacion;
            String s_idusuario;
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
      out.write("        <title>Comentar</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div align=\"center\">\n");
      out.write("        ");

                try {
                    ConectaBd bd = new ConectaBd();
                    cn = bd.getConnection();
                    
                    
                    s_idusuario = request.getParameter("f_idusuario");
                    s_idpublicacion = request.getParameter("f_idpublicacion");
                    
                    consulta = "select * from publicacion where idpublicacion="+s_idpublicacion+";";
                    //out.print(consulta);
                    pst = cn.prepareStatement(consulta);
                    rs = pst.executeQuery();
                    //out.print(s_idpublicacion);
            
      out.write("\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("            <form name=\"f_agregar\" action=\"comentario_1.jsp\" method=\"POST\">\n");
      out.write("           ");

             int num = 0;
             String idp;
             if (rs.next()) {
           
           
      out.write("\n");
      out.write("           <div class=\"box\" align=\"left\">\n");
      out.write("                <table border=\"0\">\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("                        \n");
      out.write("                ");

                    }

                    cn1 = bd.getConnection();
                    consulta1 = "select usuario.nombre, comentarios.comentario, CURDATE() from usuario, comentarios where comentarios.idusuario = usuario.idusuario AND idpublicacion= "+s_idpublicacion+" ORDER BY CURDATE();";
                    //out.print(consulta1);
                    pst1 = cn1.prepareStatement(consulta1);
                    rs1 = pst1.executeQuery();
                    
                    while (rs1.next()) {
                
      out.write("\n");
      out.write("                \n");
      out.write("                <table border=\"0\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>");
out.print(rs1.getString(1));
      out.write("</th>\n");
      out.write("                            <td>");
out.print(rs1.getString(3));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\">");
out.print(rs1.getString(2));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("                \n");
      out.write("            \n");
      out.write("                <table >\n");
      out.write("                        <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                   <td><textarea placeholder=\"Comentario\"\n");
      out.write("                                       name=\"f_comentario\" maxLength=\"240\" style=\"height: 150px; width: 300px;\"></textarea></td>\n");
      out.write("                                </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                </table>         \n");
      out.write("                <input type=\"submit\" value=\"Comentar\" name=\"f_agregar\">\n");
      out.write("                <input type=\"hidden\" name=\"f_accion\" value=\"com\" />\n");
      out.write("                 \n");
      out.write("             </form>\n");
      out.write("                \n");
      out.write("        ");

            s_accion = request.getParameter("f_accion");
            out.print(s_accion);
            cn2 = bd.getConnection();
            if (s_accion!=null){
            if (s_accion=="com"){
                out.print("Entró al if");
                s_comentario = request.getParameter("f_comentario");
                //out.print("Accion: " + s_accion+"-----");
                s_idpublicacion = request.getParameter("f_idpublicacion");

                consulta2 = " insert into comentarios (comentario, fecha, idpublicacion, idusuario) values ('" + s_comentario + "', CURDATE(), " + "' , '" + s_idpublicacion+ "' , '" + s_idusuario + "';)";
                //out.print(consulta);
                pst2 = cn2.prepareStatement(consulta2);
                pst2.executeUpdate();
            }
            }               
                } catch (SQLException e) {
                    System.out.println("Error: " + e.getMessage());
                }
            
      out.write("\n");
      out.write("        </div>\n");
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
