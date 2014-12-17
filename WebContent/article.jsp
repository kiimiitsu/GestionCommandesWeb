<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
			<section class="entiteMenu">
				<ul>
					<li><a href="Dispatcher?action=creer">Création d'un article</a></li>
					<li><a href="Dispatcher?action=liste">Lister les articles</a></li>
					<li><a href="Dispatcher?action=visualiser">Visualisation d'un article</a></li>
					<li><a href="Dispatcher?action=modifier">Modification d'un article</a></li>
					<li><a href="Dispatcher?action=supprimer">Suppression d'un article</a></li>
				</ul>
			</section>
		</div>
		
	</body>
</html>