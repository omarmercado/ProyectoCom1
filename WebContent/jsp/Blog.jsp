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


	
<div id="body" >

<div class="blog">

<div class="sidebar" >


<h3>Ultimas</h3>

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


<h3>Categorias</h3>



<ul style="background: url(/theme/images/bg-nav-right.gif) repeat top right;">
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




</div>


<div class="content">


<c:if test="${sessionScope.usuario > 0}">  
<form  action="EliminarBlog.htm" name="borrarForm" method="post">
<input type="hidden" id="txtId" name="txtId" value="${Blog.getId()}">
<input type="submit" value="Borrar Blog">
</form>
</c:if>


<form action="EditarBlog.htm" name="ediForm" method="post">  
<table width="80%">
  <tr>
    <td width="70%">
      <table width="100%">
        <tr>
          <td align="center">   
          <c:choose>
            <c:when test="${sessionScope.usuario > 0}">        
                <input type="text" name="txtTitulo" id="txtTitulo" value="${Blog.getTitulo()}"> 
            </c:when>
            <c:when test="${empty sessionScope.usuario}">
             <p><font style="font-size: 200%; font-weight: bold; font-family: sans-serif; ">${Blog.getTitulo()}</font></p>  
            </c:when>
          </c:choose>
          </td>
        </tr>  
        <tr><td><br><br></td></tr>
        
       <tr>
         <td align="center">
        <c:choose>
          <c:when test="${sessionScope.usuario > 0}">                   
              <textarea name="txtTexto" id="txtTexto" cols="60" rows="30">${Blog.getTexto()}</textarea>
          </c:when>
          <c:when test="${empty sessionScope.usuario}">
            <p align="justify"><font style="font-size: 150%; font-weight: bold;">${Blog.getTexto()}</font></p>
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

                    
</div>

</div>


</div>
</body>
</html>