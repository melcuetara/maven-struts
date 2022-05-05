<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
    <style>
        .center {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            border-radius: 10px;
            width: 400px;
        }
        .center input {
            padding: 0 30%;
            box-sizing: border-box;
        }
        .center h1 {
            text-align: center;
            padding: 0 0 20px 0;
            border-bottom: 1px solid black;
        }
        .textfield {
            position: relative;
            margin: 10px 0;
        }
        p {
            display: flex;
            justify-content: center;
        }
        body {
            height: 100vh;
            background: linear-gradient(to bottom, rgb(0, 234, 255), white);
            overflow: hidden;
        }
        
    </style>
</head>
<body>
    <s:include value="Navigation.jsp" />
    <div class="center">
        <h1>Login</h1>
        <s:form action="LoginActivity" cssClass="input">
            <s:textfield key="username" cssClass="textfield"/>
            <s:password key="password" cssClass="textfield" />
            <s:submit key="submit" />
        </s:form>
    <p>Username: <s:property value="username" /></p>
    <p>Password: <s:property value="password" /></p>
    <p><s:property value="message" /></p>
    </div>
</body>
</html>