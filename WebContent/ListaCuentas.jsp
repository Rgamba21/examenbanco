<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>Banco Platinum</title>
</head>
<body>
    <center>
        <h1>Mantencion de cuentas corrientes</h1>
        <h2>
            <a href="/CtaCorriente/newcuenta">Nueva cuenta</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/CtaCorriente/listCuentabd">Listar cuentas</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/CtaCorriente/home.jsp">Inicio</a> 
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <h2>Lista de cuentas</h2>
            <tr>
                <th>id</th>
                <th>rutcliente</th>
                <th>Monto</th>
                <th>ejecutivo</th>
                <th>Acciones</th>
            </tr>
            <c:forEach var="cuentabd" items="${listCuentabd}">
                <tr>
                    <td><c:out value="${cuentabd.id}" /></td>
                    <td><c:out value="${cuentabd.rutcliente}" /></td>
                    <td><c:out value="${cuentabd.monto}" /></td>
                    <td><c:out value="${cuentabd.ejecutivo}" /></td>

                    <td>
                        <a href="/CtaCorriente/editcuenta?id=<c:out value='${cuentabd.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/CtaCorriente/deletecuenta?id=<c:out value='${cuentabd.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>