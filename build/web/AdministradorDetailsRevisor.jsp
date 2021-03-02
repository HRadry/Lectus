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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">
        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">       
    </head>

    <body>
        <nav class="navbar navbar-expand-md navbar-dark background-primary border-bottom shadow-sm p-3 px-md-4 mb-3">
            <div class="container">
                <a class="navbar-brand" href="/lectus/index/home"><img src="../img/logo-white.svg" width="180" height="40" class="d-inline-block align-top" alt="Logo de la aplicación" loading="lazy"></a>

                <!--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <img src="../img/opciones.svg" width="40" height="40" class="d-inline-block align-top" alt="icon" loading="lazy">
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample04">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item text-light">
                            <a class="text-black font-weight-bold btn btn-out-white mr-2 mb-1" href="/lectus/panel/administrador"><img src="../img/menu.svg" class="mr-1" width="20" height="20"> Ir al panel</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-out-white dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="#"> <img src="../img/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../img/salir.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>-->
            </div>
        </nav>

        <div class="container mt-4 mb-4 text-center">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item"><a href="/lectus/revisor/list">Administrar revisor</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detalles del revisor</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Detalles del revisor</h1>
            </div>
            
            <div class="row mt-4 justify-content-md-center">
                <div class="col-md-8 mt-4 mt-md-0 text-justify">                    
                    <div>
                        <legend class="font-weight-normal p-0 m-0">Datos generales</legend> 
                        <div class="col-4 p-0 m-0">                                                   
                            <hr class="border-line-primary p-0 mt-1">
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Nombre:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">${usuario.nombre}.</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Apellido paterno:
                                    </div>
                                    <div class="col-6">
                                        <span class="font-weight-normal">${usuario.apellidoPaterno}.</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Apellido materno:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">${usuario.apellidoMaterno}.</span>
                                    </div>
                                </div>
                            </li>                             
                        </ul>                        
                    </div>       

                    <div class="mt-4">
                        <legend class="font-weight-normal p-0 m-0">Datos institucionales</legend> 
                        <div class="col-4 p-0 m-0">                                                   
                            <hr class="border-line-primary p-0 mt-1">
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Número de empleado:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">${usuario.matricula}.</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Carrera:
                                    </div>
                                    <div class="col-6">
                                        <span class="font-weight-normal text-break text-break">${usuario.carrera}.</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Área:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal text-break">.</span>
                                    </div>
                                </div>
                            </li> 
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Cargo:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal text-break">.</span>
                                    </div>
                                </div>
                            </li> 
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Número de cubo:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">.</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Teléfono:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal"> Ext. </span>
                                    </div>
                                </div>
                            </li>
                        </ul>                        
                    </div> 

                    <div class="mt-4">
                        <legend class="font-weight-normal p-0 m-0">Datos del sistema</legend>  
                        <div class="col-4 p-0 m-0">                                                  
                            <hr class="border-line-primary p-0 mt-1">
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Correo:
                                    </div>
                                    <div class="col-6">
                                        <a href="mailto:${usuario.correo}" target="_blank" class="card-text"><span class="card-text font-weight-normal text-break">${usuario.correo}</span></a>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Tipo de usuario:
                                    </div>
                                    <div class="col-6">
                                        <span class="font-weight-normal">${usuario.tipoUsuario}.</span>                                        
                                    </div>
                                </div>
                            </li>                            
                        </ul>                        
                    </div> 

                    <div class="text-center mt-4">                              
                        <a class="button btn btn-lg btn-out-primary" href="/lectus/revisor/list" role="button"><i data-feather="arrow-left"></i> Regresar</a>                                                
                    </div>
                </div>                 
            </div>                           
        </div>

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