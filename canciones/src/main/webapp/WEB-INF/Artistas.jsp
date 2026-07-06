<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head><title>Lista de Artistas</title></head>
<body>
    <h1>Lista de Artistas</h1>
    <ul>
        <c:forEach var="artista" items="${listaArtistas}">
            <li>
                <a href="/artistas/detalle/${artista.id}">
                    <c:out value="${artista.nombre} ${artista.apellido}"/>
                </a>
            </li>
        </c:forEach>
    </ul>
    <br>
    <a href="/canciones">Ir a canciones</a>
</body>
</html>