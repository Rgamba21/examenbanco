<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>Banco Platinum</title>
</head>
<body>
    <center>
        <h1>Transferencias</h1>
        <h2>
            <a href="/CtaCorriente/newtransferencia">Nueva transferencia</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/CtaCorriente/listTransferencia">Listar transferemcias</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/CtaCorriente/home.jsp">Inicio</a> 
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <h2>Lista de transferencias</h2>
            <tr>
                <th>id</th>
                <th>Rut Persona</th>
                <th>Usuario</th>
                <th>Cuenta</th>
                <th>Monto</th>
                <th>Cuenta destino</th>
                <th>Tipocuenta</th>                

            </tr>
            <c:forEach var="transferencia" items="${listTransferencia}">
                <tr>
                    <td><c:out value="${transferencia.id}" /></td>
                    <td><c:out value="${transferencia.rutpersona}" /></td>
                    <td><c:out value="${transferencia.idusuario}" /></td>
                    <td><c:out value="${transferencia.idcuenta}" /></td>
                    <td><c:out value="${transferencia.montotransferencia}" /></td>
                    <td><c:out value="${transferencia.cuentatransferencia}" /></td>
                    <td><c:out value="${transferencia.tipocuenta}" /></td>                                                            


                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>