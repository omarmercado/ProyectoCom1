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


	
<div id="body" >


<div class="content" align="center">

<table width="100%">
  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th>${Blog.getTitulo()}</th>          
        </tr>
        
        <tr>
        <td align="center">
        <p> ${Blog.getTexto()} </p>
        </td>
        </tr>
        
      </table>
    </td>
  </tr> 
</table>
         
<table> 
<tr><td>    
<div>    
<h3>Blog</h3>

<ul>
<c:forEach var="ListaBlog" items="${ListaBlogs}">  
<li>
<div id="DIV" style="float: center; ">
<a  href="GetBlog.htm?blogId=${ListaBlog.getId()} ">${ListaBlog.getTitulo()}</a>
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