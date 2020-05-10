<%-- 
    Document   : cliente
    Created on : 01/05/2020, 13:50:58
    Author     : ederson
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Xnexus</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="css/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>


    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">

                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">
                        <a href="#"><img src="img/notification/4.jpg" alt="" /></a>
                        <h2>Java <span class="min-dtn">Sports</span></h2>
                    </div>
                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li class="active">
                                <a class="has-arrow" href="index.html">
                                    <i class="icon nalika-home icon-wrap"></i>
                                    <span class="mini-click-non">Cadastros</span>
                                </a>
                                <ul class="submenu-angle" aria-expanded="true">
                                    <li><a title="Cadastrar Clientes" href="CadastroClienteServlet?action=listarCliente"><span class="mini-sub-pro">Cadastrar Clientes</span></a></li>
                                    <li><a title="Cadastrar Produto" href="cadastrarProdutos.html"><span class="mini-sub-pro">Cadastrar Produtos</span></a></li>
                                    <li><a title="Cadastrar Vendas" href="VendasServlet?action=listarVendas"><span class="mini-sub-pro">Cadastrar Vendas</span></a></li>                                   
                                    <li><a title="Cadastrar Filiais" href="cadastraFiliais.html"><span class="mini-sub-pro">Cadastrar Filiais</span></a></li>
                                </ul>
                            </li>

                            <li id="removable">
                                <a class="has-arrow" href="estoque.html" aria-expanded="false"><i class="icon nalika-new-file icon-wrap"></i> <span class="mini-click-non">Estoque</span></a>

                            </li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    </div>
                </div>
            </div>
            <div class="header-advance-area">
                <div class="header-top-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper">
                                    <div class="row">
                                        <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">

                                        </div>

                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item dropdown">




                                                        <div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">



                                                        </div>
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

                <div class="breadcome-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="breadcome-list">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                            <div class="breadcomb-wp">
                                                <div class="breadcomb-icon">
                                                    <i class="icon nalika-home"></i>
                                                </div>
                                                <div class="breadcomb-ctn">
                                                    <h2>Cadastrar Clientes</h2>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single pro tab start-->
            <div class="single-product-tab-area mg-b-30">
                <!-- Single pro tab review Start-->
                <div class="single-pro-review-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-tab-pro-inner">
                                    <ul id="myTab3" class="tab-review-design">
                                        <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Cadastro</a></li>

                                    </ul
                                    <!-- Aqui no Form você deve chamar no action o seu servlet e colocar o metodo post nele, 
                                    já que para cadastrar se trata de um post-->
                                    <form name = "cadastro cliente" action='CadastroClienteServlet' method='post'>
                                        <div id="myTabContent" class="tab-content custom-product-edit">
                                            <div class="product-tab-list tab-pane fade active in" id="description">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-user" aria-hidden="true"></i></span>
                                                                <input type="text" class="form-control" placeholder="Id" name="id" disabled>
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                <input type="text" class="form-control" placeholder="Nome" name="nome">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                <input type="text" class="form-control" placeholder="Sobrenome" name="sobrenome">
                                                            </div>

                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-favorites" aria-hidden="true"></i></span>
                                                                <input type="date" class="form-control" placeholder="Data de nascimento" name="dataNascimento">
                                                            </div>



                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-favorites" aria-hidden="true"></i></span>
                                                                <input type="text" class="form-control" placeholder="CPF" name="cpf">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-favorites" aria-hidden="true"></i></span>
                                                                <input type="text" class="form-control" placeholder="Telefone" name="telefone">
                                                            </div>

                                                            <select name="sexo" class="form-control pro-edt-select form-control-primary" name = "sexo">
                                                                <option value="Masculino">Masculino</option>
                                                                <option value="Feminino">Feminino</option>

                                                            </select>
                                                            <br>


                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="review-content-section">


                                                        </div>
                                                    </div>
                                                </div>

                                            </div>


                                            <br>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="text-center custom-pro-edt-ds">
                                                        <button type="submit" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Salvar</button>
                                                        <button type="button" class="btn btn-ctl-bt waves-effect waves-light">Limpar</button>

                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </form>




                                </div>

                            </div>

                        </div>


                        <div class="product-status mg-b-30">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="product-status-wrap">
                                            <h4>Lista de clientes cadastrados</h4>

                                            <table onload="CadastroClienteServlet" method="GET">
                                                <thead>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Nome</th>
                                                    <th>Sobrenome</th>
                                                    <th>Data</th>
                                                    <th>Cpf</th>
                                                    <th>Telefone</th>
                                                    <th>Sexo</th>
                                                    <th>Ação</th>


                                                </tr>
                                                </thead>
                                                
                                                
                                                <tbody>
                                                    <c:forEach items="${clientes}" var="cliente">
                                                        <tr>

                                                            <td><c:out value="${cliente.id}"/></td>
                                                            <td><c:out value="${cliente.nome}"/></td>
                                                            <td><c:out value="${cliente.sobrenome}"/></td>
                                                            <td><c:out value="${cliente.dataNascimento}"/></td>
                                                            <td><c:out value="${cliente.cpf}"/></td>
                                                            <td><c:out value="${cliente.telefone}"/></td>
                                                            <td><c:out value="${cliente.sexo}"/></td>
                                                            <td>
                                                                <button data-toggle="tooltip" title="Alterar" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                                                <button data-toggle="tooltip" title="Deletar" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                                            </td>

                                                        </tr>
                                                    </c:forEach>
                                                </tbody>

                                            </table>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer-copyright-area">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="footer-copy-right">
                                            <p>JavaSports desenvolvido por Xnexus</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- jquery
                                ============================================ -->
                    <script src="js/vendor/jquery-1.12.4.min.js"></script>
                    <!-- bootstrap JS
                                ============================================ -->
                    <script src="js/bootstrap.min.js"></script>
                    <!-- wow JS
                                ============================================ -->
                    <script src="js/wow.min.js"></script>
                    <!-- price-slider JS
                                ============================================ -->
                    <script src="js/jquery-price-slider.js"></script>
                    <!-- meanmenu JS
                                ============================================ -->
                    <script src="js/jquery.meanmenu.js"></script>
                    <!-- owl.carousel JS
                                ============================================ -->
                    <script src="js/owl.carousel.min.js"></script>
                    <!-- sticky JS
                                ============================================ -->
                    <script src="js/jquery.sticky.js"></script>
                    <!-- scrollUp JS
                                ============================================ -->
                    <script src="js/jquery.scrollUp.min.js"></script>
                    <!-- mCustomScrollbar JS
                                ============================================ -->
                    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
                    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
                    <!-- metisMenu JS
                                ============================================ -->
                    <script src="js/metisMenu/metisMenu.min.js"></script>
                    <script src="js/metisMenu/metisMenu-active.js"></script>
                    <!-- morrisjs JS
                                ============================================ -->
                    <script src="js/sparkline/jquery.sparkline.min.js"></script>
                    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
                    <!-- calendar JS
                                ============================================ -->
                    <script src="js/calendar/moment.min.js"></script>
                    <script src="js/calendar/fullcalendar.min.js"></script>
                    <script src="js/calendar/fullcalendar-active.js"></script>
                    <!-- tab JS
                                ============================================ -->
                    <script src="js/tab.js"></script>
                    <!-- plugins JS
                                ============================================ -->
                    <script src="js/plugins.js"></script>
                    <!-- main JS
                                ============================================ -->
                    <script src="js/main.js"></script>
                    </body>

                    </html>
