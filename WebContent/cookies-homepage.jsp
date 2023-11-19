<html>
	<body>
	
		<h3>Training Portal</h3>
		<% 
		String favLang = "Java";
		
		Cookie[] theCookies = request.getCookies();
		
		if(theCookies!=null){
			
			for(Cookie tempCookie : theCookies){
					if("myApp.favoriteLanguage".equals(tempCookie.getName())){
						favLang = tempCookie.getValue();
						break;
					}
				}
			}	
		%>
		
		
		<h4>New Books for <%= favLang %></h4>
		<ul>
			<li>yada yada yada</li>
			<li>yada yada yada</li>
			<li>yada yada yada</li>
		</ul>
		
		<h4>Latest News reports for <%= favLang %></h4>
		<ul>
			<li>yada yada yada</li>
			<li>yada yada yada</li>
			<li>yada yada yada</li>
		</ul>
		
		<h4>Hot Jobs for <%= favLang %></h4>
		<ul>
			<li>yada yada yada</li>
			<li>yada yada yada</li>
			<li>yada yada yada</li>
		</ul>
		
		<hr>
		
		<a href="cookies-personalize-form.html">Personalize page</a>
	</body>
</html>