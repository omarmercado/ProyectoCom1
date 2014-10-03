<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VidaIndependiente.NET</title>
<link href="theme/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

    <div >
<img src="/theme/images/portada2.jpg">
	</div>
	
<div id="header">
  <div class="section">
<table align="center">
<tr><td>
		<ul>
		<li><a href="Portada.htm" title="">Portada</a></li>
		<li><a href="Portada.htm" title="">Contacto</a></li>
	    <li><a href="Portada.htm" title="">Acerca de Nosotros</a></li>
	    <li><a href="Blog.htm" title="">Blog</a></li>	    
		</ul>
</td></tr>		
</table>		
<br>
<c:if test="${sessionScope.usuario > 0}">
<table align="center">
<tr><td>
		<ul>
		<li><a href="CategoriaForm.htm" title="">Nueva Categoria</a></li>
	    <li><a href="ProductoForm.htm" title="">Nuevo Producto</a></li>
		<li><a href="NuevoBlog.htm" title="">Nuevo Blog</a></li>
		</ul>
</td></tr>		
</table>
</c:if>
  </div>
</div>

	
<div id="body">

<h3>Nuevo Producto</h3>



<form name="frmNuevoProducto" action="NuevoProducto.htm" method="post"> 
<table>
<tr>
<td>
nombre<input type="text" id="txtNombre" name="txtNombre">
</td>
</tr>

<tr>
<td>
descripcion<input type="text" id="txtDescripcion" name="txtDescripcion" >
</td>
</tr>

<tr>
<td>
imagenes<input type="text" id="txtImagenes" name="txtImagenes" >
</td>
</tr>

<tr>
<td>
precio<input type="text" id="txtPrecio" name="txtPrecio" >
</td>
</tr>

<tr>
<td>
Colores<input type="text" id="txtColores" name="txtColores">
</td>
</tr>

<tr>
<td>
Categorias
</td>
</tr>

<tr>
<td>
<c:forEach var="Categoria" items="${ListCategorias}">  
  ${Categoria.getNombre()} <input type="checkbox" name="txtCategorias" id="txtCategorias" value="${Categoria.getId()}">
</c:forEach>
</td>
</tr>

<tr>
<td>
<input type="submit">
</td>
</tr>

</table>
</form>

</div>

</body>
</html>