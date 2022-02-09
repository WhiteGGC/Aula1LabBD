<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aula 1</title>
</head>
<body>

	<h1>Aula 1<h1>
	
	<div align="center">
		<form action="pessoa" method="post">
			<p><b>Cadastro de Pessoas</b><p>
			<table>
				<tr>
					<td>
						<input type="number" min="0" step="1" id="id" name="id"
						placeholder="#ID" required="required">
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" id="nome" name="nome"
						placeholder="Nome" required="required">
					</td>
				</tr>
				<tr>
					<td>
						<input type="date" id="dataNasc" name="dataNasc"
						placeholder="Data de Nascimento" required="required">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" id="enviar" name="enviar" value="Enviar">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<br/>
	<div align="center">
		<c:if test="${not empty pessoas }">
			<table border = "1">
				<thead>
					<tr>
						<th><b>ID</b></th>
						<th><b>Nome</b></th>
						<th><b>Data de Nascimento</b></th>
					<tr>
				<thead>
				<tbody>
					<c:forEach items="${pessoas }" var="p">
						<!--<c:out value="${p}"></c:out>-->
						<tr>
							<td><c:out value="${p.id }"></c:out>
							<td><c:out value="${p.nome }"></c:out>
							<td><c:out value="${p.data }"></c:out>
						</td>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
	
	
	
	
</body>
</html>