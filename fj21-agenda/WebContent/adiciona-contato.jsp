<!DOCTYPE html>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Contatos</title>
</head>
	<link href="css/jquery.css" rel="stylesheet"/>
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
	<body>
	<c:import url="cabecalho.jsp" />
	<h1>Adiciona Contatos</h1>
	<hr />
		<form action="adicionaContato">
		Nome: <input type="text" name="nome" /><br />
		E-mail: <input type="text" name="email" /><br />
		Endereço: <input type="text" name="endereco" /><br />
		Data Nascimento: 
		<caelum:campoData id="dataNascimento"/><br />
		<input type="submit" value="Salvar" />
		</form>
	<c:import url="rodape.jsp"/>
	</body>
</html>