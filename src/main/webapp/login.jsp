<%-- 
    Document   : login
    Created on : 15/05/2020, 19:44:39
    Author     : eders
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/evento/bootstrap.css">
<link rel="stylesheet" href="css/evento/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<title>Login</title>
</head>
<body>

	<div class="container-fluid bg">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12 my-5">
				<form class="form-conatiner" method="post">
					<h2>Login</h2>
					<div class="form-group">
						<label for="nome"><i class="far fa-user text-primary"></i>
							Nome</label> <input type="text" class="form-control" name="nome" value=""
							aria-describedby="emailHelp" placeholder="Nome"> <label
							for="local"><i class="fas fa-map-marker-alt text-primary"></i>
							Senha</label> <input type="password" class="form-control" name="local"
							value="" aria-describedby="emailHelp" placeholder="Senha">
						

					</div>
					<button class="btn btn-primary btn-block" type="submit">
						<a href="index.jsp"><i class="fas fa-paper-plane text"></i>Entrar</a></a>
					</button>

				</form>


</body>
</html>