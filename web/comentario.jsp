<%-- 
    Document   : foro
    Created on : 11/08/2020, 11:05:33 PM
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
        <title>Comentar</title>
        <%!
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
            String s_idusuario1;
            String s_curso, s_contenido, s_titulo, s_usuario;
        %>
    </head>
    <body>

        <a href="portal.jsp" ><img src="images/images/nombre.png" alt="logo" class="footer__logo"> </a>
        <div align="center">

            <%
                try {
                    ConectaBd bd = new ConectaBd();
                    cn = bd.getConnection();

                    s_idusuario1 = request.getParameter("f_idusuario1");
                    s_idpublicacion = request.getParameter("f_idpublicacion");

                    s_accion = request.getParameter("f_accion");

                    //(s_idusuario1);
                    cn2 = bd.getConnection();
                    if (s_accion != null) {
                        if (s_accion.equals("com")) {
                            //out.print("Entró al if");
                            s_comentario = request.getParameter("f_comentario");
                            //out.print("Accion: " + s_accion+"-----");
                            s_idpublicacion = request.getParameter("f_idpublicacion");
                            consulta2 = "insert into comentarios (comentario, fecha, idpublicacion, idusuario) values ('" + s_comentario + "', CURRENT_TIMESTAMP, " + "'" + s_idpublicacion + "' , '" + s_idusuario1 +"');";
                            
                            out.print(consulta2);
                            pst2 = cn2.prepareStatement(consulta2);
                            pst2.executeUpdate();
                        }
                    }

                    consulta = "select * from publicacion where idpublicacion=" + s_idpublicacion + ";";
                    //out.print(consulta);
                    pst = cn.prepareStatement(consulta);
                    rs = pst.executeQuery();
            %>

            <br>
            <form name="f_agregar" action="comentario.jsp" method="POST">
                <%
                    int num = 0;
                    String idp;
                    if (rs.next()) {

                %>
                <div class="box" align="left">
                    <table border="0">
                        <tbody>
                            <tr>
                                <td><%out.print(rs.getString(2));%></td>
                            </tr>
                            <tr>
                                <td><%out.print(rs.getString(3));%></td>
                            </tr>
                            <tr>
                                <td><%out.print(rs.getString(4));%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>


                <%
                    }
                    cn1 = bd.getConnection();
                    consulta1 = "select usuario.nombre, comentarios.comentario, comentarios.fecha from usuario, comentarios where comentarios.idusuario = usuario.idusuario AND idpublicacion= " + s_idpublicacion + " ORDER BY fecha;";
                    out.print(consulta1);
                    pst1 = cn1.prepareStatement(consulta1);
                    rs1 = pst1.executeQuery();

                    while (rs1.next()) {
                %>

                <table border="0">
                    <thead>
                        <tr>
                            <th><%out.print(rs1.getString(1));%></th>
                            <td><%out.print(rs1.getString(3));%></td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2"><%out.print(rs1.getString(2));%></td>
                        </tr>
                    </tbody>
                </table>
                <%
                    }
                %>
                <table >
                    <tbody>
                        <tr>
                            <td><textarea placeholder="Comentario"
                                          name="f_comentario" maxLength="240" style="height: 150px; width: 300px;" required></textarea></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>
                                <input type="submit" value="Comentar" name="f_agregar">
                                <input type="hidden" name="f_accion" value="com" />
                                <input type="hidden" name="f_idpublicacion" value="<%out.print(s_idpublicacion);%>" />
                                <input type="hidden" name="f_idusuario1" value="<%out.print(s_idusuario1);%>"/>
                            </td>
                        </tr>
                    </tfoot>
                </table>  
            </form>

            <form name="Regresar" action="foro.jsp" method="POST">
                <table>
                <tr>
                    <td>
                        <input type="submit" value="Regresar" name="f_regresar">
                        <input type="hidden" name="f_idusuario1" value="<%out.print(s_idusuario1);%>"/>
                    </td>
                </tr>
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
