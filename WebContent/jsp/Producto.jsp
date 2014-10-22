<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.jpg" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Producto : Vida Independiente.net</title>
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" name="description">

<meta content="es"  name="locale">

<meta content="VidaIndependiente" property="og:site_name">
<meta value="@CVida_ind" name="twitter:site">
<meta content="http://www.VidaIndependiente.net/Producto.htm" property="og:url">
<meta content="VidaIndependiente.net : Portada" property="og:title">
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" property="og:description">
<meta property="og:locale" content="es" />
<meta property="og:type" content="Venta.Ropa.Accesorios.Ancianos" />

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
		<li><a href="CategoriaForm.htm" >Nueva Categoria</a></li>
	    <li><a href="ProductoForm.htm" >Nuevo Producto</a></li>
		<li><a href="NuevoBlog.htm" >Nuevo Blog</a></li>
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





<c:if test="${sessionScope.usuario > 0}">  
<form  action="BorrarProducto.htm" name="borrarForm" method="post">
<input type="hidden" id="txtId" name="txtId" value="${Producto.getId()}">
<input type="submit" value="Borrar Producto">
</form>
</c:if>

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


<form action="EditarProducto.htm" name="ediForm" method="post">  
<table width="80%">
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
        <tr>
        <td align="center">
        <font style="font-size: 120%; font-weight: bold; font-family: sans-serif;"># ${Catalogo}</font>
        </td>
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
            <tr><td align="left"><font style="font-size: 130%; font-family: sans-serif;">${Producto.getPrecio()}  MN</font>     <p><font style="font-size: 80%">Precios incluyen IVA</font></p>     </td></tr>    
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
</body>
</html>