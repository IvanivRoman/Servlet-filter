<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List IP</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
	<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
            <h1>IP filter</h1>
    </div>
    <div class="w3-container w3-center w3-margin-bottom w3-padding">
            <div class="w3-card-4">
                <div class="w3-container w3-light-blue">
                    <h2>Ip addresses</h2>
                </div>
<%
    List<String> names = (List<String>) request.getAttribute("ipAddresses");

    if (names != null && !names.isEmpty()) {
        out.println("<ul class=\"w3-ul\">");
        for (int i = 0; i < names.size(); i++) {
            out.println("<li class=\"w3-hover-sand\">" + names.get(i) + "</li>");
        }
        out.println("</ui>");
    } else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n"
    		+
            "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
            "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
            "   <h5>There is no IP addresses yet!</h5>\n" +
            "</div>");
    names.clear();
%>
<div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
      <button class="w3-btn w3-round-large" onclick="location.href='http://localhost:8080/Filter/'">Home</button>
</div>
</body>
</html>