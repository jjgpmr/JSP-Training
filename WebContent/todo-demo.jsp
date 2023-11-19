<%@ page import="java.util.*" %>
<html>
	<body>
		
		<form action="todo-demo.jsp">
			Add new Item: <input type="text" name="theItem"/>
			
			<input type="submit" value="submit"/>
		</form>
		<br/>
		
		<%
			List<String> items = (List<String>) session.getAttribute("myToDoList");
		
			if(items==null){
				items = new ArrayList<String>();
				session.setAttribute("myToDoList", items);
			}
			
			String theItem = request.getParameter("theItem");
			
			if(theItem!=null){
				items.add(theItem);
			}
		%>
		
		<hr>
		<b>To List Items: </b>
		<br/>
		
		<ol>
			<%
				for(String listItems : items){
					out.println("<li>" + listItems + "</li>");
				}
			%>
		</ol>
		
	</body>	

</html>