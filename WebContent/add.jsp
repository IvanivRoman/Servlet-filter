<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add IP</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
     <h1>Ip filter</h1>
</div>
<div class="w3-container w3-padding">
<%
  if (request.getAttribute("ip_address") != null) {
        out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                "   <h5>IP '" + request.getAttribute("ip_address") + "' added!</h5>\n" +
                "</div>");
  }
%>
<div class="w3-card-4">
     <div class="w3-container w3-center w3-green">
          <h2>Add IP</h2>
     </div>
<form method="post" class="w3-selection w3-light-grey w3-padding">
    <label>IP address:
        <input type="text" name="add_ip" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
    </label>
    <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Submit</button>
</form>
</div>
</div>
<div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
      <button class="w3-btn w3-round-large" onclick="location.href='http://localhost:8080/Filter/'">Home</button>
</div>
</body>
</html>