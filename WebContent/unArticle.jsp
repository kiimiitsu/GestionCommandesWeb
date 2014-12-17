<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Gestion des articles</title>
		<link rel="stylesheet" href="css/defaut.css" type="text/css"/>
	</head>
	<body>
		<jsp:include page="subview/header.jsp"/>
		<div class="bodyWrapper">
			<h1>Ajouter un article</h1>
			
			<a href="article.jsp">Retour</a>

		<!-- AFFICHER MESSAGE SUCCES -->
			<c:if test="${!empty success}">
				<div class="success">
					<c:out value="${success}"/>
				</div>
			</c:if>
		
		<!-- AFFICHER MESSAGE ERREUR -->	 
			 <c:if test="${!empty errors}">
				<div class="errors">
					<c:out value="${errors}"/>
				</div>
			</c:if>

			
			<form action="ArticleForm?action=${requestScope.action}" method="post">
			
				<input type="hidden" name="id" value="${article.id}"/>
				
				<label for="libelle">Libelle* : </label>
				<input type="text" name="libelle" value="${article.libelle}"  <c:if test="${action=='visualiser'}">readonly="readonly"</c:if> />
				
				<span class="error"><c:out value="${errorLibelle}"/></span>
				<br/>
				
				<label for="prix">Prix* : </label>
				<input type="text" name="prix" value="${article.prix}"  <c:if test="${action=='visualiser'}">readonly="readonly"</c:if>  />
				 
				<span class="error"><c:out value="${errorPrix}"/></span>
				<br/>
				
				<c:choose>
					<c:when test="${action=='visualiser'}">
<!-- 							<input type="submit" value="Enregistrer"/> -->
					</c:when>
					<c:when test="${action=='modifier'}">
						<input type="submit" value="Modifier"/>
					</c:when>
					<c:otherwise>
						<input type="submit" value="Enregistrer"/>
					</c:otherwise>
				</c:choose>
				
				
			</form>
			
		</div>
	</body>
</html>