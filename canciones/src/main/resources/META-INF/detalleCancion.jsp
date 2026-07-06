<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<head>
    <meta charset="UTF-8">
    <title>Detalle de la Cancion</title>
</head>	

</head>
<body>
	<h1>Detalle de cancion</h1>
	<p>Cancion: ${cancion.titulo}</p>
	<p>Artista: ${cancion.artista}</p>
	<p>Album: ${cancion.album}</p>
	<p>Genero: ${cancion.genero}</p>
	<p>Idioma: ${cancion.idioma}</p>
	<a href="/canciones">Volver a la lista de canciones</a>
	
<h1>Detalle de la Cancion</h1>
    <c:choose>
        <c:when test="${cancion != null}">
            <ul>
                <li><strong>ID:</strong> ${cancion.id}</li>
                <li><strong>Titulo:</strong> ${cancion.titulo}</li>
                <li><strong>Artista:</strong> ${cancion.artista}</li>
                <li><strong>Album:</strong> ${cancion.album}</li>
                <li><strong>Genero:</strong> ${cancion.genero}</li>
                <li><strong>Idioma:</strong> ${cancion.idioma}</li>
                <li><strong>Fecha de Creacion:</strong> ${cancion.fechaCreacion}</li>
                <li><strong>Fecha de Actualizacion:</strong> ${cancion.fechaActualizacion}</li>
            </ul>


	<form action="/canciones/formulario/editar/${cancion.id}" method="GET" style="display:inline;">
                <button type="submit">Actualizar Cancion</button>
            </form>
            <br><br>
        </c:when>
        <c:otherwise>
            <p>La cancion solicitada no existe.</p>
        </c:otherwise>
    </c:choose>
    
    <a href="/canciones">Volver a lista de canciones</a>


<h1>Detalle de la Canción</h1>
    <c:choose>
        <c:when test="${cancion != null}">
            <ul>
                <li><strong>ID:</strong> ${cancion.id}</li>
                <li><strong>Título:</strong> ${cancion.titulo}</li>
                <li><strong>Artista:</strong> ${cancion.artista}</li>
                <li><strong>Álbum:</strong> ${cancion.album}</li>
                <li><strong>Género:</strong> ${cancion.genero}</li>
                <li><strong>Idioma:</strong> ${cancion.idioma}</li>
                <li><strong>Fecha de Creación:</strong> ${cancion.fechaCreacion}</li>
                <li><strong>Fecha de Actualización:</strong> ${cancion.fechaActualizacion}</li>
            </ul>
            
            
            <form action="/canciones/formulario/editar/${cancion.id}" method="GET" style="display:inline;">
                <button type="submit">Actualizar Cancion</button>
            </form>
            
            
            <form action="/canciones/eliminar/${cancion.id}" method="POST" style="display:inline;" onsubmit="return confirm('¿Estás seguro de que deseas eliminar esta canción?');">
                <input type="hidden" name="_method" value="delete" />
                <button type="submit" style="background-color: #ff4d4d; color: white; border: none; padding: 5px 10px; cursor: pointer;">Eliminar Canción</button>
            </form>
            
            <br><br>
        </c:when>
        <c:otherwise>
            <p>La cancion solicitada no existe.</p>
        </c:otherwise>
    </c:choose>
    
    <a href="/canciones">Volver a lista de canciones</a>

</body>
</html>