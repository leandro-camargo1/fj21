<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<title>Lista de Contatos</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<table>
		<tr>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		</tr>
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${contatos}">
		
	<tr bgcolor="#${id.count % 2 == 0 ? '#d9ff66' : '#b3b3b3'}">
		<td>${contato.nome}</td>
		<td>
		<c:choose>
		<c:when test="${not empty contato.email}">
		<a href="mailto:${contato.email}">${contato.email}</a>
		</c:when>
		<c:otherwise>
		E-mail não informado
		</c:otherwise>
		</c:choose>
		</td>
		<td>${contato.endereco}</td>
		<td>
		<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" />
		</td>
		<td>
		<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
	</tr>
		</c:forEach>	
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>