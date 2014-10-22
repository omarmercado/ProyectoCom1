<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.jpg" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categoria : Vida Independiente.net</title>
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" name="description">

<meta content="es"  name="locale">

<meta content="VidaIndependiente" property="og:site_name">
<meta value="@CVida_ind" name="twitter:site">
<meta content="http://www.VidaIndependiente.net/Categoria.htm" property="og:url">
<meta content="VidaIndependiente.net : Portada" property="og:title">
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" property="og:description">
<meta property="og:locale" content="es" />
<meta property="og:type" content="Venta.Ropa.Accesorios.Ancianos" />

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
		<li><a href="Portada.htm">Portada</a></li>
		<li><a href="Informacion.htm" >Informacion</a></li>
	    <li><a href="Blog.htm" >Blog</a></li>    
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


	
<div id="body" >

<div class="blog">

<div class="sidebar" >

<h3>Categorias</h3>


<ul  >
<c:forEach var="Categoria" items="${ListCategorias}">  
<li>
<a id="acategoria" href="Categoria.htm?categoriaId=${Categoria.getId()} ">
${Categoria.getNombre()}
</a>
</li>
</c:forEach>
</ul>


</div>


			<table align="center" width="40%">
<tr><td align="center">

		<h3> ${Categoria.getNombre()}</h3>
</td></tr>		
</table>


<br><br>
<c:if test="${sessionScope.usuario > 0}">  

<form action="EditarCategoria.htm" method="post" name="EditarForm">
 <input type="hidden"  name="txtId" id="txtId" value="${Categoria.getId()}">
<table>
  <tr>
    <td> Nombre : <input type="text" name="txtNombre" id="txtNombre" value="${Categoria.getNombre()}"> </td>
  </tr>
  <tr>
    <td> Descripcion : <input type="text" name="txtDescripcion" id="txtDescripcion" value="${Categoria.getDescripcion()}"> </td>
  </tr>
  <tr>
    <td> Imagen : <input type="text" name="txtImagen" id="txtImagen" value="${Categoria.getImagen()}"> </td>
  </tr>
  <tr>
    <td><input type="submit" value="Editar Categoria"> </td>
  </tr>  
</table>
</form>

<form action="BorrarCategoria.htm" method="post" name="BorrarForm">
<table>
  <tr>
  <td>
    <input type="hidden"  name="txtId" id="txtId" value="${Categoria.getId()}">
    <input type="submit" value="Borrar Categoria"> 
  </td>
  </tr>  
</table>
</form>
<br><br><br>


</c:if>



<table width="80%">
<c:forEach var="lista" items="${ListaProductos}">  
  <tr>
<c:forEach var="Producto" items="${lista}">  
  <td width="25%" valign="top">
    <table width="100%">
      <tr valign="top">
        <th>${Producto.getNombre()}</th>
      </tr>
      <tr valign="top">
        <td valign="top">
        <a id="aSeleccion" href="Producto.htm?productoId=${Producto.getId()} " >
        <img alt="" src="${Pagina.getImgPATH()}/Productos/${Producto.getNombre()}/Cat/${Producto.getNombre()}.jpg" width="90%" >
        </a>
        </td>
      </tr>
    </table>  
  </td>
</c:forEach>

  <c:if test="${fn:length(lista) lt 4}">
  <c:set var="x" value="${ 4 - fn:length(lista)}"/>
   <c:forEach begin="0" end="${x-1}"   >
     <td width="25%">
     </td>  
   </c:forEach> 
  </c:if> 

  
  </tr>
</c:forEach>
</table>
          


</div>


</div>
</body>
</html>