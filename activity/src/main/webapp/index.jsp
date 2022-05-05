<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <title>Welcome</title>
    <style>
      ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #333;
      }
      
      li {
        float: left;
      }
      
      li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
      }
      
      li a:hover:not(.active) {
        background-color: #111;
      }
      
      .active {
        background-color: #04AA6D;
      }
      </style>
  </head>
  <body>
    <ul>
      <li>
        <s:url var="homePage" action="example/Home" />
        <s:a href="%{homePage}">Home</s:a>
      </li>
      <li>
        <s:url var="newsPage" action="example/News" />
        <s:a href="%{newsPage}">News</s:a>
      </li>
      <li>
        <s:url var="contactPage" action="example/Contact" />
        <s:a href="%{contactPage}">Contact</s:a>
      </li>
      <li>
        <s:url var="loginPage" action="example/LoginActivity" />
        <s:a href="%{loginPage}">Login</s:a>
      </li>
      <li style="float:right">
        <s:url var="aboutPage" action="example/About" />
        <s:a href="%{aboutPage}">About</s:a>
      </li>
    </ul>
    <img src="activity\src\main\resources\images\yato.jpg" alt="yato meme face">
    <h1>Hello World</h1>
  </body>
</html>
