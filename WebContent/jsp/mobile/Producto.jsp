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

  </div>
</div>


	
<div id="body" >

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


			<div class="content" align="center">

<table width="100%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th>${Producto.getNombre()}</th>          
        </tr>
        
        <tr>
        <td align="center">
        Precio : ${Producto.getPrecio()}
        </td>
        </tr>
        
        <tr>
          <td align="center" >
            <a href="Producto.htm?productoId=${Producto.getId()} " >
              <img id="FOTO" alt="" src="fotos/Productos/${Producto.getNombre()}/Foto Principal/${Producto.getNombre()}.jpg" width="70%">
            </a>
          </td>
        </tr>
        
        
      </table>
       </td>
       </tr> 
   
   <tr>
   <td>
      <table width="100%" align="center">
        <tr><td>Otras Imagenes</td></tr>

        <tr>
          <c:forEach begin="0" end="${Producto.getImagenes()}" varStatus="loop">
          <td> 
           <a href='#'  onclick='cambiarImagen(<c:out value="${loop.index}"/>);'>
               <img alt="" src="fotos/Productos/${Producto.getNombre()}/Fotos/${Producto.getNombre()}_${loop.index}.jpg" width="40%" >
               
          </a>             
          </td>
          </c:forEach>
        </tr>
        
        <tr><td><br><br></td></tr>

        <tr> <td align="center"> Descripcion</td></tr>
        <tr> <td align="center"> ${Producto.getDescripcion()}</td></tr>

      </table>  
    </td>
  </tr>
</table>
                    
</div>




</div>
</body>
</html>