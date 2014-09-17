<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nombre.com</title>
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


	
<div id="body" >

<div class="blog">

<div class="sidebar" >

<h3>Categorias</h3>



<ul>
<c:forEach var="Categoria" items="${ListCategorias}">  
<li>
<div id="DIVcategorias" style="float: center; ">

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


<div class="content">


<c:if test="${sessionScope.usuario > 0}">  
<form  action="EliminarBlog.htm" name="borrarForm" method="post">
<input type="hidden" id="txtId" name="txtId" value="${Blog.getId()}">
<input type="submit" value="Borrar Blog">
</form>
</c:if>


<form action="EditarBlog.htm" name="ediForm" method="post">  
<table width="90%">
  <tr>
    <td width="70%">
      <table width="100%">
        <tr>
          <td>   
          <c:choose>
            <c:when test="${sessionScope.usuario > 0}">        
                <input type="text" name="txtTitulo" id="txtTitulo" value="${Blog.getTitulo()}"> 
            </c:when>
            <c:when test="${empty sessionScope.usuario}">
              <th>${Blog.getTitulo()}</th>          
            </c:when>
          </c:choose>
          </td>
        </tr>  
        <tr><td><br><br></td></tr>

        <tr><td>Descripcion</td></tr>
        
        <c:choose>
          <c:when test="${sessionScope.usuario > 0}">        
            <tr><td>
              <textarea name="txtTexto" id="txtTexto"> 
                ${Blog.getTexto()}
              </textarea>
            </td></tr>
          </c:when>
          <c:when test="${empty sessionScope.usuario}">
            <tr><td><p>${Blog.getTexto()}</p></td></tr>
          </c:when>
        </c:choose>

</table>

<c:if test="${sessionScope.usuario > 0}">  

<tr><td>
<input type="hidden" id="txtId" name="txtId" value="${Blog.getId()}">
<input type="submit" value="Editar Blog">
</td></tr>
</c:if>


</table>

</form>

                    
</div>

</div>


</div>
</body>
</html>