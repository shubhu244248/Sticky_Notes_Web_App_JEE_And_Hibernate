<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<link rel="icon" type="image/x-icon" href="img/notepad.png">
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<br>

		<div class="container">
			<h1>Please fill your note detail</h1>

			<form action="SaveNoteServlet" method="post">
				<div class="form-group">
					<label for="title">Note title</label> <input name="title" required
						type="text" class="form-control" id="title"
						aria-describedby="emailHelp" placeholder="Enter here" />
				</div>

				<div class="form-group">
					<label for="content">Note Content</label>
					<textarea name="content" required id="content"
						placeholder="Enter your content here" class="form-control"
						style="height: 300px;"></textarea>
				</div>

				<div class="container text-center">
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>