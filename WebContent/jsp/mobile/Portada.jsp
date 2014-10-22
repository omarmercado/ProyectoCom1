<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.jpg" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Portada : Vida Independiente.net</title>
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" name="description">

<meta content="es"  name="locale">

<meta content="VidaIndependiente" property="og:site_name">
<meta value="@CVida_ind" name="twitter:site">
<meta content="http://www.VidaIndependiente.net/Portada.htm" property="og:url">
<meta content="VidaIndependiente.net : Portada" property="og:title">
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" property="og:description">
<meta property="og:locale" content="es" />
<meta property="og:type" content="Venta.Ropa.Accesorios.Ancianos" />

<link href="theme/mobile/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <div >
<img src="/theme/images/portada2.jpg" >
	</div>
<div id="header">
  <div class="section">
<table align="center">
<tr><td>

<table width="100%">
<tr>
<td align="right" width="100%">
<font style="font-weight: bold; font-size: 130%">Conozca nuestras promociones : </font>
</td>
</tr>
<tr>
<td align="right" width="100%">
<a href="https://twitter.com/Vida_Ind" class="twitter-follow-button" data-show-count="false" data-lang="es" data-size="large">Seguir a @Vida_Ind</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</td>
</tr>
</table>
<br>

</td></tr>
<tr><td>
		<ul>
		<li><a href="Portada.htm" ><font style="font-size: 300%">Portada</font></a></li>
		<li><a href="Informacion.htm" ><font style="font-size: 300%">Informacion</font></a></li>
	    <li><a href="Blog.htm" ><font style="font-size: 300%">Blog</font></a></li>
	    
		</ul>
</td></tr>		
</table>		
  </div>
</div>

<table width="100%">
<tr>
<td align="left" width="100%">
<p style="font-size: 160%">
Ropa especial para hombres y mujeres diseñada especialmente para preservar la dignidad de la persona 
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con cierto problema de movilidad limitada.<br>

Estamos ubicados en Tijuana, Baja California,Mexico
</p>
</td>
</tr>
</table>
	

<div id="body">
<!--  
<div  style="width: 100%" align="center">
<table width="100%" align="center">
<tr><td align="center" width="100%" >
<c:forEach var="Categoria" items="${ListCategorias}">  
<div id="DIVcategorias" style="float: center; " align="center">
    <a id="acategoria" href="Categoria.htm?categoriaId=${Categoria.getId()} "><font style="font-size: 180%">${Categoria.getNombre()}</font></a>
</div>
</c:forEach>
</td></tr>
</table>
</div>
-->
<div class="blog">


<table width="90%">
<tr ><td width="100%" align="center">

		<p style="font-size: 300%">SeleccionarCategoria</p>
</td></tr>		
</table>




<table width="100%" align="center">
<c:forEach var="lista" items="${ListCategorias2}">
  <tr>
  
  
  
<c:forEach var="Categoria" items="${lista}">    
  <td width="25%" valign="top">
    <table align="left" width="100%"  cellspacing="5px" >
      <tr>
        <th><font style="font-size: 300%">${Categoria.getNombre()}</font></th>
      </tr>
      <tr>
        <td width="100%">
        <a href="Categoria.htm?categoriaId=${Categoria.getId()} " >
        <img alt="" src="${Pagina.getImgPATH()}/Categorias/${Categoria.getImagen()}.jpg" width="100%">
        </a>
        </td>
      </tr>
    </table>  
  </td>
  </c:forEach>
  
  <c:if test="${fn:length(lista) lt 2}">
  <c:set var="x" value="${ 2 - fn:length(lista)}"/>
   <c:forEach begin="0" end="${x-1}"   >
     <td width="25%">
     </td>  
   </c:forEach> 
  </c:if> 
   
</tr>
</c:forEach>  
</table>  
</div>

<br>
<br>
<hr>
<br>]
<!--  
<table  align="left"> 
<tr><td align="left" >    
<div>    
<h3><font style="font-size: 170%; font-weight: bold;">Blog : Ultimas Entradas</font></h3>

<ul>
<c:forEach var="ListaBlog" items="${ListaBlogs}">  
<li>
<div id="DIV" style="float: center; ">
<a style="text-decoration: none;" href="GetBlog.htm?blogId=${ListaBlog.getId()} "><font style="font-size: 200%; font-weight: bold;">${ListaBlog.getTitulo()}</font></a>
</div>
</li>
</c:forEach>
</ul>
</div>
</td></tr>
</table>    
-->
</div>


</body>
</html>