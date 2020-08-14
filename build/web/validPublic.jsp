<%-- 
    Document   : validPublic
    Created on : 12/08/2020, 04:29:05 PM
    Author     : orlan
--%>
<%@page import="java.sql.*"%>
<%@page import="bd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%!             
            String consulta; 
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            String consulta1; 
            Connection cn1;
            PreparedStatement pst1;
            ResultSet rs1;
            String idp;
            String s_titulo, s_contenido;
            String count;
            String s_curso;
            String s_idusuario;
        %>
    </head>
    <body>
        <%
            
            try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                
                s_titulo = request.getParameter("f_titulo");
                s_curso = request.getParameter("f_curso");
                s_contenido = request.getParameter("f_contenido");
                s_idusuario = request.getParameter("f_idusuario1");
                
                consulta = "insert into publicacion (titulo, curso, contenido, idusuario) values ('" + s_titulo + "', '"+ s_curso +"', '" + s_contenido+ "' , '" + s_idusuario + "');";
                out.print(consulta);
                pst = cn.prepareStatement(consulta);
                pst.executeUpdate();
                
                rs.close();
                pst.close();
                cn.close();
            }catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }
            
            try{
                ConectaBd bd = new ConectaBd();
                cn1= bd.getConnection();
                consulta1 = "select idusuario from usuario where idusuario='"+s_idusuario+"';";
                pst1 = cn1.prepareStatement(consulta1);
                rs1 = pst1.executeQuery();
                
                String idu1="";
                if (rs1.next()) {
                idu1 = rs1.getString(1);
                
                response.sendRedirect("foro.jsp?f_idusuario1="+idu1);
                } 
                   
                rs1.close();
                pst1.close();
                cn1.close();   
            }            
            catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }
            
        %>
    </body>
</html>
