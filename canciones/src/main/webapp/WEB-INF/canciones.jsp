<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<c%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		
</head>
<body>
	<h1>Lista de canciones</h1>
	<table>
		<thead>
			<tr>
				<th>Titulo</th>
				<th>Artista</th>
				<th>Detalle</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="cancion" items="${listaCanciones}">
				<tr>
					<td>${cancion.titulo}</td>
					<td>${cancion.artista}</td>
					<td>
						<a href="/canciones/detalle/${cancion.id}">Detalle</a>
					</td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>

<table border="1">
        <thead>
            <tr><th>Título</th><th>Autor</th><th>Detalle</th></tr>
        </thead>
        <tbody>
            <c:forEach var="cancion" items="${listaCanciones}">
                <tr>
                    <td><c:out value="${cancion.titulo}"/></td>
                    <td><c:out value="${cancion.artista.nombre} ${cancion.artista.apellido}"/></td>
                    <td><a href="/canciones/detalle/${cancion.id}">Detalle</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>
    <a href="/artistas">Ir a artistas</a>



</body>
</html>