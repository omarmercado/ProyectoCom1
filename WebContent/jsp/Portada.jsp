<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/jpg" href="/theme/images/icon.jpg" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Portada : Vida Independiente.net</title>
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" name="description">

<meta content="es"  name="locale">

<meta content="VidaIndependiente" property="og:site_name">
<meta value="@CVida_ind" name="twitter:site">
<meta content="http://www.VidaIndependiente.net/" property="og:url">
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
		<li><a href="Portada.htm" >Portada</a></li>
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
		<li><a href="CategoriaForm.htm">Nueva Categoria</a></li>
	    <li><a href="ProductoForm.htm">Nuevo Producto</a></li>
		<li><a href="NuevoBlog.htm">Nuevo Blog</a></li>
		</ul>
</td></tr>		
</table>
</c:if>	
  </div>
</div>
	

<div id="body">

<div class="blog">

<div class="sidebar"  >


<h3>Categorias</h3>


<ul>
<c:forEach var="Categoria" items="${ListCategorias}">  
<li>
<a id="acategoria" href="Categoria.htm?categoriaId=${Categoria.getId()} ">
${Categoria.getNombre()}
</a>
</li>
</c:forEach>
</ul>
</div>

<table width="80%">
<tr>
<td align="left" >
<font style="">

Ropa especial y Accesorios para hombres y mujeres, diseñada especialmente para preservar la dignidad de la persona
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con cierto problema de movilidad limitada.<br><br>

Estamos ubicados en Tijuana, Baja California,Mexico
<a href="Informacion.htm">Mas Informacion...</a>
 </font>
</td>
</tr>
</table>

<table width="80%">
<tr>
<td align="right" width="100%">
<font style="font-weight: bold;">Conozca nuestras promociones : </font>
</td>
</tr>
<tr>
<td align="right" width="100%">
<a href="https://twitter.com/Vida_Ind" class="twitter-follow-button" data-show-count="false" data-lang="es" >Seguir a @Vida_Ind</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</td>
</tr>
</table>


<table width="80%">

<c:forEach var="lista" items="${ListCategorias2}">
  <tr>
    
<c:forEach var="Categoria" items="${lista}">    
  <td width="25%" valign="top">
    <table align="left" width="100%"  cellspacing="5px" >
      <tr >
        <th>${Categoria.getNombre()}</th>
      </tr>
      <tr>
        <td width="100%">
        <a id="aSeleccion" href="Categoria.htm?categoriaId=${Categoria.getId()} " >
        <img alt="" src="${Pagina.getImgPATH()}/Categorias/${Categoria.getImagen()}.jpg" width="100%">
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
<br><br>

<!--  
<h3>No Olvide Visitar Nuestro Blog</h3>
<table id="blogTable"  align="left" width="80%">
<tr>
<th align="left">
Ultimas Entradas
<th>
</th>
</tr>
<tr>
<td>

<ul>
<c:forEach var="ListaBlog" items="${ListaBlogs}">  
<li style="list-style: square;">  <a style="text-decoration: none;" href="GetBlog.htm?blogId=${ListaBlog.getId()} "> 
  <font style="font-size: 120%">${ListaBlog.getTitulo()} </font>
  </a>  </li>
</c:forEach>
</ul>
</td>
</tr>



</table>
-->


</div>


</body>
</html>