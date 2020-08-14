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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link href="css/css1/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/css1/util.css" rel="stylesheet" type="text/css"/>
        <link href="css/fondo.css" rel="stylesheet" type="text/css"/>
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


        <div align="center">
            <%
                try {
                    ConectaBd bd = new ConectaBd();
                    cn = bd.getConnection();

                    s_idusuario1 = request.getParameter("f_idusuario1");
                    s_idpublicacion = request.getParameter("f_idpublicacion");

                    s_accion = request.getParameter("f_accion");
            %>
            <table border="0" style="margin: 20px; width: 1460px;">
                <tr>
                    <td>
                        <a href="portal.jsp" align="left"> <input type=image src="images/images/nombre.png" width="140" height="50"> </a>
                    </td>

                    <td align="right">
                        <a href="foro.jsp?f_idusuario1=<%out.print(s_idusuario1);%>" align="right"> <input type=image src="images/uokpl.rs-circulo-rojo-sin-fondo-3661870.png" width="50" height="50"> </a>
                    </td>
                </tr>
            </table>
            <%
                //out.print(s_accion);
                cn2 = bd.getConnection();
                if (s_accion != null) {
                    if (s_accion.equals("com")) {
                        //out.print("Entró al if");
                        s_comentario = request.getParameter("f_comentario");
                        //out.print("Accion: " + s_accion+"-----");
                        s_idpublicacion = request.getParameter("f_idpublicacion");
                        consulta2 = "insert into comentarios (comentario, fecha, idpublicacion, idusuario) values ('" + s_comentario + "', CURRENT_TIMESTAMP, " + "'" + s_idpublicacion + "' , '" + s_idusuario1 + "');";

                        //out.print(consulta2);
                        pst2 = cn2.prepareStatement(consulta2);
                        pst2.executeUpdate();
                    }
                }

                //consulta = "select * from publicacion where idpublicacion=" + s_idpublicacion + ";";
                consulta = "select publicacion.idpublicacion, publicacion.titulo, publicacion.curso, publicacion.contenido, usuario.idusuario, usuario.nombre from publicacion, usuario where usuario.idusuario = publicacion.idusuario AND idpublicacion=" + s_idpublicacion + ";";
                //out.print(consulta);
                pst = cn.prepareStatement(consulta);
                rs = pst.executeQuery();
            %>

            <h2 style="position: relative; right: 25%;color:black">PUBLICACIÓN</h2>
            <form name="f_agregar" action="comentario.jsp" method="POST">
                <div id="wrap" >

                    <%
                        int num = 0;
                        String idp;
                        if (rs.next()) {

                    %>

                    <div class="box" align="center" style="width: 900px; height: 220px; font-size: 20px">
                        <table border="0">
                            <tbody>
                                <tr>
                                    <td style="width: 850px">Autor <%out.print(rs.getString(6));%></td>
                                </tr>
                                <tr>
                                    <td style="width: 850px">Título: <%out.print(rs.getString(2));%></td>
                                </tr>
                                <tr>
                                    <td>Curso: <%out.print(rs.getString(3));%></td>
                                </tr>
                                <tr>
                                    <td style="height: 125px;">Contenido: <%out.print(rs.getString(4));%></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>     
                </div>          
                <h2 style="position: relative; right: 25%;color:black">COMENTARIOS</h2>
                <div id="wrap" >
                    <div class="inner">  
                        <div class="box">
                            <%
                                }
                                cn1 = bd.getConnection();
                                consulta1 = "select usuario.nombre, comentarios.comentario, comentarios.fecha from usuario, comentarios where comentarios.idusuario = usuario.idusuario AND idpublicacion= " + s_idpublicacion + " ORDER BY fecha;";
                                //out.print(consulta1);
                                pst1 = cn1.prepareStatement(consulta1);
                                rs1 = pst1.executeQuery();

                                while (rs1.next()) {
                            %>

                            <table border="1" style="width: 1000px; height: 150px; font-size: 20px">
                                <thead>
                                    <tr>
                                        <td align="left"><%out.print(rs1.getString(1));%></td>
                                        <td align="right" style="text-justify: distribute"><%out.print(rs1.getString(3));%></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="2" align="top"><%out.print(rs1.getString(2));%></td>
                                    </tr>
                                </tbody>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>  
                <table>
                    <tbody>
                        <tr>

                            <td><textarea placeholder="Comentario"
                                          name="f_comentario" maxLength="240" style="height: 150px; width: 450px;" required></textarea></td>
                        </tr>
                    </tbody>
                    <tfoot>

                        <tr>
                            <td align="center" style="position:relative; top: 10px">
                                <input class="contact100-form-btn"  type="submit" value="Comentarios" name="f_agregar">
                                <input type="hidden" name="f_accion" value="com" />
                                <input type="hidden" name="f_idpublicacion" value="<%out.print(s_idpublicacion);%>" />
                                <input type="hidden" name="f_idusuario1" value="<%out.print(s_idusuario1);%>"/>
                            </td>
                        </tr>
                    </tfoot>
                </table>  
            </form>
             

            <%
                } catch (SQLException e) {
                    System.out.println("Error: " + e.getMessage());
                }
            %>
        </div>
        <script src="vendor1/bootstrap/js/tooltip.js" type="text/javascript"></script>
        <script src="vendor1/bootstrap/js/popper.min.js" type="text/javascript"></script>
        <script src="vendor1/bootstrap/js/popper.js" type="text/javascript"></script>
        <script src="vendor1/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="vendor1/bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script src="js1/main.js" type="text/javascript"></script>
        <script src="js1/map-custom.js" type="text/javascript"></script>
    </body>
</html>
