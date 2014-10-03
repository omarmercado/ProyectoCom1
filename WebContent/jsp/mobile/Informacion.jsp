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
	<br><br>
<div id="header">
  <div class="section">
<table align="center">
<tr><td>
		<ul>
		<li><a href="Portada.htm" ><font style="font-size: 280%">Portada</font></a></li>
		<li><a href="Portada.htm" ><font style="font-size: 280%">Contacto</font></a></li>
	    <li><a href="Blog.htm" ><font style="font-size: 280%">Blog</font></a></li>
	    
		</ul>
		
</td></tr>		
</table>
<br><br><br><br>
<table>
<tr><td>
		<ul>
		<li><a href="#" onclick="mostrar('DIV1');"><font style="font-size: 200%">Contacto</font></a></li>
	    <li><a href="#" onclick="mostrar('DIV2');"><font style="font-size: 200%">Acerca de Nosotros</font></a></li>
	    <li><a href="#" onclick="mostrar('DIV3');"><font style="font-size: 200%">Ubicacion</font></a></li>
	    
		</ul>
		<br>
		
</td></tr>

</table>
  </div>
</div>

<br>
<br>


<br>
<br>
	
<div id="body"  align="center">

<div id="DIVP" class="content" align="center">

    <div id="DIV1">
    
<table width="100%">
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