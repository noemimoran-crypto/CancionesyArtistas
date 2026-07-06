<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://springframework.org" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Cancion</title>
    <style>
        .error { color: red; font-style: italic; }
        .campo { margin-bottom: 15px; }
    </style>
</head>
<body>
    <h1>Editar Cancion</h1>

    <form:form action="/canciones/procesa/editar/${cancion.id}" method="POST" modelAttribute="cancion">
        
        <div class="campo">
            <form:label path="titulo">Titulo:</form:label>
            <form:input path="titulo" />
            <form:errors path="titulo" class="error" />
        </div>

        <div class="campo">
            <form:label path="artista">Artista:</form:label>
            <form:input path="artista" />
            <form:errors path="artista" class="error" />
        </div>

        <div class="campo">
            <form:label path="album">Album:</form:label>
            <form:input path="album" />
            <form:errors path="album" class="error" />
        </div>

        <div class="campo">
            <form:label path="genero">Genero:</form:label>
            <form:input path="genero" />
            <form:errors path="genero" class="error" />
        </div>

        <div class="campo">
            <form:label path="idioma">Idioma:</form:label>
            <form:input path="idioma" />
            <form:errors path="idioma" class="error" />
        </div>

        <button type="submit">Guardar Cambios</button>
    </form:form>

    <br>
    <a href="/canciones">Volver a lista de canciones</a>
</body>