<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, getPath.*, javax.servlet.*" %>
<jsp:useBean id="get" class="getPath.Get" scope="page" />

<html>
  <head>
    <title>JSP</title>
    <style>
       table {
        margin: auto;
       }
       td {
        text-align: center;
        height: 500px;
       }
       form {
       text-align: center;
       }
       img {
        border-radius: 2%;
       }

    </style>
  </head>
  <body>
    <table>
        <tr>
            <td> <img src=<%= get.getPath(get.getRandomNum(10)) %> height="100%" alt="Картинка" ></td>
        </tr>
    </table>
    <form action="http://localhost:8080/helloworld/helloMain" method=GET>
        <input type="submit" value="Следующая">
    </form>
  </body>
</html>