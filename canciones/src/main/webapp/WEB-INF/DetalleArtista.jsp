<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head><title>Detalle del Artista</title></head>
<body>
    <h1>Detalle del Artista</h1>
    <c:choose>
        <c:when test="${artista != null}">
            <p><strong>ID:</strong> ${artista.id}</p>
            <p><strong>Nombre completo:</strong> ${artista.nombre} ${artista.apellido}</p>
            <p><strong>Biografia:</strong> ${artista.biografia}</p>
            <p><strong>Fecha Registro:</strong> ${artista.fechaCreacion}</p>
            
            <h3>Canciones Compuestas:</h3>
            <ul>
                <c:forEach var="cancion" items="${artista.canciones}">
                    <li><c:out value="${cancion.titulo} (${cancion.genero})"/></li>
                </c:forEach>
                <c:if test="${empty artista.canciones}">
                    <li>Este artista aun no tiene canciones registradas.</li>
                </c:if>
            </ul>
        </c:when>
        <c:otherwise><p>Artista no encontrado.</p></c:otherwise>
    </c:choose>
    <br>
    <a href="/artistas">Volver a lista de artistas</a>
</body>
</html>