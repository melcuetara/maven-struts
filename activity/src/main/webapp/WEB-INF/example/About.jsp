<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Page</title>
</head>
<body>
    <s:include value="Navigation.jsp" />
    <h1>About Page</h1>
    <p>Hi, this project is created by Mel Allen Cuetara</p>
    <p><s1:property value="activeAccount.lastName" /></p>
</body>
</html>