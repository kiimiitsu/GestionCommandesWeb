<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Rechercher un article</title>
		<link rel="stylesheet" href="css/defaut.css" type="text/css"/>
	</head>
	<body>
	
		<jsp:include page="subview/header.jsp"/>
		<div class="bodyWrapper">
			<h1>Rechercher un article</h1>
			<a href="article.jsp">Retour</a>

			<!-- AFFICHER MESSAGE ERREUR -->	 
			 <c:if test="${!empty erreurs}">
				<div class="error">
					<c:forEach items="${erreurs}" var="erreur">
						<c:out value="${erreur}"/>
					</c:forEach>
				</div>
			</c:if>
			
			<form action="SearchForm?action=${param.action}" method="post">
				<span class="error"><c:out value="${errorChamps}"/></span>
				<br/>
				<label for="id">Id : </label>
				<input type="text" name="id" value="${id}" /> 
				<span class="error"><c:out value="${errorId}"/></span>
				
				<br/>
				<p>ou</p>

				<label for="libelle">Libelle : </label>
				<input type="text" name="libelle" value="${libelle}"/>
				<br/>

				<input type="submit" value = "Rechercher"/>
				
			</form>
			
		</div>
	</body>
</html>