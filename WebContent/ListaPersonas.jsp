<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>Banco Platinum</title>
</head>
<body>
    <center>
        <h1>Mantencion de personas</h1>
        <h2>
            <a href="/CtaCorriente/newpersona">Nueva persona</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/CtaCorriente/listPersonabd">Listar personas</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/CtaCorriente/home.jsp">Inicio</a> 
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <h2>Lista de personas</h2>
            <tr>
                <th>Rut</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Direccion</th>
                <th>Correo</th>
                <th>telefono</th>
                <th>Acciones</th>
            </tr>
            <c:forEach var="personabd" items="${listPersonabd}">
                <tr>
                    <td><c:out value="${personabd.rut}" /></td>
                    <td><c:out value="${personabd.nombre}" /></td>
                    <td><c:out value="${personabd.apellido}" /></td>
                    <td><c:out value="${personabd.direccion}" /></td>
                    <td><c:out value="${personabd.correo}" /></td>
                    <td><c:out value="${personabd.telefono}" /></td>

                    <td>
                        <a href="/CtaCorriente/editpersona?rut=<c:out value='${personabd.rut}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/CtaCorriente/deletepersona?rut=<c:out value='${personabd.rut}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>