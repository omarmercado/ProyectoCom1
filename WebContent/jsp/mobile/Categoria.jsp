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


	
<div id="body" style="width: 100%">


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


			<div class="content">
			<table align="center">
<tr><td>

		<h3> Categoria</h3>
</td></tr>		
</table>


<br><br>
<table width="100%">
<c:forEach var="lista" items="${ListaProductos}">  
  <tr>
<c:forEach var="Producto" items="${lista}">  
  <td width="33%">
    <table width="100%">
      <tr>
        <th>${Producto.getNombre()}</th>
      </tr>
      <tr>
        <td> 
        <a href="Producto.htm?productoId=${Producto.getId()}"  >
        <img alt="" src="fotos/Productos/${Producto.getNombre()}/Foto Principal/${Producto.getNombre()}.jpg" width="100%" >
        </a>
        </td>
      </tr>
    </table>  
  </td>
</c:forEach>

  <c:if test="${fn:length(lista) lt 3}">
  <c:set var="x" value="${ 3 - fn:length(lista)}"/>
   <c:forEach begin="0" end="${x-1}"   >
     <td width="33%">
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