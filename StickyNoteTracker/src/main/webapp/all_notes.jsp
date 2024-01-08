
<%@page import="org.hibernate.query.*"%>
<%@page import="java.util.List"%>
<%-- <%@page import="org.hibernate.Query.*"%> --%>
<%@page import="com.note.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.note.entity.Notes"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="img/notepad.png">
<title>All notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="container">
			<h1 class="text-uppercase">All Notes:</h1>
			<div class="row">
				<div class="col-12">
					<%
					Session s = FactoryProvider.getFactory().openSession();
					Query q = s.createQuery("from Notes");
					List<Notes> list = q.list();
					for (Notes note : list) {
					%>
					<div class="card mt-3">
						<div class="card-body px-5">
							
							<h5 class="card-title"><a><img alt="" class="img-fluid mx-auto"
								style="max-width: 50px;" src="img/notepad.png"> </a><%=note.getTitle()%></h5>
							<p class="card-text">
								<%=note.getNoteContent()%>
							</p>
							<p>
								<b class="text-primary"><%=note.getDate()%></b>
							</p>
							<div class="container text-center mt-2">
								<a href="DeleteServlet?note_id=<%=note.getId()%>"
									class="btn btn-danger">Delete</a> <a
									href="edit.jsp?note_id=<%=note.getId()%>"
									class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>
					<%
					}
					s.close();
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>