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

<br>
<br>
<br>
<br>
	
<div id="body" >


<div class="content" align="center">

<table width="100%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th><font style="font-size: 450%">${Blog.getTitulo()}</font></th>          
        </tr>
        <tr><td><br><br></td></tr>
      
        </table>
        <table width="80%" align="center">
        <tr>
        <td align="center">
        <p align="justify"><font style="font-size: 210%;font-family: verdana;line-height: 1.2;">${Blog.getTexto()}</font> </p>
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