<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VidaIndependiente.NET</title>
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
<tr><td><br><br><br>
</td></tr>
<tr><td>
		<ul>
		<li><a href="Portada.htm" ><font style="font-size: 280%">Portada</font></a></li>
		<li><a href="Informacion.htm" ><font style="font-size: 280%">Informacion</font></a></li>
	    <li><a href="Blog.htm" ><font style="font-size: 280%">Blog</font></a></li>
	    
		</ul>
</td></tr>		
</table>		
  </div>
</div>


	
<div id="body" >

<div  style="width: 100%" >
<table width="100%" align="center">
<tr><td align="center" width="100%">
<c:forEach var="Categoria" items="${ListCategorias}">  
<div id="DIVcategorias" style="float: center; " align="center">
    <a id="acategoria" href="Categoria.htm?categoriaId=${Categoria.getId()} "><font style="font-size: 160%">${Categoria.getNombre()}</font></a>
</div>
</c:forEach>
</td></tr>
</table>
</div>
<br><br><br><br>

			<div class="content" align="center">

<table width="100%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th><font style="font-size: 400%">${Producto.getNombre()}</font></th>          
        </tr>
        <tr>
        <td align="center">
         <p><font style="font-size: 350%;font-weight: bold; ">Precio : ${Producto.getPrecio()}</font></p>
        </td>
        </tr>
        
        <tr>
          <td align="center" >
            <a href="Producto.htm?productoId=${Producto.getId()} " >
              <img id="FOTO" alt="" src="${Pagina.getImgPATH()}/Productos/${Producto.getNombre()}/Foto Principal/${Producto.getNombre()}.jpg" width="70%">
            </a>
          </td>
        </tr>
        
        
      </table>
       </td>
       </tr> 
   
   <tr>
   <td align="center">
      <table width="100%" align="center">
        <tr><td align="center">Otras Imagenes</td></tr>

        <tr>
          <c:forEach begin="0" end="${Producto.getImagenes()}" varStatus="loop">
          <td> 
           <a href='#'  onclick='cambiarImagen(<c:out value="${loop.index}"/>);'>
               <img alt="" src="${Pagina.getImgPATH()}/Productos/${Producto.getNombre()}/Fotos/${Producto.getNombre()}_${loop.index}.jpg" width="40%" >
               
          </a>             
          </td>
          </c:forEach>
        </tr>
        
        <tr><td><br><br></td></tr>
      </table>  
    </td>
  </tr>
</table>
                    
                    <table width="80%" align="center">
        <tr> <td align="center"><font style="font-size: 300%"> Descripcion </font></td></tr>
        <tr> <td align="justify"><font style="font-size: 280%"> ${Producto.getDescripcion()}</font></td></tr>
                    </table>
</div>




</div>
</body>
</html>