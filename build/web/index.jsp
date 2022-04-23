<%-- 
    Document   : index
    Created on : 18 de abr de 2022, 14:04:21
    Author     : Claudinei Gomes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=5">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            body { 
    margin-top: 90px;           
    margin-left: auto;
    margin-right: auto;
    width: 45em }
        </style>
    <center> <title>Trabalho Java - Claudinei Gomes</title>
    </head>
    <body>
        <h1>Claudinei Gomes - Trabalho JavaWEB </h1>
        </br>
        <%if (session.getAttribute("username") == null) {%>
        <h4>
            <form>
            Usuário:
            <input type="text" name="username"/>
            <button type="submit" name="logon" class="btn btn-primary">Login</button>                    
            </form>
        </h4>
        <%} else{%>
        <h4>
        Navegue pelas páginas abaixo:
        </br></br>
        <a href="about.jsp">Informações Claudinei</a>
        </br>
        <a href="loteria.jsp">Resultados Loteria</a>
        </h4>
        <%}%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</center>
    
</html>
