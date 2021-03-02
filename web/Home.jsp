<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo de inicio">
        <title>Inicio</title>
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

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04"
                        aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <img src="../img/opciones.svg" width="40" height="40" class="d-inline-block align-top" alt="icon"
                         loading="lazy">
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample04">
                    <ul class="nav navbar-nav ml-auto">                        
                        <li class="nav-item text-light">
                            <a class="btn btn-out-white font-weight-bold mr-2 mb-1" href="/lectus/index/lineamiento"><img src="../svg/lineamientos.svg" width="20" height="20"> Lineamientos</a>
                        </li>
                        <li class="nav-item text-light">
                            <a class="btn btn-out-white font-weight-bold mr-2 mb-1" href="/lectus/index/contacto"><img src="../svg/contacto.svg" width="20" height="20"> Contáctanos</a>
                        </li>
                        <li class="nav-item text-light">
                            <a class="btn btn-out-white font-weight-bold mr-2 mb-1" href="/lectus/log/autentication"><img src="../svg/log-in.svg" width="20" height="20"> Iniciar sesión</a>                
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container text-center mt-4">
            <div class="mt-5 mb-5">
                <p class="display-4 mt-5">Bienvenido al sistema del <br> Programa Institucional de Lecturas (PIL)</p>
                <p class="mb-5 lead">Para poder hacer uso de Lectus, inicie sesión con su cuenta.</p>                
            </div>

            <h2>Videos de ayuda</h2>  
            <hr>
            <div class="row mb-4">
                <div class="col-md-6 mb-4 mb-md-0">
                    <div class=" embed-responsive embed-responsive-16by9">
                        <iframe class="rounded" width="460" height="250" src="https://www.youtube.com/embed/itlieYJcXL8" frameborder="0"></iframe>                    
                    </div>
                    <p class="text-muted">Dirigido a los estudantes.</p> 
                </div>
                <div class="col-md-6">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="rounded" width="460" height="250" src="https://www.youtube.com/embed/itlieYJcXL8" frameborder="0"></iframe>                    
                    </div>
                    <p class="text-muted">Dirigido a los revisores.</p> 
                </div>
            </div>               

            <h2>Libros disponibles</h2>
            <hr>
            <div class="row mb-4">                
                <c:forEach items="${libros}" var="libros">
                    <div class="col-md-6">
                        <div class="row no-gutters border-line-primary rounded shadow-sm mb-4">
                            <div class="col-md-5 mt-2 mt-md-0 text-center">
                                <img src="${libros.getPortada()}" width="185" height="250" class="mx-auto d-block rounded" alt="Portada del libro" loading="lazy">
                            </div>
                            <div class="col-md-7 mt-2">
                                <div class="text-justify pl-3 pl-md-3">
                                    <p class="mt-2 font-weight-bold">Género: <span class="font-weight-normal">${libros.getGenero()}</span>.</p>                            
                                    <p class="mt-2 font-weight-bold">Título: <span class="font-weight-normal">${libros.getTitulo()}.</span></p>
                                    <p class="mt-2 font-weight-bold">Autor: <span class="card-text font-weight-normal">${libros.getAutor()}.</span></p>                                        
                                    <p class="mt-2 font-weight-bold">Número de páginas: <span class="card-text font-weight-normal">${libros.getNumeroPagina()}.</span></p>
                                </div>
                                <div class="text-center mb-2 mb-md-0">
                                    <a class="btn btn-out-secondary" href="${libros.getArchivoPDF()}" target="_blank" role="button"><img src="../svg/pdf.svg" height="30" alt="icon" loading="lazy"> Obtener libro</a>                                                               
                                </div>
                            </div>                        
                        </div>
                    </div>
                </c:forEach>                
            </div>

            <h2>Comité</h2>  
            <hr>    
            <div class="row mb-4">
                <div class="col-md-6 mb-4 mb-md-0">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">M.M.I.C.H. María Magdalena Mendoza Díaz.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Coordinadora del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Instituto de Estudios Ambientales.</p> 
                            <a href="mailto:mmmendozad@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">mmmendozad@unsij.edu.mx</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">Dr. Daniel Alejandro Ramírez Villanueva.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Miembro del comité del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Departamento de Servicios Escolares.</p> 
                            <a href="mailto:danielunsij@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">danielunsij@unsij.edu.mx</a>
                        </div>                        
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-4 mb-4 mb-md-0">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">L.I. Nancy Soledad Paz Aquino.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Miembro del comité del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Sala de Cómputo 4.</p> 
                            <a href="mailto:@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">@unsij.edu.mx</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">L.I. Guadalupe Cruz Jiménez.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Miembro del comité del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Sala de Cómputo 2.</p> 
                            <a href="mailto:danielunsij@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">@unsij.edu.mx</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-4 mb-0 mt-md-0 mb-md-0">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">M.E. Esmeralda Bolaños Escobedo.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Miembro del comité del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Instituto de Estudios Ambientales.</p> 
                            <a href="mailto:esmera@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">esmera@unsij.edu.mx</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-4 mb-4 mb-md-0">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">M.C. Columba Martínez Hernández.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Miembro del comité del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Instituto de Estudios Ambientales.</p> 
                            <a href="mailto:columba@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">columba@unsij.edu.mx</a>
                        </div> 
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">Sec. Jael Pérez <br> Gijon.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Miembro del comité del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Vice-rectoría Académica.</p> 
                            <a href="mailto:@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">@unsij.edu.mx</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-4 mb-2 mt-md-0 mb-md-0">
                    <div class="card border-line-primary">
                        <div class="card-body">
                            <h5 class="card-title">M.I.T.I. Laura López <br> Núnez.</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Miembro del comité del PIL.</h6>                            
                            <p class="card-subtitle mb-2">Instituto de Estudios Ambientales.</p> 
                            <a href="mailto:lauraln@unsij.edu.mx?subject=(Escribe%20tu%20asunto)&body=Nombre%20completo%3A%20%20%0D%0ASemestre%3A%20%20%0D%0ACarrera%3A%20%20%0D%0AGrupo%3A%20%20%0D%0A%0D%0AComentario%3A%20%20" target="_blank" class="card-text">lauraln@unsij.edu.mx</a>
                        </div>
                    </div>
                </div>
            </div>            
        </div>

        <footer class="footer mt-auto py-3 background-primary text-light text-center">
            <div class="container">
                <div class="row d-flex align-items-center">
                    <div class="col-md-4">
                        <a href="http://www.unsij.edu.mx/" target="_blank"><img src="../img/unsij.png" width="80" height="90" class="d-inline-block align-top" alt="Logo de UNSIJ" loading="lazy"></a>
                    </div>
                    <div class="col-md-4">
                        <span class="align-middle">
                            <img src="../svg/preguntas.svg" width="20" height="20"> 
                            <a href="/lectus/index/preguntas" class="text-light">Preguntas frecuentes</a>
                        </span>
                    </div>
                    <div class="col-md-4">
                        <span class="align-middle">
                            <img src="../svg/telefono.svg" width="20" height="20"> 
                            <a href="tel:951-000-000-1" class="text-light">Asistencia técnica: 951-000-000-1</a>
                        </span>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <!-- ================================================== -->
    </body>
</html>