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


<script type="text/javascript">

function cambiarColor(index){

	var producto = '${Producto.getNombre()}';
	var source = 'fotos/Productos/'+producto+'/Colores/'+producto+'_'+index+'.jpg';
	
	document.getElementById('FOTO').src = source;	
}

function cambiarImagen(index){

	var producto = '${Producto.getNombre()}';
	var source = 'fotos/Productos/'+producto+'/Fotos/'+producto+'_'+index+'.jpg';
	
	document.getElementById('FOTO').src = source;	
}

</script>


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
<form  action="BorrarProducto.htm" name="borrarForm" method="post">
<input type="hidden" id="txtId" name="txtId" value="${Producto.getId()}">
<input type="submit" value="Borrar Producto">
</form>
</c:if>


<form action="EditarProducto.htm" name="ediForm" method="post">  
<table width="90%">
  <tr>
    <td width="70%" valign="top" >
      <table width="100%" >
      <tr><td><br><br><br></td></tr>
        <tr>
          
          <c:choose>
            <c:when test="${sessionScope.usuario > 0}">        
              <tr><td>
                <input type="text" name="txtNombre" id="txtNombre" value="${Producto.getNombre()}"> 
              </td></tr>
            </c:when>
            <c:when test="${empty sessionScope.usuario}">
              <th><font style="font-size: 170%; font-weight: bold; font-family: sans-serif;">${Producto.getNombre()}</font></th>          
            </c:when>
          </c:choose>
          
        </tr>
        <tr valign="top">
          <td align="center" valign="top">
            <a href="Producto.htm?productoId=${Producto.getId()}" >
              <img id="FOTO" alt="" src="${Pagina.getImgPATH()}/Productos/${Producto.getNombre()}/Foto Principal/${Producto.getNombre()}.jpg" width="70%">
            </a>
          </td>
        </tr> 
        <tr>
          <td  align="center">      
            <c:forEach begin="0" end="${Producto.getImagenes()}" varStatus="loop">
              <a href='#'  onclick='cambiarImagen(<c:out value="${loop.index}"/>);'>
              <img alt="" src="${Pagina.getImgPATH()}/Productos/${Producto.getNombre()}/Fotos/${Producto.getNombre()}_${loop.index}.jpg" width="10%" >
              </a>          
            </c:forEach>
          </td>
        </tr>  
      </table>  
    </td>
    <td valign="top" width="30%"> <br>
      <table>
        <tr><td><font style="font-size: 150%; font-weight: bold; font-family: sans-serif;">Descripcion de Producto</font></td></tr>

        <tr><td><br><br></td></tr>

        <tr><td><font style="font-size: 120%; font-weight: bold; font-family: sans-serif;">Precio</font></td></tr>
       <c:choose>
          <c:when test="${sessionScope.usuario > 0}">        
            <tr><td>
              <input type="text" name="txtPrecio" id="txtPrecio" value="${Producto.getPrecio()}"> 
            </td></tr>
          </c:when>
          <c:when test="${empty sessionScope.usuario}">
            <tr><td align="left"><font style="font-size: 130%; font-family: sans-serif;">${Producto.getPrecio()}</font></td></tr>    
          </c:when>
        </c:choose>


        <tr><td><br><br></td></tr>

        <c:choose>
          <c:when test="${sessionScope.usuario > 0}">        
            <tr><td>
              <textarea name="txtDescripcion" id="txtDescripcion" cols="20" rows="10">${Producto.getDescripcion()}</textarea>
            </td></tr>
          </c:when>
          <c:when test="${empty sessionScope.usuario}">
            <tr><td><p>
            <font style="font-size: 130%; font-family: sans-serif;">${Producto.getDescripcion()}</font></p></td></tr>
          </c:when>
        </c:choose>

        <tr><td><br></td></tr>
        
      </table>  
    </td>
  </tr>

<c:if test="${sessionScope.usuario > 0}">  
<tr><td>
Cantidad de imagenes <input type="text" name="txtImagenes" id="txtImagenes" value="${Producto.getImagenes()}">
</td></tr>
<tr><td>
<input type="hidden" id="txtId" name="txtId" value="${Producto.getId()}">
<input type="submit" value="Editar Producto">
</td></tr>
</c:if>


</table>

</form>
      
</div>

</div>


</div>
</body>
</html>