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
            </div>
        </nav>      

        <div class="container mt-4 text-center">  
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">                   
                    <li class="breadcrumb-item"><a href="/lectus/panel/alumno">Panel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Libros</li>                    
                </ol>
            </nav>

            <div class="mb-3"> 
                <h1 class="display-6">Libros disponibles</h1>
                <hr>
            </div>
        </div>

        <div class="container mb-4">    
            <div class="row mb-4">                
                <c:forEach items="${libros}" var="libros">
                    <div class="col-md-6">
                        <div class="row no-gutters border-line-primary rounded shadow-sm mb-4">
                            <div class="col-md-5 mt-2 mt-md-0 text-center">
                                <img src="${libros.getPortada()}" width="185" height="250" class="mx-auto d-block rounded" alt="Portada del libro" loading="lazy">
                            </div>
                            <div class="col-md-7 mt-2">
                                <div class="text-justify pl-3 pl-md-3">
                                    <p class="mt-2 font-weight-bold">Lugares disponibles: <span class="font-weight-normal">${libros.getCupo()}.</span></p>
                                    <p class="mt-2 font-weight-bold">Título: <span class="font-weight-normal">${libros.getTitulo()}.</span></p>
                                    <p class="mt-2 font-weight-bold">Autor: <span class="card-text font-weight-normal">${libros.getAutor()}.</span></p> 
                                    <p class="mt-2 font-weight-bold">Género: <span class="font-weight-normal">${libros.getGenero()}</span>.</p>   
                                    <p class="mt-2 font-weight-bold">Número de páginas: <span class="card-text font-weight-normal">${libros.getNumeroPagina()}.</span></p>
                                </div>
                                <div class="text-center mb-2 mb-md-0">
                                    <a class="btn btn-lg btn-out-secondary" href="javascript:asignarId(${libros.getIdLibro()})" role="button"><img src="../svg/ver.svg" height="30" alt="icon" loading="lazy"> Ver detalles</a>                                    
                                </div>
                            </div>                        
                        </div>
                    </div>
                </c:forEach>                
            </div>                
        </div>

        <!-- The Modal -->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog modal-xl">
                <div class="modal-content" >

                    <!-- Modal Header -->
                    <div class="modal-header background-primary text-light mb-4">
                        <h4 class="modal-title">Detalles del libro</h4>
                        <button type="button" class="close" data-dismiss="modal">
                            <img src="../svg/cerrar.svg" width="20" height="20">
                        </button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class=" container">
                            <div class="row">
                                <div class="col-md-4 mt-0 mt-md-0">                    
                                    <div class="text-center">
                                        <div class="mt-2">
                                            <img id="portada" src="" class="img-thumbnail d-inline-block align-top rounded" alt="Portada del libro" loading="lazy">                                                                                                                                                                                                                               
                                            <a class="btn btn-lg btn-block btn-out-primary mt-4"  target="_blank" href="${libro.archivoPDF}" role="button" id="archivoPDF"><img src="../svg/pdf.svg" height="30" alt="icon" loading="lazy"> Obtener libro</a>  
                                            <button type="button" class="btn btn-lg btn-block btn-solid-secondary" id="btnElegir">Elegir este libro</button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-8 mt-4 mt-md-0 text-justify">                    
                                    <div>
                                        <legend class="font-weight-normal p-0 m-0" id="titulo"></legend> 
                                        <div class="col-4 p-0 m-0">                                                   
                                            <hr class="border-line-primary p-0 mt-1">
                                        </div>
                                        <ul class="list-group">
                                            <li class="list-group-item font-weight-bold background-tab">
                                                <div class="row">
                                                    <div class="col-6 d-flex align-items-center">
                                                        Autor:
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="card-text font-weight-normal" id="autor"></span>.
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item font-weight-bold">
                                                <div class="row">
                                                    <div class="col-6 d-flex align-items-center">
                                                        Género:
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="font-weight-normal" id="genero"></span>.
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item font-weight-bold background-tab">
                                                <div class="row">
                                                    <div class="col-6 d-flex align-items-center">
                                                        Año de publicación:
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="card-text font-weight-normal" id="anio"></span>.
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item font-weight-bold">
                                                <div class="row">
                                                    <div class="col-6 d-flex align-items-center">
                                                        Número de páginas:
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="card-text font-weight-normal" id="paginas"></span>.
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item font-weight-bold background-tab">
                                                <div class="row">
                                                    <div class="col-6 d-flex align-items-center">
                                                        Edición:
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="card-text font-weight-normal" id="edicion"></span>.
                                                    </div>
                                                </div>
                                            </li>                                                                                        
                                        </ul>                        
                                    </div> 

                                    <div class="mt-4 mb-4">
                                        <legend class="font-weight-normal p-0 m-0">Sinópsis</legend> 
                                        <div class="col-4 p-0 m-0">                                                   
                                            <hr class="border-line-primary p-0 mt-1">
                                        </div>
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <span class="card-text font-weight-normal" id="sinopsis"></span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>                  
                </div>
            </div>
        </div> 
                                            
<!-- The Modal Elegir -->
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
                            <img src="../svg/advertencia.svg" height="90">       
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

    <!-- jQquery completo -->      
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>       
    <!-- Bootstrap core JavaScript -->      
    <!-- Placed at the end of the document so the pages load faster -->         
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>                       
    <!-- ================================================== -->   
    <script>
        $(document).ready(function () {
            $("#btnElegir").click(function () {
                $("#modalElegir").modal("show");
            });
            
            $("#btnAceptar").click(function () {
                window.location.href = "/lectus/alumnoLibro/select?idLibro=" + idLibro;
            });

            window.setTimeout(function () {
                $(".alert").fadeTo(500, 0).slideUp(500, function () {
                    $(this).remove();
                });
            }, 2000);
        });

        function elegirLibro(id) { //5 se ejecuta el controlador pasandole el idCono
            idLibro = id;
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