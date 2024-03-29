<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

<head>
    <title>Registro de usuarios</title>
</head>
<body>

    <center>
        <h1>Mantencion de usuarios</h1>
        <h2>
            <a href="/CtaCorriente/new">Nuevo usuario</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/CtaCorriente/list">Listar usuarios</a>
             
        </h2>
    </center>
    <div align="center">
        <c:if test="${usuariobd != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${usuariobd == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="3" cellpadding="3">
            <caption>
                <h2>
                    <c:if test="${usuariobd != null}">
                        Editar usuario
                    </c:if>
                    <c:if test="${usuariobd == null}">
                        Agregar usuario
                    </c:if>
                </h2>
            </caption>
                <c:if test="${usuariobd != null}">
                    <input type="hidden" name="id" value="${usuariobd.id}" />
                </c:if>           
            <tr>
                <th>Nombre: </th>
                <td>
                    <input type="text" name="nombreusuario" size="45"
                            value="${usuariobd.nombreusuario}"
                        />
                </td>
            </tr>
            <tr>
                <th>Password: </th>
                <td>
                    <input type="text" name="password" size="45"
                            value="${usuariobd.password}"
                    />
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Grabar" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>