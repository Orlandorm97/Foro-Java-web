<%-- 
    Document   : Publicar.jsp
    Created on : 12/08/2020, 02:44:52 AM
    Author     : orlan
--%>
<%@page import="java.sql.*"%>
<%@page import="bd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/icon/favicon-32x321.png">        
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <link href="css/fondo.css" rel="stylesheet" type="text/css"/>
        <title>Publicar</title>
        <%!
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            String count;
            String s_accion;
            String s_idusuario;
            String s_curso, s_contenido, s_titulo, s_usuario;
        %>
    </head>
    <body>

        <%
            try {
                ConectaBd bd = new ConectaBd();
                s_idusuario = request.getParameter("f_idusuario1");
        %>

        <table border="0" style="margin: 20px; width: 1480px;">
            <tr>
                <td>
                    <a href="portal.jsp" align="left"> <input type=image src="images/images/nombre.png" width="140" height="50"> </a>
                </td>

                <td align="right">
                    <a href="foro.jsp?f_idusuario1=<%out.print(s_idusuario);%>" align="right"> <input type=image src="images/uokpl.rs-circulo-rojo-sin-fondo-3661870.png" width="50" height="50"> </a>
                </td>
            </tr>
        </table>

        <%
            cn = bd.getConnection();
            //out.print(s_idusuario);
        %>
        <div align="center">
            <div style="top: 80px; position: relative;">
                <form name="Publicar" action="validPublic.jsp" method="POST">
                    <table border="0" style="color:black">

                        <thead>
                        <th style="position: relative;  bottom: 10px; font-size: 20px; left: 85px" align="center">NUEVO TEMA</th>
                        </thead>

                        <tbody>

                            <tr>
                                <td>Curso </td>
                            </tr>
                            <tr>
                                <td><textarea placeholder="Curso"
                                              name="f_curso" value="" maxLength="1000" style="height: 30px; width: 250px;" required></textarea></td>
                            </tr>

                            <tr>
                                <td>Título </td>
                            </tr>

                            <tr>
                                <td><textarea placeholder="Titulo"
                                              name="f_titulo" value="" maxLength="1000" style="height: 30px; width: 250px;" required></textarea></td>
                            </tr>
                            <tr>
                                <td>Contenido </td>
                            </tr>
                            <tr>
                                <td><textarea placeholder="Descripción"
                                              name="f_contenido" value="" maxLength="1000" style="height: 150px; width: 300px;" required></textarea></td>
                            </tr>
                            <tr>
                                <td align="center"><input class="btn btn-outline-success"  type="submit" value="Enviar" name="f_enviar" />
                                    <input type="hidden" name="f_idusuario1" value="<%out.print(s_idusuario);%>" /> 
                                </td>
                            </tr>
                        </tbody>
                    </table>       
                </form>
            </div>
            <%
                } catch (SQLException e) {
                    System.out.println("Error: " + e.getMessage());
                }
            %>
        </div>
    </body>
</html>
