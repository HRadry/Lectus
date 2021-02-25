<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para ver los detalles del revisor">
        <title>Detalles del revisor</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">

        <!-- Custom styles for this template -->
        <link href="../css/carousel.css" rel="stylesheet">
        <link href="../css/principal.css" rel="stylesheet">
    </head>

    <body>
        <nav class="navbar navbar-expand-md navbar-dark background-nav border-bottom shadow-sm p-3 px-md-4 mb-3">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="../img/logo-white.svg" width="180" height="40" class="d-inline-block align-top" alt="Logo de la aplicación" loading="lazy"></a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <img src="../img/opciones.svg" width="40" height="40" class="d-inline-block align-top" alt="icon" loading="lazy">
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample04">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item text-light">
                            <a class="text-black font-weight-bold btn btn-wb mr-2 mb-1" href="/lectus/panel/administrador"><img src="../img/menu.svg" class="mr-1" width="20" height="20"> Ir al panel</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-wb dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="#"> <img src="../img/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../img/salir.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main role="main" class="inner cover container mt-4">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item"><a href="/lectus/revisor/list">Administrar revisores</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detalles del revisor</li>
                </ol>
            </nav>
            <div class="pricing-header mb-5 text-center animate-opacity container">
                <h1 class="display-6">Detalles del revisor </h1>
            </div>
            <section class="form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column">
                <form>
                    <div class="row">
                        <div class="col-md-6 border-left">
                            <fieldset>
                                <legend class="font-weight-normal">Datos generales del revisor </legend>
                                <div class="row no-gutters flex-md-row mb-4 position-relative box-book">
                                    <div class="mt-2 d-flex flex-column position-static">
                                        <p class="mb-3 d-inline-block font-weight-bold">Nombre: <span class="font-weight-normal">${usuario.nombre}</span><span class="font-weight-normal">.</span></p>
                                        <p class="mt-2 font-weight-bold title-book">Apellido paterno: <span class="font-weight-normal">${usuario.apellidoPaterno}.</span></p>
                                        <p class="mt-2 font-weight-bold">Apellido materno: <span class="card-text font-weight-normal">${usuario.apellidoMaterno}.</span></p>                                        
                                    </div>                                    
                                </div>
                            </fieldset>                         
                        </div>
                        <div class="col-md-6 border-left mb-4">
                            <legend class="font-weight-normal">Datos académicos y del sistema </legend>
                            <div class="row no-gutters flex-md-row mb-4 position-relative box-book">
                                <div class="mt-2 d-flex flex-column position-static">
                                    <p class="mt-2 font-weight-bold">Correo: <span class="card-text font-weight-normal">${usuario.correo}.</span></p>                                        
                                    <p class="mt-2 font-weight-bold">Carrera: <span class="card-text font-weight-normal">${usuario.carrera}.</span></p>
                                    <p class="mt-2 font-weight-bold">Matrícula: <span class="card-text font-weight-normal">${usuario.matricula}.</span></p>
                                    <p class="mt-2 font-weight-bold">Contraseña: <span class="card-text font-weight-normal">${usuario.password}.</span></p>
                                </div>                                    
                            </div>
                        </div>
                    </div>
                    <div class="text-center mt-2">                              
                        <a class="button btn btn-lg btn-color-out" href="/lectus/revisor/list" role="button"><i data-feather="arrow-left"></i> Regresar</a>                                                
                    </div>
                </form>                                                                
            </section>
        </main>
        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>        
        <!-- ================================================== -->  
        <script src="https://unpkg.com/feather-icons"></script>        
        <script type="text/javascript">
            feather.replace();
        </script>
    </body>

</html>