package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import Foro.Forod;
import Foro.Foro;
import java.util.ArrayList;

public final class forum_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t<title>Proyecto AVI</title>\n");
      out.write("\t<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/icon/favicon-32x321.png\">\n");
      out.write("\t<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/icon/favicon-32x321.png\" sizes=\"32x32\">\n");
      out.write("\t<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/icon/favicon-32x321.png\" sizes=\"16x16\">\n");
      out.write("        <link href=\"css/bundle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        \n");
      out.write("</head>\n");
      out.write("<body style=\"background-color: #071821\">\n");
      out.write("    <div class=\"wrapper\">\n");
      out.write("\t");

		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	
      out.write("\n");
      out.write("<header class=\"header navbar navbar-expand-md header--alt header--alternative\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"collapse navbar-collapse align-items-center row\" id=\"navbarSupportedContent\">\n");
      out.write("\t\t\t<div class=\"col-sm-3\">\n");
      out.write("\t\t\t\t<a href=\"portal.jsp\" class=\"logo-small-dark navbar-brand mr-auto d-md-none d-lg-none d-xl-none\"></a>\n");
      out.write("\t\t\t\t<a href=\"portal.jsp\" class=\"logo navbar-brand mr-auto d-lg-inline-block d-xl-inline-block hidden-xs\"></a>\n");
      out.write("\t\t\t</div><!-- /.col-sm-3 -->\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"col-sm-6\">\n");
      out.write("\t\t\t\t<ul class=\"navbar-nav justify-content-sm-around\">\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"portal.jsp\">Inicio</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"login.jsp\">Expresate</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div><!-- /.col-sm-6 -->\n");
      out.write("                \n");
      out.write("\t\t\t");

				if (userID == null) {
			
      out.write("\n");
      out.write("                        <div class=\"col-sm-3\"> \n");
      out.write("\t\t\t<ul class=\"nav navbar-nav navbar-right \">\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-right \">\n");
      out.write("\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"login.jsp\">Ingresar</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"registro.jsp\"><em>Registrarse</em></a></li>\n");
      out.write("                                </li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</ul>\n");
      out.write("                        </div>\n");
      out.write("\t\t\t");

				} else {
			
      out.write("\n");
      out.write("                \n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right \">\n");
      out.write("\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\"\n");
      out.write("\t\t\t\t\tdata-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\">Info<span\n");
      out.write("\t\t\t\t\t\tclass=\"caret\"></span></a>\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"portal.jsp\"><em>Sign Out</em></a></li>\n");
      out.write("\t\t\t\t\t</ul></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t");

				}
			
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        </div><!-- /.container -->\n");
      out.write("\t\t</header>\n");
      out.write("                        \n");
      out.write("                <br>\n");
      out.write("\t<div class=\"container\" style=\"margin-top: 10%\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<table class=\"table table-striped\"\n");
      out.write("\t\t\t\tstyle=\"text-align: center; border: 1px solid #dddddd; color:#2277bb;\">\n");
      out.write("\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<th style=\"background-color: #eeeeee; text-align: center;\">No.</th>\n");
      out.write("\t\t\t\t\t\t<th style=\"background-color: #eeeeee; text-align: center;\">Título</th>\n");
      out.write("\t\t\t\t\t\t<th style=\"background-color: #eeeeee; text-align: center;\">Usuario</th>\n");
      out.write("\t\t\t\t\t\t<th style=\"background-color: #eeeeee; text-align: center;\">Fecha</th>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</thead>\n");
      out.write("\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t");

						Forod forumDAO = new Forod();
						ArrayList<Foro> list = forumDAO.getList(pageNumber);
						for (int i = 0; i < list.size(); i++) {
					
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(list.get(i).getForumID());
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td><a href=\"view.jsp?forumID=");
      out.print(list.get(i).getForumID());
      out.write("\">\n");
      out.write("\t\t\t\t\t\t\t\t");
      out.print(list.get(i).getForumTitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll("\n", "<br>"));
      out.write("</a></td>\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(list.get(i).getUserID());
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(list.get(i).getForumDate().substring(0, 11) + " " + list.get(i).getForumDate().substring(11, 13)
								+ ":" + list.get(i).getForumDate().substring(14, 16));
      out.write("</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t");

						}
					
      out.write("\n");
      out.write("\t\t\t\t</tbody>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t\t");

				if (pageNumber != 1) {
			
      out.write("\n");
      out.write("\t\t\t<a href=\"forum.jsp?pageNumber=");
      out.print(pageNumber - 1);
      out.write("\"\n");
      out.write("\t\t\t\tclass=\"btn btn-success btn-arrow-left\">Previous Page</a>\n");
      out.write("\t\t\t");

				}
				if (forumDAO.nextPage(pageNumber + 1)) {
			
      out.write("\n");
      out.write("\t\t\t<a href=\"forum.jsp?pageNumber=");
      out.print(pageNumber + 1);
      out.write("\"\n");
      out.write("\t\t\t\tclass=\"btn btn-success btn-arrow-right\">Next Page</a>\n");
      out.write("\t\t\t");

				}
			
      out.write("\n");
      out.write("\t\t\t<a href=\"write.jsp\" class=\"btn btn-primary pull-right\">Write</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
