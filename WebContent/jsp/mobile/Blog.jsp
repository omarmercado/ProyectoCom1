<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.jpg" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog : Vida Independiente.net</title>
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" name="description">

<meta content="es"  name="locale">

<meta content="VidaIndependiente" property="og:site_name">
<meta value="@CVida_ind" name="twitter:site">
<meta content="http://www.VidaIndependiente.net/Blog.htm" property="og:url">
<meta content="VidaIndependiente.net : Portada" property="og:title">
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" property="og:description">
<meta property="og:locale" content="es" />
<meta property="og:type" content="Venta.Ropa.Accesorios.Ancianos" />

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

<br>
<br>
<br>
<br>
	
<div id="body" >


<div class="content" align="center">

<table width="100%">
  <tr>
    <td width="100%">
      <table width="90%">
        <tr>
          <th><font style="font-size: 350%">${Blog.getTitulo()}</font></th>          
        </tr>
        <tr><td><br><br></td></tr>
      
        </table>
        <table width="80%" align="center">
        <tr>
        <td align="center">
        <p align="justify"><font style="font-size: 240%;font-family: sans-serif;line-height: 1.2;">${Blog.getTexto()}</font> </p>
        </td>
        </tr>
        
      </table>
    </td>
  </tr> 
</table>
         
<table width="100%" align="left"> 
<tr><td align="left">    
<div>    
<h3><font style="font-size: 200%; font-weight: bold;">Ultimas Entradas</font></h3>

<ul>
<c:forEach var="ListaBlog" items="${ListaBlogs}">  
<li>
<div id="DIV" style="float: center; ">
<a style="text-decoration: none;" href="GetBlog.htm?blogId=${ListaBlog.getId()} "><font style="font-size: 280%; font-weight: bold;font-family: verdana;">${ListaBlog.getTitulo()}</font></a>
</div>
</li>
</c:forEach>
</ul>
</div>
</td></tr>
</table>     
         
                    
</div>




</div>
</body>
</html>