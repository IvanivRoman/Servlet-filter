<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>IP filter</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
    <!-- header -->
    <div class="w3-container w3-blue-grey w3-opacity w3-center-align">
        <h1>Ip filter<//h1>
    </div>
<% 
if (request.getAttribute("ip_address").toString() == "true"){
	out.print("<h3 align='center'><font color='green'>Access allowed<font></h3>");
}
%>
    <div class="w3-container w3-center">       
        <div class="w3-bar w3-padding-large w3-padding-24">    
            <button class="w3-btn w3-hover-light-blue w3-round-large" onclick="location.href='http://localhost:8080/Filter/list'">Blacklist ip</button>
            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='http://localhost:8080/Filter/add'">Add ip to blacklist</button>
            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='http://localhost:8080/Filter/remove'">Remove ip from blacklist</button>
            <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='http://localhost:8080/Filter/removeAll'">Clear blacklist</button>
        </div>
    </div>
</body>
</html>