<%@page import="java.sql.*"%>
<%@page import="bd.*"%>
<!DOCTYPE html>
<html lang="en">
    <head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><meta http-equiv="X-UA-Compatible" content="ie=edge"><title>Proyecto AVI</title><link href="https://fonts.googleapis.com/css?family=Tajawal:400,500,700&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Lato:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/public/tiny-slider.css">
        <link rel="stylesheet" href="css/public/main.ce4d4265.css">
        <link rel="icon" href="images/icon/favicon-32x321.png">
        <%!
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
            %> 
    </head>
    <body> 
        <%
    try {
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                s_accion = request.getParameter("f_accion");
                s_idusuario = request.getParameter("f_idusuario");
                %>
                
        <main class="main" id="inicio"> 
            <section class="heroimage"> 
                <div class="container"> 
                    <div class="heroimage__row"> 
                        <div class="heroimage__left"> 
                            
                                <h1 class="heroimage__left_title"><b>
                                    Explora Comparte Aprende e Innova</b></h1> 
                                <div class="heroimage__left_text"> <p>Se parte de nuestra comunidad.</p> <p>No requiere descargar.</p> <p>Registrate ya.</p> </div> </div> 
                                
                                <div class="heroimage__right">
                                    <img class="background-logo__shape" src="images/original.jpg" alt="Background"> 
            
                                    <form id="signup-form" class="signup-form" action="valida.jsp" method="POST"> 
                                    <h5 id="signup-form__title" class="signup-form__title">
                                                   
                                        <b>Bienvenido</b>
                                        nuevamente!
                                    </h5> 
                                    <div class="signup-form__input"> 
                                        <input type="text" name="f_usuario" placeholder="tu usuario" required> 
                                    </div>
                                    <div class="signup-form__input"> 
                                        <input type="password" id="password" name="f_clave" placeholder="tu clave" required> 
                                    </div> 
                         
                                    <input id="signup-form__button" type="submit" class="signup-form__button" value="Iniciar Sesion">
                                    <input type="hidden" name="f_accion" value="R" size="15" />
                                    <input type="hidden" name="f_idusuario" value="" size="15" />
                                    <%
                                        s_error = request.getParameter("f_error");
                                        if (s_error != null) {
                                            out.print(s_idusuario);
                                    %>
                                    <h5 id="signup-form__title" class="signup-form__title">
                                                   
                                        <b>Usuario y/o clave incorrecto</b>
                                        
                                    </h5> 
                                    <% } %>
                                    
                                    <% } catch (SQLException e) {
                                                System.out.println("Error: " + e.getMessage());
                                            }
                %>
                                    <div class="signup-form__background"> 
                                        <img class="signup_form__glow" src="images/public/FormGlow.c67e2b75.svg" alt="Form under glow"> </div> </form>
                            
                            </div> 
                    </div> 
                </div> 
            </section> 
                <section class="projects-using"> <img src="images/public/PurpleLeftGlow.3b0fe1bb.svg" alt="Background purple glow" class="projects-using__background"> 
                    
                                <div class="projects-using__title-wrapper"> 
                                    <h6 class="projects-using__title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Proyecto AVI</h6> 
                                    <div class="dash purple"></div> 
                                </div> 
                                <div class="projects-using__text"> 
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Somos un grupo de estudiantes a disposicion de la comunidad. </p> 
                                </div> 
                            
                </section> 
                
                               
            </main> 

            <footer class="footer"> 
     <div class="container"> <div class="footer__row"> <img src="images/images/nombre.png" alt="logo" class="footer__logo"> <div class="footer__content"> <p class="copyright">© 2020 Proyecto AVI</p> </div> </div> </div> 
              </footer> 
        
        <script src="js/public/main.d1eb4f8e.js"></script>
        <script src="js/public/tiny-slider.js"></script>
    </body>
</html>