<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.afpa59.gc.donnees.*"
	import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Liste articles</title>
		<link rel="stylesheet" href="css/defaut.css" type="text/css"/>
	</head>
	<body>
		<jsp:include page="subview/header.jsp"/>
		<div class="bodyWrapper">
			<h1>Liste des articles</h1>
			<a href="article.jsp">Retour</a>
			<table class="liste">
				<tr>
					<th>Id</th>
					<th>Libelle</th>
					<th>Prix</th>
					
				</tr>
				
				<c:forEach items="${articles}" var="article">
					
					<tr>
						<td><c:out value="${article.id}"/></td>
						<td><c:out value="${article.libelle}"/></td>
						<td><c:out value="${article.prix}"/></td>
						
						<c:choose>
							<c:when test="${action=='visualiser'}">
								<td><a href="ActionArticle?id=${article.id}&action=${action}" title="Visualiser"><img alt="visualiser" src="pics/more.png"></a></td>
							</c:when>
							<c:when test="${action=='modifier'}">
								<td><a href="ActionArticle?id=${article.id}&action=${action}" title="Modifier"><img alt="modifier" src="pics/pencil.png"></a></td>
							</c:when>
							<c:when test="${action=='supprimer'}">
								<td><a href="ActionArticle?id=${article.id}&action=${action}" title="Supprimer"><img alt="supprimer" src="pics/cross.png"></a></td>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
					</tr>
					
				</c:forEach>
			
			</table>
		</div>
	</body>
</html>