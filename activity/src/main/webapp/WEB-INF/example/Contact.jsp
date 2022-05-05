<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="en" class="h-100">
  <head>
    <title>Contact</title>
  </head>
  <body>
    <s:include value="Navigation.jsp" />    
    <h1>Contact Page</h1>
    <p>Contact Number: <s:property value="randomPhoneNumber" /></p>
    <p>Name: <s:property value="name" /></p>
  </body>
</html>
