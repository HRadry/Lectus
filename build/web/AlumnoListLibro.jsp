<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para que el alumno escoga un libro">
        <title>Libros</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">

        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">

        <!-- Typography -->  
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <style>                         
            body {
                font-family: 'Roboto', sans-serif;
            }           
            table {
                table-layout: fixed;
            }            
        </style>
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
                            <a class="text-black font-weight-bold btn btn-wb mr-2 mb-1" href="/lectus/panel/alumno"><img src="../img/menu.svg" class="mr-1" width="20" height="20"> Ir al panel</a>
                        </li>                        
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-wb dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="#"> <img src="../img/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/panel/lineamiento"> <img src="../img/rule.svg" width="25" height="25"> Lineamientos</a>                                                                                                        
                                <a class="dropdown-item" href="/lectus/sugerencia/send"> <img src="../img/idea.svg" width="25" height="25"> Sugerir libro</a>                                                                                                   
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../img/salir.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>      

        <div class="mt-4 text-center container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/alumno">Panel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Libros disponibles</li>
                </ol>
            </nav>
            <h1 class="display-6">Libros disponibles </h1>
        </div>

        <div class="container mt-4 mb-4" >        
            <div class="text-center text-danger">
                <s:actionerror/>
            </div>
            <!--- cuadros -->
            <div class="row mb-2" data-masonry='{"percentPosition": true }'>
                <c:forEach items="${libros}" var="libros">
                    <div class="col-md-6">
                        <div class="row no-gutters border border-success rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative box-book">
                            <div class="col-md-5 d-lg-block text-center align-middle">
                                <img src="${libros.getPortada()}" width="200" height="300" class="d-inline-block align-top rounded" alt="Portada del libro" loading="lazy">
                            </div>
                            <div class="col-md-7 mt-2 d-flex flex-column position-static">

                                <div class="">
                                    <p class="pl-4 mb-2 d-inline-block font-weight-bold">Género: <span class="font-weight-normal">${libros.getGenero()}</span><span class="font-weight-normal">.</span></p>                            
                                    <p class="pl-4 mt-2 font-weight-bold title-book">Título: <span class="font-weight-normal">${libros.getTitulo()}.</span></p>
                                    <p class="pl-4 mt-2 font-weight-bold">Autor: <span class="card-text font-weight-normal">${libros.getAutor()}.</span></p>                                        
                                    <p class="pl-4 mt-2 font-weight-bold">Número de páginas: <span class="card-text font-weight-normal">${libros.getNumeroPagina()}.</span></p>
                                </div>
                                <div class="text-center mb-1 pl-2">
                                    <a class="btn btn-lg btn-color" href="javascript:asignarId(${libros.getIdLibro()})" role="button">Ver detalles <img src="../svg/ver.svg" height="30" alt="icon" loading="lazy"></a>
                                    <!--<button type="button" class="btn btn-wb mt-2" data-toggle="modal" data-target="#myModal"> Ver detalles</button> -->                       
                                </div>
                            </div>                        
                        </div>
                    </div>
                </c:forEach>
            </div>        

            <!-- The Modal -->
            <div class="modal fade" id="myModal">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content" >

                        <!-- Modal Header -->
                        <div class="modal-header background-nav text-light mb-4">
                            <h4 class="modal-title">Detalles del libro</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class=" container">
                                <div class="row">
                                    <div class="col-md-4 border-left">
                                        <legend class="font-weight-normal">Libro </legend>
                                        <div class="d-lg-block text-center">
                                            <div class="mt-3">
                                                <img id="portada" src="" alt="" width="200" height="300" class="img-thumbnail d-inline-block align-top rounded" alt="Portada del libro" loading="lazy">
                                            </div>
                                            <a class="btn btn-lg btn-color font-weight-normal mt-4 mb-4"  target="_blank" href="${libro.archivoPDF}" role="button" id="archivoPDF">Ver PDF <img src="../svg/ver.svg" height="30" alt="icon" loading="lazy"></a>                                    
                                        </div>
                                    </div>                               

                                    <div class="col-md-4 border-left">
                                        <legend class="font-weight-normal">Datos generales</legend>                                
                                        <div class="row no-gutters flex-md-row position-relative box-book">
                                            <div class="d-flex flex-column position-static">
                                                <p class="mt-2 font-weight-bold title-book">Título: <span class="font-weight-normal" id="titulo">.</span></p>
                                                <p class="mb-2 d-inline-block font-weight-bold">Género: <span class="font-weight-normal" id="genero"></span><span class="font-weight-normal">.</span></p>                                                
                                                <p class="mt-2 font-weight-bold">Autor: <span class="card-text font-weight-normal" id="autor">.</span></p>                                        
                                                <p class="mt-2 font-weight-bold">Año de publicación: <span class="card-text font-weight-normal" id="anio">.</span></p>
                                                <p class="mt-2 font-weight-bold">Número de páginas: <span class="card-text font-weight-normal" id="paginas">.</span></p>
                                                <p class="mt-2 font-weight-bold">Edición: <span class="card-text font-weight-normal" id="edicion">.</span></p>
                                            </div>                                    
                                        </div>                        
                                    </div>

                                    <div class="col-md-4 border-left">
                                        <legend class="font-weight-normal">Sinópsis </legend>
                                        <div class="form-group mt-3 text-justify">
                                            <p id="sinopsis"></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <div class="col-md-4 text-center">
                                <button type="button" class="btn btn-lg btn-color-out" id="btnElegir">Elegir este libro</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
                                        
                                        
            <div class="modal fade" id="modalElegir" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-danger">
                            <h5 class="modal-title text-light" id="exampleModalCenterTitle"> Elegir libro </h5>
                            <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                                <img src="../svg/cerrar.svg" width="20" height="20">
                            </button>
                        </div>
                        <div class="row modal-body text-center">
                            <div class="col-3">
                                <img src="../img/warning.svg" height="90">       
                            </div>

                            <div class="col-9 mt-3">
                                <p class="font-weight-bold">¿Desea elegir este libro?<br></p>
                                <span class="text-muted">Una vez elegido no podrá cambiarlo</span>
                            </div>
                        </div>
                        <div class="modal-footer" style="justify-content: center;">
                            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><b>Cancelar</b></button>
                            <button type="button" class="btn btn-danger" id="btnAceptar"><b>Aceptar</b></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>            

        <footer id="footer" class="mastfoot mt-auto">
            <div class="inner">
                <p></p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.7/holder.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous" async></script>
        <!-- ================================================== -->
        <script>
            $(document).ready(function () {
                $("#btnElegir").click(function () { 
                  $("#modalElegir").modal("show");
                });
                
                $("#btnAceptar").click(function () { 
                    window.location.href = "/lectus/alumnoLibro/select?idLibro=" + idLibro;
                });
            });
            function elegirLibro(id) { //5 se ejecuta el controlador pasandole el idCono
                idLibro = id;
                $("#modalElegir").modal("show");
                window.location.href = "/lectus/alumnoLibro/select?idLibro=" + idLibro;
            }

            function asignarId(id) { // 1 se recibe tu idCono

                idLibro = id;
                //alert("id: " + idLibro)
                var url = "/lectus/alumnoLibro/showDetails?idLibro=" + idLibro;
                // alert("url: " + url)

                $.ajax({
                    url: url,
                    type: "GET",
                    dataType: "JSON",
                    success: function (data) {

                        //var respuestaJson = JSON.stringify(data);
                        var respuestaObject = JSON.parse(data);
                        //alert("hasta aqui llego: " + respuestaObject.autor);
                        $("#titulo").text(respuestaObject.titulo);
                        $("#autor").text(respuestaObject.autor);
                        $("#genero").text(respuestaObject.genero);
                        $("#paginas").text(respuestaObject.numeroPagina);
                        $("#edicion").text(respuestaObject.edicion);
                        $("#anio").text(respuestaObject.anoPublicacion);
                        $("#sinopsis").text(respuestaObject.sinopsis);
                        $("#portada").attr("src", respuestaObject.portada);
                        //alert("enlace"+respuestaObject.archivoPDF)
                        var enlace = document.getElementById("archivoPDF");
                        enlace.href = respuestaObject.archivoPDF; //cambiar por enlace de BD
                        $("#myModal").modal("show");

                    }});
            }
        </script>
    </body>

</html>