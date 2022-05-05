<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
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
          <s:url var="homePage" action="Home" />
          <s:a href="%{homePage}">Home</s:a>
        </li>
        <li>
          <s:url var="newsPage" action="News" />
          <s:a href="%{newsPage}">News</s:a>
        </li>
        <li>
          <s:url var="contactPage" action="Contact" />
          <s:a href="%{contactPage}">Contact</s:a>
        </li>
        <li>
          <s:url var="loginActivityPage" action="LoginActivity" />
          <s:a href="%{loginActivityPage}">Login</s:a>
        </li>
        <li style="float:right">
          <s:url var="aboutPage" action="About" />
          <s:a href="%{aboutPage}">About</s:a>
        </li>
      </ul> 
</body>
