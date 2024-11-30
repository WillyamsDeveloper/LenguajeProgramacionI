<%@page import="entidades.TipoDocumento"%>
<%@page import="java.util.List"%>
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
<div class="row">
	<div class="col-6">
		<h3>Registrar Estudiantes</h3>
		<%
			List<TipoDocumento> listDocumentos= (List<TipoDocumento>) request.getAttribute("dataTipoDocumento");
		%>

	<form action="EstudianteServlet2" method="post">
		<input type="hidden" name="type" value="register">
		<input type="hidden" name="idEstudiante" value="">">
		
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
	<div class="col-6">
	<table class="table">
		<thead>
		<tr>
			<th>Id</th>
			<th>Nombres y Apellidos</th>
			<th>Tipo Documento</th>
			<th>Documento</th>
			<th>Carrera</th>
			<th>Acciones</th>
		</tr>
		</thead>
	
	<tbody>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>
		<a href="">
			<img alt="" src="img/ic_info.png" width="20" height="20" title="Editar">
		</a>
		<a href="">
			<img alt="" src="img/ic_delete.png" width="20" height="20" title="Eliminar">
		</a>
		</td>
	</tr>
	</tbody>
	</table>
	</div>		
</div>
</div>
</body>
</html>