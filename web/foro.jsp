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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link href="css/fondo.css" rel="stylesheet" type="text/css"/>
        <link href="css/efecto_texto.css" rel="stylesheet" type="text/css"/>
        <title>Publicaciones</title>
        <%!
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            Connection cn1;
            PreparedStatement pst1;
            ResultSet rs1;
            String idu1;
            String consulta1;
            String count;            
            String s_accion;
            String s_idpublicacion;
            String s_idusuario;
            String s_curso, s_contenido, s_titulo, s_usuario;
        %>
    </head>
    <body >
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <%
                try {
                    ConectaBd bd = new ConectaBd();
                    
                    cn1 = bd.getConnection();
                    
                    s_idusuario = request.getParameter("f_idusuario1");
                    s_usuario = request.getParameter("f_usuario");
                    //out.print(s_idusuario);
                    idu1= s_idusuario;
                    
                    consulta1 = "select usuario from usuario where idusuario = "+s_idusuario+";";
                    pst1 = cn1.prepareStatement(consulta1);
                    rs1 = pst1.executeQuery();
                    if(rs1.next()){
                        s_usuario = rs1.getString(1);
                    }
            %>
            
          <h1>Bienvenido <% out.print(s_usuario);%></h1>

            
       
                
           
            
           <%
             cn = bd.getConnection();
             consulta = "select publicacion.idpublicacion, publicacion.titulo, publicacion.curso, publicacion.contenido, usuario.idusuario, usuario.nombre from publicacion, usuario where usuario.idusuario = publicacion.idusuario;";
             //out.print(consulta);
             pst = cn.prepareStatement(consulta);
             rs = pst.executeQuery();
                    
             int num = 0;
             String idp, idu;
             while (rs.next()) {
             idp= rs.getString(1);
             idu= rs.getString(5);
             num+=1;
             
            
           %>
           
           <div id="wrap">
            <div class="inner">
           <div class="box">
               <form name="Ingreso de comentario" action="comentario.jsp" method="POST">
                <table border="0" align="center" style="position:relative; width: 980px; height: 180px">
                        <tbody>
                            <tr>
                                <th>Autor</th>
                                <td><%out.print(rs.getString(6));%></td>
                            </tr>
                            <tr>
                                <th>Título</th>
                                <td><%out.print(rs.getString(2));%></td>
                            </tr>
                            <tr>
                                <th>Curso</th>
                                <td><%out.print(rs.getString(3));%></td>
                            </tr>
                            <tr>
                                <th>Publicación</th>
                                <td><%out.print(rs.getString(4));%></td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2"><input class="btn btn-primary btn-lg" type="submit" value="Comentarios" name="f_comentar" />
                                <input type="hidden" name="f_idpublicacion" value="<% out.print(idp); %>" />
                                <input type="hidden" name="f_idusuario" value= " <%out.print(rs.getString(5));%> " />
                                <input type="hidden" name="f_idusuario1" value= " <%out.print(idu1);%> " />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
         </div>
</div>
        <% 
             
             }
            //out.print(idu1);
%>
<table border="0" align="center"  >
    <thead>
        <tr>
            <th><form action="Publicar.jsp" name="Publicar" method="POST" align="center" style="position: relative; right: 20px">         
                <input class="btn btn-outline-success" type="submit" value="Publicar nuevo tema" name="f_agregar">
                <input type="hidden" name="f_idusuario1" value="<%out.print(idu1);%>" />
                </form>  </th>
            
            <th>
                <form action="portal.jsp" name="Portal" method="POST" align="center">         
                <input  class="btn btn-outline-danger" type="submit" value="Salir" name="f_portal">
            </form>
            </th>
        </tr>
    </thead>
    
</table>
                <br>
            
        <%   
                } catch (SQLException e) {
                    System.out.println("Error: " + e.getMessage());
                }
            %>
             <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
