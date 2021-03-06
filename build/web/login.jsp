<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo de inicio de sesión">   
        <title>Iniciar sesión</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">

        <!-- Custom styles for this template -->        
        <link href="../css/principal.css" rel="stylesheet">                
        <link href="../css/signin.css" rel="stylesheet"> 
    </head>
    <body>            
        <div class="container mt-4">     
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/index/home">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Iniciar sesión</li>
                </ol>
            </nav>
            
            <form class="form-signin mt-0 pt-0" action="/lectus/log/login" method="POST">
                <div class="text-center mb-4">
                    <!--<img class="mb-4" src="../img/login.svg" alt="" width="140" height="140">-->
                    <a class="navbar-brand" href="#"><img src="../img/logo-white.svg" width="300" height="100" class="d-inline-block align-top" alt="Logo de la aplicación" loading="lazy"></a>                            
                    <h1 class="h3 mb-3 font-weight-normal">Iniciar sesión</h1>
                    <p>Ingrese sus datos en los campos correspondientes y de clic en el botón Ingresar.</p>
                </div>

                <div class="form-group">
                    <label class="font-weight-bold" for="inputUser">Matrícula o clave</label>
                    <input type="email" id="inputUser" class="form-control form-control-lg"  name="correo" required autofocus>                
                </div>                      

                <div class="form-group">
                    <label class="font-weight-bold" for="inputPassword">Contraseña</label>
                    <input type="password" id="inputPassword" class="form-control form-control-lg" name="password" required>                
                </div>

                <div class="checkbox mt-2 mb-2">
                    <label>
                        <input type="checkbox" value="remember-me"> Recordar datos
                    </label>
                </div>

                <div class="text-center text-danger">
                    <s:actionerror/>
                </div>
                <button class="btn btn-lg btn-color btn-block mb-2" type="submit">Ingresar</button>                                               
            </form>

        </div>

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.7/holder.js"></script>
        <!-- ================================================== -->
    </body>

</html>
