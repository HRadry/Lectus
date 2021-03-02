<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para la administración de libros">
        <title>Administrar libros</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">
        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">
        <!-- Custom styles for DataTable -->
        <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">        
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
                    <li class="breadcrumb-item"><a href="/lectus/panel/revisor">Panel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Calificar reportes de lectura</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Calificar reportes de lectura</h1>
            </div>
        </div>

        <div class="table-responsive container mt-4 mb-4">
            <table id="example" class="table table-striped">
                <thead>
                    <tr class="table-active">
                        <th class="align-middle text-justify">Nombre</th>
                        <th class="align-middle text-justify">Carrera</th>
                        <th class="align-middle text-justify">Grupo</th>
                        <th class="align-middle text-center">Reporte</th>
                        <th class="align-middle text-center">Calificar</th>
                    </tr>
                </thead>

                <tbody>
                    <s:iterator value="usuarios">
                        <tr>
                            <td class="text-left align-middle" ><s:property value="nombre"/> <s:property value="apellidoPaterno"/> <s:property value="apellidoMaterno"/></td>                            
                            <td class="text-left align-middle"><s:property value="carrera"/></td> 
                            <td class="text-center align-middle"><s:property value="grupo"/></td>
                            <td class="text-center align-middle">
                                <a class="btn btn-outline-danger" target="_blank" href="https://drive.google.com/file/d/1YhhSdRMAsF9HNVgu3myrOt_oeThIBkb_/view?usp=sharing" role="button"> <img src="../svg/pdf.svg" width="35" height="35"> </a>
                            </td>
                            <td class="text-center align-middle">
                                <a class="btn btn-outline-warning " data-toggle="modal" data-target="#staticBackdrop" role="button"> <img src="../svg/calificacion.svg" width="35" height="35"> </a>
                            </td>
                        </tr>
                    </s:iterator>                   
                </tbody>

                <tfoot>
                    <tr class="table-active">
                        <th class="align-middle text-justify">Nombre</th>
                        <th class="align-middle text-justify">Carrera</th>
                        <th class="align-middle text-justify">Grupo</th>
                        <th class="align-middle text-center">Reporte</th>
                        <th class="align-middle text-center">Calificar</th>
                    </tr>
                </tfoot>
            </table>
        </div> 

        <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header background-primary text-light">
                        <h5 class="modal-title" id="exampleModalLabel">Asignar calificación</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">
                                <img src="../svg/cerrar.svg" width="20" height="20">
                            </span>
                        </button>
                    </div>
                    <div class="modal-body  pb-0 mb-0">
                        <div class="container-fluid">
                            <form class="needs-validation" novalidate action="EntregaReporte/calificar" method="POST">
                                <input type="hidden" name="action" value="store">

                                <div class="row">
                                    <div class="col-md-8 align-middle d-flex align-items-center">
                                        <label for="legibilidad" class="font-weight-bolder">Legibilidad:</label>                                    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="number" class="form-control form-control-lg" id="legibilidad" name=" " min="0" step="1" max="2.5" required>                                                                        
                                            <div class="invalid-feedback">
                                                Este campo es necesario 👆, por favor, acomplételo.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-8 align-middle d-flex align-items-center">
                                        <label for="ortografia" class="font-weight-bolder">Ortografía:</label>                                    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="number" class="form-control form-control-lg" id="ortografia" name=" " min="0" step="1" max="2.5" required>                                                                        
                                            <div class="invalid-feedback">
                                                Este campo es necesario 👆, por favor, acomplételo.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-8 align-middle d-flex align-items-center">
                                        <label for="redaccion" class="font-weight-bolder">Redacción:</label>                                    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="number" class="form-control form-control-lg" id="redaccion" name=" " min="0" step="1" max="2.5" required>                                                                        
                                            <div class="invalid-feedback">
                                                Este campo es necesario 👆, por favor, acomplételo.
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-8 align-middle d-flex align-items-center">
                                        <label for="estructura" class="font-weight-bolder">Estructura:</label>                                    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="number" class="form-control form-control-lg" id="estructura" name=" " min="0" step="1" max="2.5" required>                                                                        
                                            <div class="invalid-feedback">
                                                Este campo es necesario 👆, por favor, acomplételo.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-8 align-middle d-flex align-items-center">
                                        <label for="estructura" class="font-weight-bolder">Calificación final:</label>                                    
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="number" class="form-control form-control-lg" id="estructura" name=" " readonly>                                                                        
                                            <div class="invalid-feedback">
                                                Este campo es necesario 👆, por favor, acomplételo.
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">   
                                        <label for="calificacion" class="font-weight-bolder">Observaciones:</label> 
                                        <div class="form-group">
                                            <textarea class="form-control" id="sinopsis" name="entregaReporte.comentarios" rows="4" placeholder="Escriba alguna observación"></textarea>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="modal-footer px-0">
                                    <button type="button" class="btn btn-lg btn-out-gray" data-dismiss="modal">Cancelar</button>
                                    <button type="submit" class="btn btn-lg btn-solid-secondary">Asignar</button>
                                </div>
                            </form>
                        </div>
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

        <!-- Bootstrap core Data Table JQuery -->    
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>    
        <!-- ================================================== -->

        <script type="text/javascript">
            $(document).ready(function () {
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

                $('#example').DataTable({
                    "oLanguage": {
                        "sSearch": '<a class="btn btn-lg searchBtn color-text-primary" id="searchBtn"><b>Buscar <img src="../svg/buscar.svg" width="30" height="30"></b></a>',
                        "sLengthMenu": '<a class="btn btn-lg color-text-primary"><b> Mostar _MENU_ registros</b></a>'
                    },
                    language: {
                        "sProcessing": "Procesando...",
                        "sZeroRecords": "No se encontraron resultados 😢",
                        "sEmptyTable": "Ningún dato disponible en esta tabla",
                        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sInfoPostFix": "",
                        "sUrl": "",
                        "sInfoThousands": ",",
                        "sLoadingRecords": "Cargando...",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "oAria": {
                            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                        },
                        "buttons": {
                            "copy": "Copiar",
                            "colvis": "Visibilidad"
                        }
                    },
                    "columnDefs": [
                        {orderable: false, targets: 1},
                        {orderable: false, targets: 2},
                        {orderable: false, targets: 3},
                        {orderable: false, targets: 4}
                    ],
                    order: [[0, 'asc']]
                });

                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 2000);
            });
        </script>
    </body>
</html>