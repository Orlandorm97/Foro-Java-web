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
            String s_usuario, s_clave;
            String count;
            String s_nombre;
            String s_codigo;
        %>
    </head>
    <body>
        <%

            try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();

                s_nombre = request.getParameter("f_nombre");
                s_usuario = request.getParameter("f_usuario");
                s_clave = request.getParameter("f_clave");
                s_codigo = request.getParameter("f_codigo");

                cn1 = bd.getConnection();
                consulta1 = "select count(*) from usuario where usuario='" + s_usuario + "' OR codigo= '"+s_codigo+"';";
                pst1 = cn1.prepareStatement(consulta1);
                rs1 = pst1.executeQuery();
                String count = "";
                if(rs1.next()){
                count = rs1.getString(1);
                //out.print(count);
                }
                if(count.equals("0")){
                    consulta = "insert into usuario (nombre, usuario, clave, codigo) values ('" + s_nombre + "', '" + s_usuario + "', '" + s_clave + "' , '" + s_codigo + "');";
                    //out.print(consulta);
                    pst = cn.prepareStatement(consulta);
                    pst.executeUpdate();
                    response.sendRedirect("login.jsp");
                }
                else if(count.equals("1")) {
                        response.sendRedirect("registro.jsp?f_error=1");
                }
                
              
                rs.close();
                pst.close();
                cn.close();
                rs1.close();
                pst1.close();
                cn1.close();
            } catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }

        %>

    </body>
</html>
