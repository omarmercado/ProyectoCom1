<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nombre.com</title>
<link href="theme/mobile/style.css" rel="stylesheet" type="text/css" />
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
  </div>
</div>
	

<div id="body">

<div  style="width: 100%" >
<table width="100%" align="center">
<tr><td align="center">Categorias</td></tr>
<tr><td align="center">
<c:forEach var="Categoria" items="${ListCategorias}">  
<div id="DIVcategorias" style="float: center; ">
  <font style="font-size: 350%">
    <a id="acategoria" href="Categoria.htm?categoriaId=${Categoria.getId()} ">${Categoria.getNombre()}</a>
  </font>
</div>
</c:forEach>
</td></tr>
</table>
</div>



<div class="blog">


<table align="center">
<tr><td>

		<h3>Seleccionar Categoria</h3>
</td></tr>		
</table>


<table width="80%" align="center">
<c:forEach var="lista" items="${ListCategorias2}">
  <tr>
  
  
  
<c:forEach var="Categoria" items="${lista}">    
  <td width="25%">
    <table align="left" width="100%"  cellspacing="5px" >
      <tr>
        <th>${Categoria.getNombre()}</th>
      </tr>
      <tr>
        <td width="100%">
        <a href="Categoria.htm?categoriaId=${Categoria.getId()} " >
        <img alt="" src="fotos/Categorias/${Categoria.getImagen()}.jpg" width="100%">
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
</div>


</body>
</html>