<%-- 
    Document   : Usuario
    Created on : 06/05/2020, 09:06:07
    Author     : Raul
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html class="no-js" lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Xnexus</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="../../../../img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="../../../../css/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/owl.carousel.css">
        <link rel="stylesheet" href="../../../../css/owl.theme.css">
        <link rel="stylesheet" href="../../../../css/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="../../../../css/metisMenu/metisMenu-vertical.css">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="../../../../css/calendar/fullcalendar.print.min.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="../../../../css/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="../../../../js/vendor/modernizr-2.8.3.min.js"></script>


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
                        <a href="/xNexus-java-sports/protegido/index.jsp"><h2>Java Sports</h2></a>

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
                                                    <h2>Cadastrar Usuarios</h2>

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
                                    <form name = "cadastro usuario" action='${pageContext.request.contextPath}/protegido/funcionario/gerente/admin/CadastroUsuarioServlet' method='post'>
                                        <div id="myTabContent" class="tab-content custom-product-edit">
                                            <div class="product-tab-list tab-pane fade active in" id="description">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-user" aria-hidden="true"></i></span>
                                                                <input required="true"  type="text" class="form-control" placeholder="Código" name="id" id="txtCodigo" readonly="true">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                <input required="true" type="text" class="form-control" placeholder="Nome" name="Nome" id="Nome">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                <input required="true" type="text" class="form-control" placeholder="Login" name="Login" id="txtLogin">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                <input required="true" type="password" class="form-control" placeholder="Senha" name="Senha" id="txtSenha">
                                                            </div>

                                                            <select name="perfil" class="form-control pro-edt-select form-control-primary" required="true">
                                                                <option value="">Selecione o perfil do usuario</option>
                                                                <c:forEach var="perfil" items="${perfis}">
                                                                    <option value="${perfil}">${perfil}</option>

                                                                </c:forEach>
                                                            </select>

                                                            <br>

                                                            <input type="text" name="action" id="action" hidden="true">

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
                                                        <button type="submit"  class="btn btn-ctl-bt waves-effect waves-light m-r-10" id="btnSalvar">Salvar</button>
                                                        <button type="button" class="btn btn-ctl-bt waves-effect waves-light" id="btnLimpar" onclick="limpar()">Limpar</button>

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
                                            <h4>Lista de Usuarios cadastrados</h4>

                                            <table id="tblUsuario" onload="CadastroUsuarioServlet" method="GET">
                                                <thead>
                                                    <tr>
                                                        <th>Código</th>
                                                        <th>Nome</th>
                                                        <th>Login</th>
                                                        <th>Perfil</th>
                                                        <th>Ação</th>


                                                    </tr>
                                                </thead>


                                                <tbody>

                                                    <c:forEach items="${usuarios}" var="usuario">

                                                        <tr id="${usuario.id}">

                                                            <td id="id${usuario.id}"><c:out value="${usuario.id}"/></td>
                                                            <td id="login${usuario.id}"><c:out value="${usuario.nome}"/></td>
                                                            <td id="login${usuario.id}"><c:out value="${usuario.login}"/></td>
                                                            <td id="perfil${usuario.id}"><c:out value="${usuario.perfil}"/></td>
                                                            <td>

                                                                <button data-toggle="tooltip" title="Deletar" onClick="javascript:window.location = 'CadastroUsuarioServlet?action=excluir&id=${usuario.id}'" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
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


                    </div>
                </div>

                <div class="footer-copyright-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer-copy-right">
                                    <p>Integrantes</p>
                                    <p>Daniel Leite - Ederson Souza - Lucas Augusto - Lucas Paixão - Raul Barreto</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jquery
                    ============================================ -->
        <script src="../../../../js/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="../../../../js/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="../../../../js/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="../../../../js/jquery-price-slider.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="../../../../js/jquery.meanmenu.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="../../../../js/owl.carousel.min.js"></script>
        <!-- sticky JS
                    ============================================ -->
        <script src="../../../../js/jquery.sticky.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="../../../../js/jquery.scrollUp.min.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="../../../../js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="../../../../js/scrollbar/mCustomScrollbar-active.js"></script>
        <!-- metisMenu JS
                    ============================================ -->
        <script src="../../../../js/metisMenu/metisMenu.min.js"></script>
        <script src="../../../../js/metisMenu/metisMenu-active.js"></script>
        <!-- morrisjs JS
                    ============================================ -->
        <script src="../../../../js/sparkline/jquery.sparkline.min.js"></script>
        <script src="../../../../js/sparkline/jquery.charts-sparkline.js"></script>
        <!-- calendar JS
                    ============================================ -->
        <script src="../../../../js/calendar/moment.min.js"></script>
        <script src="../../../../js/calendar/fullcalendar.min.js"></script>
        <script src="../../../../js/calendar/fullcalendar-active.js"></script>
        <!-- tab JS
                    ============================================ -->
        <script src="../../../../js/tab.js"></script>
        <!-- plugins JS
                    ============================================ -->
        <script src="../../../../js/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="../../../../js/main.js"></script>

        <script>

                                                        function preencher(id2) {
                                                            document.getElementById("action").value = "alterar";

                                                            let id = document.getElementById("id" + id2);
                                                            let login = document.getElementById("login" + id2);
                                                            let senha = document.getElementById("senha" + id2);
                                                            let email = document.getElementById("email" + id2);
                                                            let perfil = document.getElementById("perfil" + id2);

                                                            document.getElementById("txtCodigo").value = id.textContent.trim();
                                                            document.getElementById("txtLogin").value = login.textContent.trim();
                                                            document.getElementById("txtSenha").value = senha.textContent.trim();
                                                            document.getElementById("txtEmail").value = email.textContent.trim();
                                                            document.getElementById("txtPerfil").value = perfil.textContent.trim();

                                                            document.getElementById("btnSalvar").disabled = true;
                                                            document.getElementById("btnAlterar").disabled = false;
                                                        }

                                                        function limpar() {
                                                            document.getElementById("txtCodigo").value = "";
                                                            document.getElementById("txtLogin").value = "";
                                                            document.getElementById("txtSenha").value = "";
                                                            document.getElementById("txtEmail").value = "";
                                                            document.getElementById("txtPerfil").value = "";
                                                        }
        </script>
    </body>

</html>
