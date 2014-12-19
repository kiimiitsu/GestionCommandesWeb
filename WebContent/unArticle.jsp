<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<jsp:include page="subview/header.jsp"/>
		<div class="bodyWrapper">
			<h1>Ajouter un article</h1>
			
			<a href="article.jsp">Retour</a>
			
			<form action="ArticleForm?action=${requestScope.action}" method="post">
			
				<label for="id">Id (ne pas remplir) : </label>	
				<input type="text" name="id" value="${article.id}" readonly="readonly"/>
				<br/>
							
				<label for="libelle">Libelle : </label>
				<input type="text" name="libelle" value="${article.libelle}${libelle}"  <c:if test="${action=='visualiser'}">readonly="readonly"</c:if> />
				
				<span class="error"><c:out value="${errorLibelle}"/></span>
				<br/>
				
				<label for="prix">Prix : </label>
				<input type="text" name="prix" value="${article.prix}${prix}"  <c:if test="${action=='visualiser'}">readonly="readonly"</c:if>  />
				 
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
<jsp:include page="subview/footer.jsp"/>