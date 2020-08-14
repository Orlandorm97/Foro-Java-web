package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import bd.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            String s_accion;
            String s_idusuario;
            String s_nombre;
            String s_correo;
            String s_usuario;
            String s_clave;
            String  s_error;
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\"><title>Proyecto AVI</title><link href=\"https://fonts.googleapis.com/css?family=Tajawal:400,500,700&display=swap\" rel=\"stylesheet\"><link href=\"https://fonts.googleapis.com/css?family=Lato:400,700&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/public/tiny-slider.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/public/main.ce4d4265.css\">\r\n");
      out.write("        <link rel=\"icon\" href=\"images/icon/favicon-32x321.png\">\r\n");
      out.write("        ");
      out.write(" \r\n");
      out.write("    </head>\r\n");
      out.write("    <body> \r\n");
      out.write("        ");

    try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                s_accion = request.getParameter("f_accion");
                s_idusuario = request.getParameter("f_idusuario");
                
      out.write("\r\n");
      out.write("                \r\n");
      out.write("        <main class=\"main\" id=\"inicio\"> \r\n");
      out.write("            <section class=\"heroimage\"> \r\n");
      out.write("                <div class=\"container\"> \r\n");
      out.write("                    <div class=\"heroimage__row\"> \r\n");
      out.write("                        <div class=\"heroimage__left\"> \r\n");
      out.write("                            \r\n");
      out.write("                                <h1 class=\"heroimage__left_title\"><b>\r\n");
      out.write("                                    Explora Comparte Aprende e Innova</b></h1> \r\n");
      out.write("                                <div class=\"heroimage__left_text\"> <p>Se parte de nuestra comunidad.</p> <p>No requiere descargar.</p> <p>Registrate ya.</p> </div> </div> \r\n");
      out.write("                                \r\n");
      out.write("                                <div class=\"heroimage__right\">\r\n");
      out.write("                                    <img class=\"background-logo__shape\" src=\"images/original.jpg\" alt=\"Background\"> \r\n");
      out.write("            \r\n");
      out.write("                                    <form id=\"signup-form\" class=\"signup-form\" action=\"valida.jsp\" method=\"POST\"> \r\n");
      out.write("                                    <h5 id=\"signup-form__title\" class=\"signup-form__title\">\r\n");
      out.write("                                                   \r\n");
      out.write("                                        <b>Bienvenido</b>\r\n");
      out.write("                                        nuevamente!\r\n");
      out.write("                                    </h5> \r\n");
      out.write("                                    <div class=\"signup-form__input\"> \r\n");
      out.write("                                        <input type=\"text\" name=\"f_usuario\" placeholder=\"tu usuario\" required> \r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"signup-form__input\"> \r\n");
      out.write("                                        <input type=\"password\" id=\"password\" name=\"f_clave\" placeholder=\"tu clave\" required> \r\n");
      out.write("                                    </div> \r\n");
      out.write("                         \r\n");
      out.write("                                    <input id=\"signup-form__button\" type=\"submit\" class=\"signup-form__button\" value=\"Iniciar Sesion\">\r\n");
      out.write("                                    <input type=\"hidden\" name=\"f_accion\" value=\"R\" size=\"15\" />\r\n");
      out.write("                                    <input type=\"hidden\" name=\"f_idusuario\" value=\"\" size=\"15\" />\r\n");
      out.write("                                    ");

                                        s_error = request.getParameter("f_error");
                                        if (s_error != null) {
                                            out.print(s_idusuario);
                                    
      out.write("\r\n");
      out.write("                                    <h5 id=\"signup-form__title\" class=\"signup-form__title\">\r\n");
      out.write("                                                   \r\n");
      out.write("                                        <b>Usuario y/o clave incorrecto</b>\r\n");
      out.write("                                        \r\n");
      out.write("                                    </h5> \r\n");
      out.write("                                    ");
 } 
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("                                    ");
 } catch (SQLException e) {
                                                System.out.println("Error: " + e.getMessage());
                                            }
                
      out.write("\r\n");
      out.write("                                    <div class=\"signup-form__background\"> \r\n");
      out.write("                                        <img class=\"signup_form__glow\" src=\"images/public/FormGlow.c67e2b75.svg\" alt=\"Form under glow\"> </div> </form>\r\n");
      out.write("                            \r\n");
      out.write("                            </div> \r\n");
      out.write("                    </div> \r\n");
      out.write("                </div> \r\n");
      out.write("            </section> \r\n");
      out.write("                <section class=\"projects-using\"> <img src=\"images/public/PurpleLeftGlow.3b0fe1bb.svg\" alt=\"Background purple glow\" class=\"projects-using__background\"> \r\n");
      out.write("                    \r\n");
      out.write("                                <div class=\"projects-using__title-wrapper\"> \r\n");
      out.write("                                    <h6 class=\"projects-using__title\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                                        Proyecto AVI</h6> \r\n");
      out.write("                                    <div class=\"dash purple\"></div> \r\n");
      out.write("                                </div> \r\n");
      out.write("                                <div class=\"projects-using__text\"> \r\n");
      out.write("                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                                        Somos un grupo de estudiantes a disposicion de la comunidad. </p> \r\n");
      out.write("                                </div> \r\n");
      out.write("                            \r\n");
      out.write("                </section> \r\n");
      out.write("                \r\n");
      out.write("                               \r\n");
      out.write("            </main> \r\n");
      out.write("\r\n");
      out.write("            <footer class=\"footer\"> \r\n");
      out.write("     <div class=\"container\"> <div class=\"footer__row\"> <img src=\"images/images/nombre.png\" alt=\"logo\" class=\"footer__logo\"> <div class=\"footer__content\"> <p class=\"copyright\">© 2020 Proyecto AVI</p> </div> </div> </div> \r\n");
      out.write("              </footer> \r\n");
      out.write("        \r\n");
      out.write("        <script src=\"js/public/main.d1eb4f8e.js\"></script>\r\n");
      out.write("        <script src=\"js/public/tiny-slider.js\"></script>\r\n");
      out.write("    </body>\r\n");
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
