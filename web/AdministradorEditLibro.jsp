<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para editar libro">        
        <title>Editar libro</title>
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
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item"><a href="/lectus/libro/list">Administrar libros</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Editar libro</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Editar libro</h1>
            </div>
        </div>

        <main role="main" class="inner cover container mt-4 mb-2">                     
            <section class="form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column">
                <form class="needs-validation" novalidate action="libro/update" method="POST">
                    <input type="hidden" name="libro.idLibro" value="${libro.getIdLibro()}">
                    <div class="row">
                        <div class="col-md-6">
                            <legend class="font-weight-normal">1.- Datos generales del libro</legend>
                            <div class="form-group">
                                <label for="titulo" class="font-weight-bolder">Título</label>
                                <input type="text" class="form-control form-control-lg" id="titulo" name="libro.titulo" value="${libro.getTitulo()}" size="80" maxlength="80" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="autor" class="font-weight-bolder">Autor</label>
                                <input type="text" class="form-control form-control-lg" id="autor" name="libro.autor" value="${libro.getAutor()}" size="80" maxlength="80" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="genero" class="font-weight-bolder">Género</label>                                
                                <select class="custom-select custom-select-lg" id="genero" name="libro.genero" required>
                                    <option selected hidden>${libro.getGenero()}</option>                                       
                                    <option>Cuento</option>
                                    <option>Novela</option>
                                    <option>Relato</option>
                                </select>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edicion" class="font-weight-bolder">Edición</label>
                                <!--<input type="text" class="form-control form-control-lg" id="edicion" name="libro.edicion" minlength="7" maxlength="15" size="15" value="${libro.getEdicion()}" required>-->
                                <select class="custom-select custom-select-lg" id="genero" name="libro.edicion" value="${libro.getEdicion()}" required>
                                    <option selected hidden>${libro.getEdicion()}</option>                                       
                                    <option>Primera</option>
                                    <option>Segunda</option>
                                    <option>Tercera</option>
                                    <option>Cuarta</option>
                                    <option>Quinta</option>
                                    <option>Sexta</option>
                                    <option>Séptima</option>
                                    <option>Octava</option>
                                    <option>Novena</option>
                                    <option>Décima</option>
                                </select>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label for="numeroPagina" class="font-weight-bolder">Número de páginas</label>
                                    <input type="text" class="form-control form-control-lg" id="numeroPagina" name="libro.numeroPagina" value="${libro.getNumeroPagina()}" size="4" minlength="2" maxlength="4" onkeypress="return solonumeros(event)" onpaste="return false" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="anoPublicacion" class="font-weight-bolder">Año de publicación</label>
                                        <input type="text" class="form-control form-control-lg" id="anoPublicacion" name="libro.anoPublicacion" value="${libro.getAnoPublicacion()}" size="4" minlength="4" maxlength="4" onkeypress="return solonumeros(event)" onpaste="return false" required>                                                                        
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- Segunda columna -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="sinopsis" class="font-weight-bolder">Sinópsis</label>
                                <textarea class="form-control text-justify" id="word" name="libro.sinopsis" rows="8" size="800" maxlength="800" oninput="countWord()" required>${libro.getSinopsis()}</textarea>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                                <p><small id="show">0</small> <small> caracteres restantes de 800.</small></p>
                            </div>

                            <legend class="font-weight-normal">2.- Cargar archivos</legend>
                            <div class="form-group">
                                <label for="portada" class="font-weight-bolder">Portada (imagen)</label> 
                                <div class="input-group mb-3">                                                                           
                                    <input type="text" class="form-control form-control-lg" id="portada" name="libro.portada" value="${libro.getPortada()}" required>

                                    <div class="input-group-append">
                                        <button type="button" class="btn btn-lg btn-out-tertiary px-2" data-toggle="modal" data-target=".bd-example-modal-sm"><img src="../svg/ver.svg" height="25" alt="icon" loading="lazy"></button>                                    
                                    </div>
                                </div>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group mt-4">
                                <label for="archivoPDF" class="font-weight-bolder">Libro (PDF)</label>
                                <div class="input-group mb-3">                                                                           
                                    <input type="text" class="form-control form-control-lg" id="archivoPDF" name="libro.archivoPDF" value="${libro.getArchivoPDF()}"required>                                        
                                    <div class="input-group-append">
                                        <a class="btn btn-lg btn-out-tertiary px-2" target="_blank" href="${libro.archivoPDF}" role="button"><img src="../svg/ver.svg" height="25" alt="icon" loading="lazy"></a>                                    
                                    </div>
                                </div>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <legend class="font-weight-normal">3.- Disponibilidad</legend>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="numeroMaximoRevisores" class="font-weight-bolder">Número máximo de revisores</label>
                                    <input type="number" class="form-control form-control-lg" id="numeroMaximoRevisores" name="libro.numeroMaximoRevisores" value="${libro.getNumeroMaximoRevisores()}" size="4" min="1" max="99" onkeypress="return solonumeros(event)" onpaste="return false" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="numeroMaximoAlumnos" class="font-weight-bolder">Número máximo de alumnos</label>
                                        <input type="number" class="form-control form-control-lg" id="numeroMaximoAlumnos" name="libro.numeroMaximoAlumnos" value="${libro.getNumeroMaximoAlumnos()}" size="4" min="1" max="99" onkeypress="return solonumeros(event)" onpaste="return false" required>                                                                        
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>                                
                            </div>

                            <div class="form-group">
                                <label for="status" class="font-weight-bolder">Status</label>
                                <!--<input type="text" class="form-control form-control-lg" id="c" name="libro.edicion" placeholder="Segunda" required>-->
                                <select class="custom-select custom-select-lg" id="status" name="libro.estatus" required>
                                      <option selected disabled value="${libro.getEstatus()}">${libro.getEstatus()}</option>                                      
                                    <option>Libro sugerido</option>  
                                    <option>Libro disponible</option>
                                    <option>Libro no disponible</option>                                                                          
                                </select>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="text-center mt-3">
                                <a href="list" class="btn btn-lg btn-out-gray font-weight-normal my-2 mx-2">Cancelar</a>
                                <button type="submit" class="btn btn-lg btn-solid-secondary font-weight-normal">Guardar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </section>
        </main>

        <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="text-center">
                        <img src="${libro.portada}" width="200" height="250" class="img-thumbnail d-inline-block align-top rounded" alt="Portada del libro" loading="lazy">                                         
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
        <script type="text/javascript">
                                            (function camposVacios() {
                                                'use strict';
                                                window.addEventListener('load', function () {
                                                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                                    var forms = document.getElementsByClassName('needs-validation');
                                                    // Loop over them and prevent submission
                                                    var validation = Array.prototype.filter.call(forms, function (form) {
                                                        form.addEventListener('submit', function (event) {
                                                            if (form.checkValidity() === false) {
                                                                event.preventDefault();
                                                                event.stopPropagation();
                                                            }
                                                            form.classList.add('was-validated');
                                                        }, false);
                                                    });
                                                }, false);
                                            })();

                                            function solonumeros(e) {
                                                key = e.keyCode || e.which;

                                                teclado = String.fromCharCode(key).toLowerCase();

                                                numeros = "1234567890";

                                                especiales = "35-43-45";

                                                teclado_especial = false;

                                                for (var i in especiales) {
                                                    if (key == especiales[i]) {
                                                        teclado_especial = true;
                                                        break;
                                                    }
                                                }

                                                if (numeros.indexOf(teclado) == -1 && !teclado_especial) {
                                                    return false;
                                                }
                                            }

                                            function countWord() {

                                                // Get the input text value 
                                                var words = document
                                                        .getElementById("word").value;

                                                // Initialize the word counter 
                                                var count = 0;

                                                // Split the words on each 
                                                // space character  
                                                var split = words.split('');

                                                // Loop through the words and  
                                                // increase the counter when  
                                                // each split word is not empty 
                                                for (var i = 0; i < split.length; i++) {
                                                    if (split[i] != "") {
                                                        count += 1;
                                                        x = 800 - count;
                                                    }
                                                }

                                                // Display it as output 
                                                document.getElementById("show")
                                                        .innerHTML = x;
                                            }
        </script>
    </body>
</html>