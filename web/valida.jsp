<%-- 
    Document   : Valida
    Created on : 15/01/2020, 03:01:57 PM
    Author     : lab02-prof
--%>
<%@page import="java.sql.*"%>
<%@page import="bd.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <%!             
            String consulta; 
            String consulta2; 
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            Connection cn2;
            PreparedStatement pst2;
            ResultSet rs2;
            String idp;
            String s_usuario, s_clave;
            String count;
            String s_dni;
            String resultado;
            String s_codigo;
            String s_idusuario;
        %>
    </head>
    <body> 
        <%
            
            try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                s_idusuario="";
                s_idusuario = request.getParameter("f_idusuario");
                s_usuario = request.getParameter("f_usuario");
                s_clave = request.getParameter("f_clave");
                s_dni = request.getParameter("f_dni");
                
                if(s_usuario != null){
                    consulta = "select count(usuario and clave),idusuario from usuario where usuario='"+s_usuario+"' and clave='"+ s_clave+"';";
                 out.print(consulta);
                 pst = cn.prepareStatement(consulta);
                rs = pst.executeQuery();
                
                
                
                count="";
                if (rs.next()) {
                    count = rs.getString(1);
                    s_idusuario=rs.getString(2);
                }
                
                rs.close();
                pst.close();
                cn.close();
                if(count.equals("1")){
                    response.sendRedirect("foro.jsp?f_usuario="+s_usuario+"&f_idusuario1="+s_idusuario);
                    
                }
                else if(count.equals("0")) {
                        response.sendRedirect("login.jsp?f_error=1");
                    }
                }
            }
            
            catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }
            
        %>
    </body>
</html>