<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Banco Platinum</title>
</head>
<body>

		<ul class="menu">
			<li><a href="http://localhost:49733/CtaCorriente/">Usuarios</a></li>
			<li><a href="http://localhost:49733/CtaCorriente/listPersonabd">Banca Persona</a></li>
			<li><a href="http://localhost:49733/CtaCorriente/listCuentabd">Cuentas Corrientes</a></li>
			<li><a href="http://localhost:49733/CtaCorriente/listTransferencia">Transferencias a terceros</a></li>

		</ul>	


	<div style="text-align: center">
		<h1>Bienvenido Banco Platinum</h1>
		<h1>Tu banco personal</h1>
	</div>
	

	
</body>
</html>
<style>
body{
	font-family: arial, helvetica;
	background: #e8e8e8;
}



.menu{
	list-style: none;
	padding: 0;
	background: #FFDD33;
	width: 90%;
	max-width: 1000px;
	margin: auto;
}

.menu li a{
	text-decoration: none;
	color: red;
	padding: 20px;
	display: block;
}

.menu li{
	display: inline-block;
	text-align: center;
}

.menu li a:hover{
	background: #3392FF;
}


</style>