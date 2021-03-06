<%-- 
    Document   : index
    Created on : 13/05/2020, 20:54:56
    Author     : eders
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Xnexus</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="../../img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="../css/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/owl.carousel.css">
        <link rel="stylesheet" href="../css/owl.theme.css">
        <link rel="stylesheet" href="../css/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="../css/metisMenu/metisMenu-vertical.css">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="../css/calendar/fullcalendar.print.min.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="../style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="../css/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="../js/vendor/modernizr-2.8.3.min.js"></script>
    </head>


    <body>



        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">

                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">
                        <a href="index.jsp"><h2>Java Sports</h2></a>

                    </div>
                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li class="active">
                                <a class="has-arrow" href="index.jsp">
                                    <i class="icon nalika-home icon-wrap"></i>
                                    <span class="mini-click-non">Cadastros</span>
                                </a>
                                <ul class="submenu-angle" aria-expanded="true">
                                    <li><a href="<c:url value="/protegido/funcionario/CadastroClienteServlet?action=listarCliente"/>"><span class="mini-sub-pro">Cadastrar Clientes</span></a></li>
                                    <li><a href="<c:url value="/protegido/funcionario/CadastroProdutoServlet?action=listarProduto"/>"><span class="mini-sub-pro">Cadastrar Produtos</span></a></li>
                                    <li><a href="<c:url value="/protegido/funcionario/VendasServlet?action=listarVendas"/>"><span class="mini-sub-pro">Cadastrar Vendas</span></a></li>
                                    <li><a href="<c:url value="/protegido/funcionario/gerente/admin/CadastroFilialServlet?action=listarFilial"/>"><span class="mini-sub-pro">Cadastrar Filiais</span></a></li>
                                    <li><a href="<c:url value="/protegido/funcionario/gerente/admin/CadastroUsuarioServlet?action=listarUsuario"/>"><span class="mini-sub-pro">Cadastrar Usuario</span></a></li>
                                    <li><a href=""><span class="mini-sub-pro">Logout</span></a></li>
                                </ul>
                            </li>

                            <li id="removable">
                                <a class="has-arrow" href="<c:url value="/protegido/funcionario/estoque.jsp"/>" aria-expanded="false"><i
                                        class="icon nalika-new-file icon-wrap"></i> <span
                                        class="mini-click-non">Estoque</span></a>

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
                            <a href="index.html"><img class="main-logo" src="../img/logo/logo.png" alt="" /></a>
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
                                            <div class="menu-switcher-pro">
                                                <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                                    <i class="icon nalika-menu-task"></i>
                                                </button>
                                            </div>
                                        </div>

                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item">



                                                        <div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">

                                                            <ul class="nav nav-tabs custon-set-tab">
                                                                <li class="active"><a data-toggle="tab" href="#Notes">News</a>
                                                                </li>
                                                                <li><a data-toggle="tab" href="#Projects">Activity</a>
                                                                </li>
                                                                <li><a data-toggle="tab" href="#Settings">Settings</a>
                                                                </li>
                                                            </ul>

                                                            <div class="tab-content custom-bdr-nt">
                                                                <div id="Notes" class="tab-pane fade in active">
                                                                    <div class="notes-area-wrap">
                                                                        <div class="note-heading-indicate">
                                                                            <h2><i class="icon nalika-chat"></i> Latest News</h2>
                                                                            <p>You have 10 New News.</p>
                                                                        </div>
                                                                        <div class="notes-list-area notes-menu-scrollbar">
                                                                            <ul class="notes-menu-list">
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/4.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/1.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/2.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/3.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/4.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/1.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/2.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/1.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/2.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="../img/contact/3.jpg" alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                <span>Yesterday 2:45 pm</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div id="Projects" class="tab-pane fade">
                                                                    <div class="projects-settings-wrap">
                                                                        <div class="note-heading-indicate">
                                                                            <h2><i class="icon nalika-happiness"></i> Recent Activity</h2>
                                                                            <p> You have 20 Recent Activity.</p>
                                                                        </div>
                                                                        <div class="project-st-list-area project-st-menu-scrollbar">
                                                                            <ul class="projects-st-menu-list">
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New User Registered</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">1 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New Order Received</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">2 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New Order Received</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">3 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New Order Received</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">4 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New User Registered</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">5 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New Order</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">6 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New User</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">7 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>New Order</h2>
                                                                                                <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                <span class="project-st-time">9 hours ago</span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div id="Settings" class="tab-pane fade">
                                                                    <div class="setting-panel-area">
                                                                        <div class="note-heading-indicate">
                                                                            <h2><i class="icon nalika-gear"></i> Settings Panel</h2>
                                                                            <p> You have 20 Settings. 5 not completed.</p>
                                                                        </div>
                                                                        <ul class="setting-panel-list">
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Show notifications</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example">
                                                                                                <label class="onoffswitch-label" for="example">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Disable Chat</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example3">
                                                                                                <label class="onoffswitch-label" for="example3">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Enable history</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example4">
                                                                                                <label class="onoffswitch-label" for="example4">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Show charts</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example7">
                                                                                                <label class="onoffswitch-label" for="example7">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Update everyday</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example2">
                                                                                                <label class="onoffswitch-label" for="example2">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Global search</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example6">
                                                                                                <label class="onoffswitch-label" for="example6">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Offline users</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example5">
                                                                                                <label class="onoffswitch-label" for="example5">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </ul>

                                                                    </div>
                                                                </div>
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

                <!-- Mobile Menu end -->
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
                                                    <h2>Bem vindo!</h2>
                                                    <p>Seja bem vindo ao JavaSports<span class="bread-ntd"> Utilize as fun????es ao lado para realizar as atividades.</span></p>
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
            <div class="section-admin container-fluid">
                <div class="row admin text-center">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-sales-area mg-tb-30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <div class="product-sales-chart">
                                <div class="portlet-title">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="caption pro-sl-hd">
                                                <span class="caption-subject text-uppercase"><b>Relat??rio de Clientes</b></span>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="actions graph-rp">
                                                <div class="btn-group" data-toggle="buttons" >
                                                    <label class="btn btn-grey active" id="exportar">Exportar</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--<div id="curved-line-chart" class="flot-chart-sts flot-chart curved-chart-statistic"></div>-->
                                <canvas id="relVendas"></canvas>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="white-box analytics-info-cs mg-b-30 res-mg-t-30">
                                <h3 class="box-title">Quantidade de vendas realizadas</h3>
                                <ul class="list-inline two-part-sp">
                                    <li>
                                        <div id="sparklinedash"></div>
                                    </li>
                                    <li class="text-right sp-cn-r">
                                        <i class="fa fa-level-up" aria-hidden="true"></i> 
                                        <span class="counter sales-sts-ctn" id="qtdVenda">0</span>
                                    </li>
                                </ul>
                            </div>
                            <!--<div class="white-box analytics-info-cs mg-b-30">
                                <h3 class="box-title">Total de vendas no m???s</h3>
                                <ul class="list-inline two-part-sp">
                                    <li>
                                        <div id="sparklinedash2"></div>
                                    </li>
                                    <li class="text-right"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="counter sales-sts-ctn">7469</span></li>
                                </ul>
                            </div>-->
                            <div class="white-box analytics-info-cs mg-b-30">
                                <h3 class="box-title">Valor total de vendas R$</h3>
                                <ul class="list-inline two-part-sp">
                                    <li>
                                        <div id="sparklinedash3"></div>
                                    </li>
                                    <li class="text-right">
                                        <i class="fa fa-level-up" aria-hidden="true"></i> 
                                        <span class="counter sales-sts-ctn" id="valorVenda">0,00</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="traffic-analysis-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">


                        </div>
                        <div class="product-sales-area mg-tb-30">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                        <div class="product-sales-chart">
                                            <div class="portlet-title">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="caption pro-sl-hd">
                                                            <span class="caption-subject text-uppercase"><b>Relat??rios de faturamento</b></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="actions graph-rp">

                                                            <div class="btn-group" data-toggle="buttons" >
                                                                <label class="btn btn-grey active" id="exportarFaturamento">Exportar</label>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--<div id="line-chart" class="flot-chart flot-chart-sts line-chart-statistic"></div>-->
                                            <canvas id="relFaturamento"></canvas>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="infoFaturamento">
                                        <!--<div class="analytics-rounded mg-b-30 res-mg-t-30">
                                            <div class="analytics-rounded-content">
                                                <h5>Faturamento da filial 1</h5>
                                                <h2><span class="counter">1220</span></h2>

                                            </div>
                                        </div>
                                        <div class="analytics-rounded">
                                            <div class="analytics-rounded-content">
                                                <h5>Faturamento da filial 2</h5>
                                                <h2><span class="counter">150</span></h2>

                                            </div>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-sales-area mg-tb-30">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                        <div class="product-sales-chart">
                                            <div class="portlet-title">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="caption pro-sl-hd">
                                                            <span class="caption-subject text-uppercase"><b>Relat??rios de Produtos</b></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="actions graph-rp">

                                                            <div class="btn-group" data-toggle="buttons" >
                                                                <label class="btn btn-grey active" id="exportarProdutos">Exportar</label>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--<div id="line-chart" class="flot-chart flot-chart-sts line-chart-statistic"></div>-->
                                            <canvas id="relQtdProdutos"></canvas>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="infoFaturamento">
                                        <!--<div class="analytics-rounded mg-b-30 res-mg-t-30">
                                            <div class="analytics-rounded-content">
                                                <h5>Faturamento da filial 1</h5>
                                                <h2><span class="counter">1220</span></h2>

                                            </div>
                                        </div>
                                        <div class="analytics-rounded">
                                            <div class="analytics-rounded-content">
                                                <h5>Faturamento da filial 2</h5>
                                                <h2><span class="counter">150</span></h2>

                                            </div>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="footer-copyright-area">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="footer-copy-right">
                                            <p>JavaSports desenvolvido por Xnexus</p>
                                            <br>
                                            <p>Integrantes</p>
                                            <p>Daniel Leite ??? Ederson Souza ??? Lucas Augusto ??? Lucas Paix??o ??? Raul Barreto</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 

                    <script src="../js/vendor/jquery-1.12.4.min.js"></script>

                    <script src="../js/bootstrap.min.js"></script>

                    <script src="../js/wow.min.js"></script>

                    <script src="../js/jquery-price-slider.js"></script>

                    <script src="../js/jquery.meanmenu.js"></script>

                    <script src="../js/owl.carousel.min.js"></script>

                    <script src="../js/jquery.sticky.js"></script>

                    <script src="../js/jquery.scrollUp.min.js"></script>

                    <script src="../js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
                    <script src="../js/scrollbar/mCustomScrollbar-active.js"></script>

                    <script src="../js/metisMenu/metisMenu.min.js"></script>
                    <script src="../js/metisMenu/metisMenu-active.js"></script>

                    <script src="../js/sparkline/jquery.sparkline.min.js"></script>
                    <script src="../js/sparkline/jquery.charts-sparkline.js"></script>

                    <script src="../js/calendar/moment.min.js"></script>
                    <script src="../js/calendar/fullcalendar.min.js"></script>
                    <script src="../js/calendar/fullcalendar-active.js"></script>

                    <script src="../js/flot/jquery.flot.js"></script>
                    <script src="../js/flot/jquery.flot.resize.js"></script>
                    <script src="../js/flot/curvedLines.js"></script>
                    <script src="../js/flot/flot-active.js"></script>

                    <script src="../js/plugins.js"></script>


                    <script src="../js/main.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
                    <script src="../js/grafico-api/chartjs.js"></script>
                    <script src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script>
                    <script src="https://unpkg.com/jspdf-autotable@3.5.3/dist/jspdf.plugin.autotable.js"></script>
                    <script>
                        function montarGrafico(nameId, type, labels, valores, nomeGrafico) {
                            try {

                                var ctx = document.getElementById(nameId).getContext('2d');
                                var myChart = new Chart(ctx, {
                                    type: type,
                                    data: {
                                        labels: labels,
                                        datasets: [{
                                                label: nomeGrafico,
                                                data: valores,
                                                backgroundColor: [
                                                    'rgba(255, 99, 132, 0.2)',
                                                    'rgba(54, 162, 235, 0.2)',
                                                    'rgba(255, 206, 86, 0.2)',
                                                    'rgba(75, 192, 192, 0.2)',
                                                    'rgba(75, 192, 192, 0.2)'
                                                ],
                                                borderColor: [
                                                    'rgba(255, 99, 132, 1)',
                                                    'rgba(54, 162, 235, 1)',
                                                    'rgba(255, 206, 86, 1)',
                                                    'rgba(75, 192, 192, 1)',
                                                    'rgba(153, 102, 255, 1)'
                                                ],
                                                borderWidth: 1
                                            }]
                                    },
                                    options: {
                                        scales: {
                                            yAxes: [{
                                                    ticks: {
                                                        beginAtZero: true
                                                    }
                                                }]
                                        }
                                    }
                                });

                                return myChart;

                            } catch (error) {
                                alert('N??o foi poss??vel carregar o gr??fico');
                                return false;
                            }
                        }

                    </script>
                    <script>

                        async function faturamento() {
                            try {
                                var faturamento = document.getElementById('infoFaturamento');
                                var valores = await getInfoGrafico();
                                var resultado = JSON.parse(valores);
                                console.log(resultado == false)
                                if (resultado == false) {
                                    alert("Para exibir os relat??rios, cadastre pelo menos uma filial, um cliente, um produto e realize uma venda!");
                                }
                                var html = '';
                                resultado.forEach(function (elementos) {

                                    html += "<div class='analytics-rounded mg-b-30 res-mg-t-30'>";
                                    html += "<div class='analytics-rounded-content'>";
                                    html += "<h5>" + elementos.nome + "</h5>";
                                    html += "<h2><span class='counter'>R$ " + (elementos.total.toFixed(2)).replace('.', ',') + "</span></h2>";
                                    html += "</div>";
                                    html += "</div>";
                                })

                                faturamento.innerHTML = html;
                            } catch (error) {
                                alert("Para exibir os relat??rios, cadastre pelo menos uma filial, um cliente, um produto e realize uma venda!");
                                return false;
                            }
                        }

                        async function getInfoGrafico() {
                            try {

                                var host = window.location.host;
                                var protocol = window.location.protocol;
                                var url = '';

                                if (host[host.length - 1] == "/") {
                                    url = protocol + "//" + host + "RelatorioFilialServlet";

                                } else {
                                    url = protocol + "//" + host + "/RelatorioFilialServlet";
                                }

                                var res = await fetch(url);
                                return res.text();
                            } catch (error) {
                                return false;
                            }
                        }

                    </script>
                    <script>

                        async function armazenaDados() {
                            try {
                                var resultado = await getInfoGrafico();
                                var info = JSON.parse(resultado);
                                var labels = [], totalFaturamento = [];
                                var total = 0;
                                info.forEach(function (e) {
                                    labels.push(e.nome);
                                    totalFaturamento.push(e.total);
                                    total += e.total;
                                });

                                var percent = totalFaturamento.map(function (numero) {
                                    return eval((numero / total * 100).toFixed(2));
                                });

                                montarGrafico('relFaturamento', 'pie', labels, percent, 'Faturamento');

                            } catch (error) {
                                return false;
                            }
                        }
                    </script>
                    <script>

                        async function armezenaDadosGraficoCliente() {
                            try {
                                var resultado = await montaGraficoCliente();
                                var json = JSON.parse(resultado);
                                var nomeCliente = [], valoresCliente = [];

                                json.forEach(function (elementos) {
                                    nomeCliente.push(elementos.nome + " " + elementos.sobrenome);
                                    valoresCliente.push(elementos.total);
                                })
                                montarGrafico('relVendas', 'bar', nomeCliente, valoresCliente, 'Cliente');

                            } catch (error) {
                                return false;
                            }
                        }

                        async function montaGraficoCliente() {
                            try {

                                var host = window.location.host;
                                var protocol = window.location.protocol;
                                var url = '';

                                if (host[host.length - 1] == "/") {
                                    url = protocol + "//" + host + "RelatorioClienteServlet";

                                } else {
                                    url = protocol + "//" + host + "/RelatorioClienteServlet";
                                }


                                var resultadoCliente = await fetch(url);
                                return resultadoCliente.text();
                            } catch (error) {
                                return false;
                            }

                        }
                    </script>
                    <script>

                        async function gerarGraficoProduto() {
                            try {
                                var produto = await montaGraficoProduto();
                                var arr = JSON.parse(produto);
                                var nomeProduto = [], qtdProduto = [];

                                arr.forEach(function (elementos) {
                                    nomeProduto.push(elementos.nome);
                                    qtdProduto.push(elementos.total);
                                });

                                montarGrafico('relQtdProdutos', 'bar', nomeProduto, qtdProduto, 'Produtos');

                            } catch (error) {
                                return false
                            }
                        }

                        async function montaGraficoProduto() {
                            try {
                                var host = window.location.host;
                                var protocol = window.location.protocol;
                                var url = '';

                                if (host[host.length - 1] == "/") {
                                    url = protocol + "//" + host + "RelatorioProdutoServlet";

                                } else {
                                    url = protocol + "//" + host + "/RelatorioProdutoServlet";
                                }


                                var resultadoCliente = await fetch(url);
                                return resultadoCliente.text();
                            } catch (error) {
                                return false;
                            }

                        }
                    </script>
                    <script>
                        main();
                        async function main() {
                            try {
                                await faturamento();
                                await armazenaDados();
                                await armezenaDadosGraficoCliente();
                                await gerarGraficoProduto();
                                await carregaQuantidadeProduto();
                                await carregaTotalVenda();
                            } catch (error) {
                                return false;
                            }
                        }

                        async function carregaQuantidadeProduto() {
                            var qtdTotal = document.getElementById("qtdVenda");
                            try {
                                var qtdProdutoVendidos = await montaGraficoProduto();
                                var qtdProdutos = JSON.parse(qtdProdutoVendidos);
                                var sum = 0;

                                qtdProdutos.forEach(function (elementos) {
                                    sum += elementos.total;
                                });

                                qtdTotal.innerHTML = sum;

                            } catch (error) {
                                return false;
                            }
                        }


                        async function carregaTotalVenda() {
                            var valorVenda = document.getElementById('valorVenda');
                            try {
                                var resultadoVendas = await getInfoGrafico();
                                var totalVendas = JSON.parse(resultadoVendas);
                                var sum = 0;

                                totalVendas.forEach(function (elementos) {
                                    sum += elementos.total;
                                })
                                valorVenda.innerHTML = 'R$ ' + sum.toFixed(2).replace('.', ',');
                            } catch (error) {
                                return false;
                            }
                        }
                    </script>
                    <script>

                        var exportar = document.getElementById("exportar");
                        var faturamento = document.getElementById("exportarFaturamento");
                        var produto = document.getElementById("exportarProdutos");
                        
                        exportar.addEventListener("click", async function () {
                            var clientes = await montaGraficoCliente();
                            var c = JSON.parse(clientes);
                            var total = 0;
                            var head = ["ID", "NOME", "SOBRENOME", "TOTAL"]
                            var doc = new jsPDF();
                            var globala = [];
                            for (var cliente of c) {
                                var array = new Array();
                                array.push(cliente.id);
                                array.push(cliente.nome);
                                array.push(cliente.sobrenome);
                                array.push('R$ ' + (cliente.total).toFixed(2).replace('.', ','));
                                globala.push(array);
                                total += cliente.total;
                            }
                            console.log(globala);
                            doc.autoTable({
                                head: [["ID", "NOME", "SOBRENOME", "TOTAL"]],
                                body: globala,
                                foot: [["TOTAL", "", "", "R$ " + (total).toFixed(2).replace('.', ',')]]
                            })
                            doc.save('relatorioCliente.pdf');
                        });
                        
                        
                        faturamento.addEventListener("click", async function(){
                            var fatura = await getInfoGrafico();
                            var f = JSON.parse(fatura);
                            var total = 0;
                            var doc = new jsPDF();
                            var globala = [];
                            for (var faturamento of f) {
                                var array = new Array();
                                array.push(faturamento.id);
                                array.push(faturamento.nome);
                                array.push('R$ ' + (faturamento.total).toFixed(2).replace('.', ','));
                                globala.push(array);
                                total += faturamento.total;
                            }
                            
                            doc.autoTable({
                                head: [["ID", "FILIAL", "TOTAL"]],
                                body: globala,
                                foot: [["TOTAL", "", "R$ " + (total).toFixed(2).replace('.', ',')]]
                            })
                            doc.save('relatorioFaturamento.pdf');
                        })
                        
                        produto.addEventListener("click", async function(){
                            var produtos = await montaGraficoProduto();
                            var p = JSON.parse(produtos);
                            var total = 0;
                            var doc = new jsPDF();
                            var globala = [];
                            for (var prod of p) {
                                var array = new Array();
                                array.push(prod.id);
                                array.push(prod.nome);
                                array.push(prod.total);
                                globala.push(array);
                                total += prod.total;
                            }
                            
                            doc.autoTable({
                                head: [["ID", "PRODUTO", "QUANTIDADE"]],
                                body: globala,
                                foot: [["TOTAL", "", total]]
                            })
                            doc.save('relatorioProduto.pdf');
                        })

                    </script>
                    </body>

                    </html>