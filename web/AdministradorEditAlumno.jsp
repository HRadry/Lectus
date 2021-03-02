<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para editar alumno">        
        <title>Editar</title>
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
                    <li class="breadcrumb-item"><a href="/lectus/alumno/list">Administrar alumnos</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Editar alumno</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Editar alumno</h1>
            </div>
        </div>

        <main role="main" class="inner cover container mt-4 mb-2">                     
            <section class="form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column">
                <form class="needs-validation" novalidate action="/lectus/alumno/update" method="POST">
                    <input type="hidden" name="usuario.tipoUsuario" value="Alumno">
                    <input type="hidden" name="usuario.idUsuario" value="${usuario.getIdUsuario()}">
                    <div class="row">
                        <div class="col-md-6">
                            <legend class="font-weight-normal">1.- Datos generales del alumno</legend>
                            <div class="form-group">
                                <label for="nombre" class="font-weight-bolder">Nombre</label>
                                <input type="text" class="form-control form-control-lg" id="nombre" name="usuario.nombre" value="${usuario.getNombre()}" size="45" maxlength="45" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="apellidoPaterno" class="font-weight-bolder">Apellido paterno</label>
                                <input type="text" class="form-control form-control-lg" id="apellidoPaterno" name="usuario.apellidoPaterno" value="${usuario.getApellidoPaterno()}" size="45" maxlength="45" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="apellidoMaterno" class="font-weight-bolder">Apellido materno</label>
                                <input type="text" class="form-control form-control-lg" id="apellidoMaterno" name="usuario.apellidoMaterno" value="${usuario.getApellidoMaterno()}" size="45" maxlength="45" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="telefono" class="font-weight-bolder">Telefono</label>
                                <input type="phone" class="form-control form-control-lg" id="telefono" name="" value="" size="45" minlength="45" maxlength="45" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>    
                        </div>

                        <div class="col-md-6">
                            <legend class="font-weight-normal">2.- Datos académicos</legend>
                            <div class="form-group">
                                <label for="matricula" class="font-weight-bolder">Matrícula</label>
                                <input type="number" class="form-control form-control-lg" id="matricula" name="usuario.matricula" value="${usuario.getMatricula()}" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>
                                
                            <div class="form-group">
                                <label for="carrera" class="font-weight-bolder">Carrera</label>
                                <select class="custom-select custom-select-lg" id="carrera" name="usuario.carrera" value="${usuario.getCarrera()}" required>
                                    <option selected hidden>${usuario.getCarrera()}</option>       
                                    <option>Ingeniería Forestal</option>
                                    <option>Licenciatura en Biología</option>
                                    <option>Licenciatura en Informática</option>
                                    <option>Licenciatura en Ciencias Ambientales</option>
                                    <option>Ingeniería en Tecnología de la Madera</option>
                                    <option>Licenciatura en Administración Turística</option>
                                </select>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div> 
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="semestre" class="font-weight-bolder">Semestre</label>
                                        <select class="custom-select custom-select-lg" id="semestre" name="usuario.semestre" value="${usuario.getSemestre()}" required>
                                            <option selected hidden>${usuario.getSemestre()}</option> 
                                            <option>Primero</option>
                                            <option>Segundo</option>
                                            <option>Tercero</option>
                                            <option>Cuarto</option>
                                            <option>Quinto</option>
                                            <option>Sexto</option>
                                            <option>Séptimo</option>
                                            <option>Octavo</option>
                                            <option>Noveno</option>
                                            <option>Décimo</option>                                    
                                        </select>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="grupo" class="font-weight-bolder">Grupo</label>
                                        <input type="text" class="form-control form-control-lg" id="grupo" name="usuario.grupo" value="${usuario.getGrupo()}" size="45" maxlength="45" required>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>
                            </div>                                                        
                            
                            <legend class="font-weight-normal">3.- Datos del sistema</legend>
                            <div class="form-group">
                                <label for="correo" class="font-weight-bolder">Correo electrónico</label>
                                <input type="email" class="form-control form-control-lg" id="correo" name="usuario.correo" value="${usuario.getCorreo()}" size="45" maxlength="45" required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>
                                
                            <div class="form-group">
                                <label for="password" class="font-weight-bolder">Contraseña</label> 
                                <div class="input-group mb-3">                                                                           
                                    <input type="text" class="form-control form-control-lg" id="password" name="usuario.password" value="${usuario.getPassword()}" size="45" minlength="8" maxlength="45" required>                                    
                                </div>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="text-center mt-4">
                                <a href="/lectus/alumno/list" class="btn btn-lg btn-out-gray font-weight-normal my-2 mx-2">Cancelar</a>
                                <button type="submit" class="btn btn-lg btn-solid-secondary font-weight-normal">Guardar</button>
                            </div>
                        </div>
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
                        x = 425 - count;
                    }
                }

                // Display it as output 
                document.getElementById("show")
                        .innerHTML = x;
            }

            $('.custom-file-input').on('change', function () {
                var fileName = document.getElementById("nameFile1").files[0].name;
                $(this).next('.form-control-file').addClass("selected").html(fileName);
            });

            $('.custom-file-input').on('change', function () {
                var fileName = document.getElementById("nameFile2").files[0].name;
                $(this).next('.form-control-file').addClass("selected").html(fileName);
            });

            /*Generador de contraseña*/
            const input = document.querySelector('#password');
            const button = document.querySelector('#btn-password');

            button.addEventListener('click', () => {
                input.value = GeneratePassword(16);
            });

            function GeneratePassword(length = 17) {
                const charset = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567890@#$%&';

                let password = '';

                for (let i = 0; i < length; ++i) {
                    let at = Math.floor(Math.random() * (charset.length + 1));
                    password += charset.charAt(at);
                }
                return password;
            }
        </script>
    </body>
</html>