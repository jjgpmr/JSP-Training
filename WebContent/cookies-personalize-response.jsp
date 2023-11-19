<html>
	<head><title>Confirmation</title></head>
	
	<%
		String favLang = request.getParameter("favoriteLanguage");
	
		Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
		
		theCookie.setMaxAge(30*30*24*365);
		
		response.addCookie(theCookie);
	%>
	<body>
		Thanks! We set your favourite language to: ${param.favoriteLanguage}
		
		<br/>
		
		<a href="cookies-homepage.jsp">Return to homepage!</a>
	</body>
</html>