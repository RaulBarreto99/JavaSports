<%-- 
    Document   : vendas
    Created on : 23/04/2020, 22:07:58
    Author     : lucas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
                        <h2>Lucas <span class="min-dtn">Souza</span></h2>
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
                                    <li><a title="Cadastrar Clientes" href="cadastrarCliente.html"><span class="mini-sub-pro">Cadastrar Clientes</span></a></li>
                                    <li><a title="Cadastrar Produto" href="cadastrarProdutos.html"><span class="mini-sub-pro">Cadastrar Produtos</span></a></li>
                                    <li><a title="Cadastrar Vendas" href="VendasServlet?action=listarVendas"><span class="mini-sub-pro">Cadastrar Vendas</span></a></li>
                                    <li><a title="Cadastrar Funcionário" href="cadastrarFuncionarios.html"><span class="mini-sub-pro">Cadastrar Funcionários</span></a></li>
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
                        <div class="logo-pro">
                            <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                        </div>
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
                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                            <div class="header-top-menu tabl-d-n">
                                                <div class="breadcome-heading">
                                                    <form role="search" class="">
                                                        <input type="text" placeholder="Search..." class="form-control">
                                                        <a href=""><i class="fa fa-search"></i></a>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item dropdown">

                                                    <li class="nav-item">
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <i class="icon nalika-user"></i>
                                                            <span class="admin-name">Lucas Souza</span>
                                                            <i class="icon nalika-down-arrow nalika-angle-dw"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                            <li><a href="#"><span class="icon nalika-user author-log-ic"></span> Alterar Senha</a>
                                                            </li>

                                                            <li><a href="login.html"><span class="icon nalika-unlocked author-log-ic"></span> Log Out</a>
                                                            </li>
                                                        </ul>
                                                    </li>


                                                    <div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">


                                                        <div class="tab-content custom-bdr-nt">
                                                            <div id="Notes" class="tab-pane fade in active">
                                                                <div class="notes-area-wrap">

                                                                    <div class="notes-list-area notes-menu-scrollbar">



                                                                    </div>
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
                                                                <h2>Cadastrar Vendas</h2>

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

                        <div class="container ml-5 mr-5" id="workspace">
                            <div class="product-status mg-b-30">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="product-status-wrap">
                                                <h4>Lista de vendas</h4>

                                                <table onload="VendasServlet" method="GET">
                                                    <thead>
                                                        <tr>
                                                            <th>Id da Venda</th>
                                                            <th>Id do Cliente</th>
                                                            <th>Nome da filial</th>
                                                            <th>Valor Total</th>
                                                            <th>Data da Venda</th>
                                                            <th>Detalhar Venda</th>


                                                        </tr>
                                                    </thead>


                                                    <tbody>
                                                        <c:forEach items="${vendas}" var="venda">
                                                            <tr>

                                                                <td><c:out value="${venda.id}"/></td>
                                                                <td><c:out value="${venda.idCliente}"/></td>
                                                                <td><c:out value="${venda.idFilial}"/></td>
                                                                <td><c:out value="${venda.valorTotal}"/></td>
                                                                <td><c:out value="${venda.dataVenda}"/></td>

                                                                <td>
                                                                    <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                                                </td>

                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>

                                                </table>

                                                <div class="row m-t-xl">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt-5">
                                                        <div class="text-right custom-pro-edt-ds">
                                                            <form action="VendasServlet">
                                                                <button type="submit" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Nova Venda
                                                                </button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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

                    <script src="js/classes/VendasViewJS.js"></script>
                    <script>
                                                    let vendasViewJS = new VendasViewJS();
                    </script>
                    </body>
                    </html>
