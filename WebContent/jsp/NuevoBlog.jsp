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

	
<div id="body" align="center">

<h3>Nuevo Blog</h3>



<form name="frmNuevoBlog" action="InsertarBlog.htm" method="post"> 
<table>
<tr>
<td>
TITULO
</td>
</tr>

<tr>
<td>
<input type="text" id="txtTitulo" name="txtTitulo">
</td>
</tr>

<tr>
<td>
TEXTO 
</td>
</tr>

<tr>
<td>
<textarea id="txtTexto" name="txtTexto" cols="60" rows="30"></textarea> 
</td>
</tr>

<tr>
<td>
<input type="submit" value="Crear">
</td>
</tr>

</table>
</form>

</div>

</body>
</html>