<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/styles.css">
<title>Tabela Estática</title>
</head>
<body>
<div>
		<jsp:include page="menu.jsp" />
	</div>
		<br />
	<div align="center" class="container">
		<form action="estatica" method="post">
			<p class="title">
				<b></b>
			</p>
		
 <div align="center">
 		<table class="table_round">
 		<thead>
 			<tr>
 			<th class="th_dash"><b>TAREFA</b></th>
 			<th class="th_dash"><b>VENCIDO</b></th>
 			<th class="th_dash"><b>  D0  </b></th>
 			<th class="th_dash"><b>  D1  </b></th>
 			<th class="th_dash"><b>  D2  </b></th>
 			<th class="th_dash"><b>  D3  </b></th>
 			<th class="th_dash"><b> TOTAL </b></th>
 			</tr>
		</thead>
		<tbody>
			<tr>
			<td class="dashh" >Fila-Aguardando Tratativa</td>
			<td class="dash" align="center">0</td>
			<td class="td_dash" align="center">0</td>
			<td class="td_dash1" align="center">0</td>
			<td class="td_dash2" align="center">0</td>
			<td class="td_dash3" align="center">5</td>
			<td class="dash" align="center">5</td>
			</tr>
			
			<tr>
			<td class="dashh" >Em Tratativa</td>
			<td class="dash" align="center">23</td>
			<td class="td_dash" align="center">7</td>
			<td class="td_dash1" align="center">4</td>
			<td class="td_dash2" align="center">11</td>
			<td class="td_dash3" align="center">16</td>
			<td class="dash" align="center">61</td>
			</tr>
			
			<tr>
			<td class="dashh">Aguardando Área</td>
			<td class="dash" align="center">5</td>
			<td class="td_dash" align="center">4</td>
			<td class="td_dash1" align="center">0</td>
			<td class="td_dash2" align="center">0</td>
			<td class="td_dash3" align="center">3</td>
			<td class="dash" align="center">12</td>
			</tr>
			
			<tr>
			<td class="dashh" >Aguardando FUP</td>
			<td class="dash" align="center">83</td>
			<td class="td_dash" align="center">18</td>
			<td class="td_dash1" align="center">22</td>
			<td class="td_dash2" align="center">16</td>
			<td class="td_dash3" align="center">19</td>
			<td class="dash" align="center">163</td>
			</tr>
			
			<tr>
			<td class="tot" >TOTAL</td>
			<td class="tot" align="center">116</td>
			<td class="tot" align="center">29</td>
			<td class="tot" align="center">26</td>
			<td class="tot" align="center">27</td>
			<td class="tot" align="center">43</td>
			<td class="tot" align="center">241</td>
			</tr>
			
			</tbody>
			</table>
			</div>
			
</body>
</html>