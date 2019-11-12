<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove all IP</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
        <div class="w3-container w3-blue-grey w3-opacity w3-right-align">
            <h1>Ip filter</h1>
        </div>
        <div class="w3-container w3-center w3-margin-bottom w3-padding">
        <div class="w3-card-4">
<%
   out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n"
		   +
           "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
           "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
           "   <h5>All IP addresses were successfully deleted!</h5>\n" +
           "</div>");
%>
</div>
</div>
<div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
      <button class="w3-btn w3-round-large" onclick="location.href='http://localhost:8080/Filter/'">Home</button>
</div>
</body>
</html>