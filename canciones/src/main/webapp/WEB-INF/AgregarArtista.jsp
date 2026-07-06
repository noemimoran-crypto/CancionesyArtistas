<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://springframework.org" %>
<!DOCTYPE html>
<html>
<head><title>Agregar Artista</title></head>
<body>
    <h1>Agregar un Nuevo Artista</h1>
    <form:form action="/artistas/procesa/agregar" method="POST" modelAttribute="artista">
        <div>
            <form:label path="nombre">Nombre:</form:label>
            <form:input path="nombre" /><form:errors path="nombre" style="color:red;"/>
        </div>
        <div>
            <form:label path="apellido">Apellido:</form:label>
            <form:input path="apellido" /><form:errors path="apellido" style="color:red;"/>
        </div>
        <div>
            <form:label path="biografia">Biografia:</form:label>
            <form:textarea path="biografia" /><form:errors path="biografia" style="color:red;"/>
        </div>
        <button type="submit">Guardar Artista</button>
    </form:form>
    <br>
    <a href="/artistas">Volver a lista de artistas</a>
</body>
</html>