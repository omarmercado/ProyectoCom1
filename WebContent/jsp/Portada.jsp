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


<ul style="background: url(/theme/images/bg-nav-right.gif) repeat top right;">
<c:forEach var="Categoria" items="${ListCategorias}">  
<li>
<div id="DIVcategorias" style="float: center;">

<a id="acategoria" href="Categoria.htm?categoriaId=${Categoria.getId()} ">
${Categoria.getNombre()}
</a>
</div>
</li>
</c:forEach>
</ul>


<h3>Blog</h3>

<ul>
<c:forEach var="ListaBlog" items="${ListaBlogs}">  
<li>
<div id="DIV" style="float: center; ">

<a  href="GetBlog.htm?blogId=${ListaBlog.getId()} ">
${ListaBlog.getTitulo()}
</a>
</div>
</li>
</c:forEach>
</ul>

</div>

<table align="center">
<tr><td>

		<h3></h3>
</td></tr>		
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
</div>
</div>


</body>
</html>