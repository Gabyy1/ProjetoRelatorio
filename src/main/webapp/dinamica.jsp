<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/styles.css">
<title>Tabela Dinâmica</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
		<br />
	<div align="center" class="container">
		<form action="relatorio" method="post">
			<p class="title">
				<b> Tabela Dinamica</b>
			</p>
			<div  align="center">
			<table>
			<tr>
					<td>
						<input class="input_data" type="text" id="tarefa" name="tarefa" placeholder="Tarefa">
					</td>
					</tr>
					<tr>
					<td>
						<input class="input_data" type="number" min="0" step="1" id="vencido" name="vencido" placeholder="Vencido">
					</td>
					</tr>
					<tr>
					<td>
						<input class="input_data" type="number" min="0" step="1" id="d0" name="d0" placeholder="D0">
					</td>
					</tr>
					<tr>
					<td>
						<input class="input_data" type="number" min="0" step="1" id="D1" name="D1" placeholder="D1">
					</td>
					</tr>
					<tr>
					<td>
						<input class="input_data" type="number" min="0" step="1" id="D2" name="D2" placeholder="D2">
					
					</td>
					</tr>
					<tr>
					<td>
						<input class="input_data" type="number" id="D3" name="D3" placeholder="D3">
					</td>
			</tr>
			</table>
			</div>
			<div align="center">
			<tr>
			<td>
						<input  type="submit" id="botao" name="botao" value="Inserir">
					
						<input type="submit" id="botao" name="botao" value="Atualizar">
				
						<input type="submit" id="botao" name="botao" value="Deletar">
					</td>
					</tr>
					</div>
					</div>
					</form>
	<br />
	<div align="center">
		<H2><c:out value="${erro }" /></H2>
	</div>
	<div align="center">
		<H3><c:out value="${saida }" /></H3>
	</div>
</body>
</html>