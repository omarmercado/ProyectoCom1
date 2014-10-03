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
	

<div id="body">

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
        <th><font style="font-size: 300%">${Categoria.getNombre()}</font></th>
      </tr>
      <tr>
        <td width="100%">
        <a href="Categoria.htm?categoriaId=${Categoria.getId()} " >
        <img alt="" src="${Pagina.getImgPATH()}/Categorias/${Categoria.getImagen()}.jpg" width="100%">
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

<br>
<br>
<hr>
<br>
<table width="100%" align="left"> 
<tr><td align="left">    
<div>    
<h3><font style="font-size: 170%; font-weight: bold;">Blog : Ultimas Entradas</font></h3>

<ul>
<c:forEach var="ListaBlog" items="${ListaBlogs}">  
<li>
<div id="DIV" style="float: center; ">
<a style="text-decoration: none;" href="GetBlog.htm?blogId=${ListaBlog.getId()} "><font style="font-size: 200%; font-weight: bold;">${ListaBlog.getTitulo()}</font></a>
</div>
</li>
</c:forEach>
</ul>
</div>
</td></tr>
</table>    

</div>


</body>
</html>