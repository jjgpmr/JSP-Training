<html>

	<head>
		<title>Student Confirmation Title</title>
	</head>
	
		<body>
		
		The student is confirmed: ${param.firstName} ${param.lastName}
		
		<br/><br/>
		<ul>
		The student's favourite languages are: 
		<%
		String[] langs = request.getParameterValues("favoriteLanguage");
		
		for(String lang : langs){
			out.println("<li>"+lang+"</li>");
		}
		%>
		 
		</ul>
		</body>
		
</html>