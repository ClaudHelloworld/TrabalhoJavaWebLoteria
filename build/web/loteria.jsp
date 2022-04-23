<%-- 
    Document   : index
    Created on : 18 de abr de 2022, 14:04:21
    Author     : Claudinei Gomes
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
       
         <style>
            body { margin: 0px 20px 0px 20px; }
            ul, li{
   margin: 0; padding: 0;
   list-style:none;
}
        </style>
        <title>Loteria </title>
    </head>
    <body>
        
        <%@page import="java.util.ArrayList"%>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <a href="index.jsp"> Voltar </a>
        </br>
    <center>
        <h1>Números da Loteria</h1>
        <%if(session.getAttribute("username")!=null){%>
            <% 
                ArrayList listaRecebida = (ArrayList) request.getSession().getAttribute("arrayNaSessao");
                
                int[] num = new int[6];
                for(int i=0; i<listaRecebida.size(); i++){
                num[i]= ((int)listaRecebida.get(i));
                }
            %>
            <ul class="list-inline">
            <%for(int i=0; i<num.length; i++){%>
            <h4>
                <ul class="circulo">
                <li><b><%= num[i] %></b></li>
            </ul>
            </h4>
            <%}%>
        <%}else{%>
        </center>
  <div class="alert alert-danger d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
  <div>
    Você não tem permissão para ver esta página!
  </div>
</div>
        <%}%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMh9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
