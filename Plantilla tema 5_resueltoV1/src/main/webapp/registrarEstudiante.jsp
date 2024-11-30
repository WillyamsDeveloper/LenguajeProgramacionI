<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-
1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
<div class="container">
	<br>
	<div class="row">
	<h3>Registrar Estudiantes</h3>
	<form action="EstudianteServlet2" method="post">
		<input type="hidden" name="type" value="register">
		<input type="hidden" name="idEstudiante" value="">
		
		<div class="form-group">
		<label class="text-secondary">Nombres y Apellidos</label>
		<input class="form-control" type="text" name="txtNombres" value="">
		</div>
		
		<div class="form-group">
			<label class="text-secondary">Documento</label>
			<select class="form-control" name="cboTipoDocumento">

			</select>
			<br>
			<input class="form-control" type="text" name="txtNumeroDocumento"
			value="">
		</div>
		<div class="form-group">
			<label class="text-secondary">Teléfono</label>
			<input class="form-control" type="text" name="txtTelefono"
			value="">
		</div>
		<div class="form-group">
			<label class="text-secondary">Carrera</label>
			<input class="form-control" type="text" name="txtCarrera"
			value="">
		</div>
		<br>
		<input type="submit" class="btn btn-primary" value="Enviar Datos">
		
	</form>
	</div>
</div>
</body>
</html>