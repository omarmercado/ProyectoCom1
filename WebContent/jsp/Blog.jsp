<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.jpg" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog : Vida Independiente.net</title>
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" name="description">

<meta content="es"  name="locale">

<meta content="VidaIndependiente" property="og:site_name">
<meta value="@CVida_ind" name="twitter:site">
<meta content="http://www.VidaIndependiente.net/Blog.htm" property="og:url">
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



<ul >
<c:forEach var="Categoria" items="${ListCategorias}">  
<li>
<a id="acategoria" href="Categoria.htm?categoriaId=${Categoria.getId()} ">
${Categoria.getNombre()}
</a>
</li>
</c:forEach>
</ul>




</div>


<div class="content" style="width: 77%">


<c:if test="${sessionScope.usuario > 0}">  
<form  action="EliminarBlog.htm" name="borrarForm" method="post">
<input type="hidden" id="txtId" name="txtId" value="${Blog.getId()}">
<input type="submit" value="Borrar Blog">
</form>
</c:if>


<form action="EditarBlog.htm" name="ediForm" method="post">  
<table width="80%">
  <tr>
    <td>
      <table >
        <tr>
          <td align="center">   
          <c:choose>
            <c:when test="${sessionScope.usuario > 0}">        
                <input type="text" name="txtTitulo" id="txtTitulo" value="${Blog.getTitulo()}"> 
            </c:when>
            <c:when test="${empty sessionScope.usuario}">
             <p><font style="font-size: 160%; font-family: sans-serif; ">${Blog.getTitulo()}</font></p>  
            </c:when>
          </c:choose>
          </td>
        </tr>  
        <tr><td><br></td></tr>
        
       <tr>
         <td align="center">
        <c:choose>
          <c:when test="${sessionScope.usuario > 0}">                   
              <textarea name="txtTexto" id="txtTexto" cols="80" rows="30">${Blog.getTexto()}</textarea>
          </c:when>
          <c:when test="${empty sessionScope.usuario}">
           <p align="justify" ><font style="font-size: 140%;font-family: sans-serif;line-height: 1.1">${Blog.getTexto()}</font></p> 
          </c:when>
        </c:choose>
        </td>
      </tr>
</table>

<c:if test="${sessionScope.usuario > 0}">  

<tr><td>
<input type="hidden" id="txtId" name="txtId" value="${Blog.getId()}">
<input type="submit" value="Editar Blog">
</td></tr>
</c:if>


</table>

</form>

      
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
      
                    
</div>

</div>


</div>
</body>
</html>