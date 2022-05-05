<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Profile Page</title>
    <style>
        body {
         font-family: Arial, sans-serif;
        }   
        .container{
            width: 100vw;
            height: 100vh;

            display: grid;

            grid-template-columns: 1fr 1fr 1fr;
            grid-template-rows: 50px 1fr 1fr 100px;

            gap: 10px;
            padding: 10px;
            box-sizing: border-box;
        }

        .container div {
            padding: 10px;
            border: 1px solid rgb(0, 0, 0);
        }

        .header {
            grid-column-start: 1;
            grid-column-end: 4;
            text-align: center;
        }
        .content-bio {
            grid-column-start: 2;
            grid-column-end: 4;
        }
        .content-profile {
            grid-column-start: 1;
            grid-column-end: 4;
        }
        .content-admin {
            grid-column-start: 1;
            grid-column-end: 4;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Account Information</h1>
        </div>
        
        <div class="content-id">
            <p>Profile ID</p>
        </div>
        <div class="content-bio">
            <p><s:property value="activeAccount.bio" /></p>
        </div>
        <div class="content-profile">
            <p>First Name: <s:property value="activeAccount.firstName" /></p>
            <p>Last Name: <s:property value="activeAccount.lastName" /></p>
            <p>Birthdate: <s:property value="activeAccount.dateOfBirth" /></p>
        </div>
        <div class="content-admin">
            <s:if test='activeAccount.type == "regular"'> 
                <p>The user is a regular.</p>
            </s:if>
            <s:elseif test='activeAccount.type == "admin"'> 
                <p>The user is an admin.</p>
            </s:elseif>
        </div>
        
        
    </div>
    
</body>
</html>