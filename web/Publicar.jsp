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
        <div align="center">
        <%
             try {
                    ConectaBd bd = new ConectaBd();
                    s_idusuario = request.getParameter("f_idusuario1");
                    cn = bd.getConnection();
                    //out.print(s_idusuario);
        %>
        
        <form name="Publicar" action="validPublic.jsp" method="POST">
        <table border="0">
            <thead>
                <tr>
                    <th>NUEVO TEMA</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Curso </td>
                </tr>
                <tr>
                    <td><input type="text"
                        placeholder="Curso" value="" name="f_curso" maxLength="100"></td>
                </tr>
                
                <tr>
                    <td>Título: </td>
                </tr>
                <tr>
                        <td><input type="text"
                                placeholder="Title" value="" name="f_titulo" maxLength="100"></td>
                </tr>
                <tr>
                    <td>Contenido: </td>
                </tr>
                <tr>
                    <td><textarea placeholder="Descripción"
                    name="f_contenido" value="" maxLength="1000" style="height: 150px; width: 300px;"></textarea></td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" value="Enviar" name="f_enviar" />
                    <input type="hidden" name="f_idusuario1" value="<%out.print(s_idusuario);%>" /> 
                    
                    </td>
                </tr>
            </tbody>
        </table>

        </form>
        
        
        <%
            } catch (SQLException e) {
                    System.out.println("Error: " + e.getMessage());
            }
        %>
        </div>
    </body>
</html>
