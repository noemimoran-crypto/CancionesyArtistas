<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://springframework.org" %>
<!DOCTYPE html>
<html>
<head><title>Agregar Cancion</title></head>
<body>
    <h1>Agregar Cancion</h1>
    <form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">
        <div>
            <form:label path="titulo">Titulo:</form:label>
            <form:input path="titulo" /><form:errors path="titulo"/>
        </div>
        <div>
            <form:label path="artista">Artista:</form:label>
            <form:select path="artista">
                <form:option value="" label="-- Seleccione un Artista --"/>
                <form:options items="${listaArtistas}" itemValue="id" itemLabel="nombre"/>
            </form:select>
            <form:errors path="artista"/>
        </div>
        <div>
            <form:label path="album">Album:</form:label>
            <form:input path="album" /><form:errors path="album"/>
        </div>
        <div>
            <form:label path="genero">Genero:</form:label>
            <form:input path="genero" /><form:errors path="genero"/>
        </div>
        <div>
            <form:label path="idioma">Idioma:</form:label>
            <form:input path="idioma" /><form:errors path="idioma"/>
        </div>
        <button type="submit">Agregar</button>
    </form:form>
</body>
</html>