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

function mostrar(div){
	

	var divp =document.getElementById('DIVP');
	divp.innerHTML = "";
	
       var d = document.createElement('div');
       d.id =div;
       d.innerHTML = document.getElementById(div).innerHTML;
       divp.appendChild(d);
	
	
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
		<li><a href="Portada.htm" >Portada</a></li>
		<li><a href="Informacion.htm" >Informacion</a></li>
	    <li><a href="Blog.htm" >Blog</a></li>
		</ul>
</td></tr>	
</table>
<table  align="center">
<tr><td>
		<ul>
		<li><a href="#" onclick="mostrar('DIV1');">Contacto</a></li>
	    <li><a href="#" onclick="mostrar('DIV2');">Acerca de Nosotros</a></li>
	    <li><a href="#" onclick="mostrar('DIV3');">Ubicacion</a></li>
	    
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


<div id="DIVP" class="content" align="center" >
    <div id="DIV1">
<table width="80%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th><p id="titulo"><font style="font-size: 350%">Contacto</font></p></th>          
        </tr>
        <tr><td><br><br></td></tr>
        <tr>
        <td align="justify">
        <p id="texto"><font style="font-size: 200%">Contacto</font> </p>
        </td>
        </tr>
        
      </table>
    </td>
  </tr> 
</table>
</div>                  
                            
</div>

</div>

</div>



<div id="DIV1" style="visibility: hidden;width: 0px;height: 0px">
<table width="100%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th><p id="titulo"><font style="font-size: 350%">Contact</font></p></th>          
        </tr>
        <tr><td><br><br></td></tr>
        <tr>
        <td align="justify">
        <p id="texto"><font style="font-size: 200%">Contact</font> </p>
        </td>
        </tr>
        
      </table>
    </td>
  </tr> 
</table>
</div>


<div id="DIV2" style="visibility: hidden;width: 0px;height: 0px">
<table width="100%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th><p id="titulo"><font style="font-size: 350%">Acerca De Nosotros</font></p></th>          
        </tr>
        <tr><td><br><br></td></tr>
        <tr>
        <td align="justify">
        <p id="texto"><font style="font-size: 200%">Acerca De Nosotros</font> </p>
        </td>
        </tr>
        
      </table>
    </td>
  </tr> 
</table>
</div>

<div id="DIV3" style="visibility: hidden;width: 0px;height: 0px">
<table width="100%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th><p id="titulo"><font style="font-size: 350%">Ubicacion</font></p></th>          
        </tr>
        <tr><td><br><br></td></tr>
        <tr>
        <td align="center">
        <img src="fotos/Locacion.jpg" width="60%" height="60%"/>
        </td>
        </tr>
        
      </table>
    </td>
  </tr> 
</table>
</div>

</body>
</html>