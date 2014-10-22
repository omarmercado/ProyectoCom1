<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html prefix="og: http://ogp.me/ns#">
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="images/png" href="/theme/images/icon.jpg" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Informacion : Vida Independiente.net</title>
<meta content="Sitio dedicado a la venta de ropa y accesorios especialmente diseñada para personas
que tiene que ser vestida, para aquellos que están postrados en cama, en silla de ruedas,  o con 
cierto problema de movilidad limitada. Ancianos (tercera edad), artritis o problemas de movilidad.
Ubicado en Tijuana, Baja California Mexico" name="description">

<meta content="es"  name="locale">

<meta content="VidaIndependiente" property="og:site_name">
<meta value="@CVida_ind" name="twitter:site">
<meta content="http://www.VidaIndependiente.net/Informacion.htm" property="og:url">
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

<div id="DIVP" class="content" align="center" style=" border-top: 150px;width: 70%" >
    <div id="DIV1">
<table>
  <tr>
    <td>
      <table >
<tr><td><br>
         <p style="font-size: 120%; font-family: sans-serif;line-height: 1.1">
        VIDA INDEPENDIENTE.<br><br> 
 Creemos que lo que una compañía representa es tan importante como lo que puede proporcionar al cliente.<br>
 Por lo que Ofrecemos a nuestros clientes,  formas de obtener información y de enviárnos sus comentarios.<br>
 Animamos a los clientes a ponerse en contacto con nosotros con sus opiniones, y preguntas, las que <br> 
 contestaremos lo mas pronto posible. <br>
        </p><br>
</td><tr>
      
        <tr>
          <th><p id="titulo"><font style="font-size: 300%">Contacto</font></p></th>          
        </tr>
        <tr><td><br><br></td></tr>
</table>
        <tr><td>
        <table width="100%">
          <tr>
            <td><font style="font-size: 120%;font-weight: bold; ">Nuestra Direccion   </font></td>
            <td> Calle 11va. # 8661-2 Tijuana , Baja California, Mexico    </td>
          </tr>

<tr><td><br></td><tr>
          
          <tr>
            <td width="40%"><font style="font-size: 120% ;font-weight: bold;" >Telefono </font> </td>
            <td> 664 324 6778   </td>
          </tr>

<tr><td><br></td><tr>

          <tr>
            <td><font style="font-size: 120% ;font-weight: bold;">Correo  </font></td>
            <td>  VidaIndependiente@outlook.com   </td>
          </tr>

<tr><td><br></td><tr>

          <tr>
            <td><font style="font-size: 120% ;font-weight: bold;">Facebook  </font></td>
            <td>     </td>
          </tr>

<tr><td><br></td><tr>
        
          <tr>
            <td><font style="font-size: 120% ;font-weight: bold;">Twiter  </font></td>
            <td> <a href="https://twitter.com/Vida_Ind" class="twitter-follow-button" data-show-count="false" data-lang="es" >Seguir a @Vida_Ind</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
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
<table width="80%">
  <tr>
    <td width="100%">
      <table width="100%">
<tr><td><br></td><tr>
      
        <tr>
          <th><p id="titulo"><font style="font-size: 300%">Contacto</font></p></th>          
        </tr>
        <tr><td><br>
                <p style="font-size: 120%; font-family: sans-serif;line-height: 1.1">
        VIDA INDEPENDIENTE.<br><br> 
 Creemos que lo que una compañía representa es tan importante como lo que puede proporcionar al cliente.<br>
 Por lo que Ofrecemos a nuestros clientes,  formas de obtener información y de enviárnos sus comentarios.<br>
 Animamos a los clientes a ponerse en contacto con nosotros con sus opiniones, y preguntas, las que <br> 
 contestaremos lo mas pronto posible. <br>
        </p>
        
        <br></td></tr>
</table>
        
        <table width="100%">
          <tr>
            <td><font style="font-size: 120%;font-weight: bold; ">Nuestra Direccion   </font></td>
            <td> Calle 11va. # 8661-2 Tijuana , Baja California, Mexico    </td>
          </tr>

<tr><td><br></td><tr>
          
          <tr>
            <td width="40%"><font style="font-size: 120% ;font-weight: bold;" >Telefono </font> </td>
            <td> 664 324 6778   </td>
          </tr>

<tr><td><br></td><tr>

          <tr>
            <td><font style="font-size: 120% ;font-weight: bold;">Correo  </font></td>
            <td>  VidaIndependiente@outlook.com   </td>
          </tr>

<tr><td><br></td><tr>

          <tr>
            <td><font style="font-size: 120% ;font-weight: bold;">Facebook  </font></td>
            <td>     </td>
          </tr>

<tr><td><br></td><tr>
        
          <tr>
            <td><font style="font-size: 120% ;font-weight: bold;">Twiter  </font></td>
            <td> <a href="https://twitter.com/Vida_Ind" class="twitter-follow-button" data-show-count="false" data-lang="es" >Seguir a @Vida_Ind</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
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
          <th><p id="titulo"><font style="font-size: 300%">Acerca De Nosotros</font></p></th>          
        </tr>
        <tr><td><br><br></td></tr>
        <tr>
        <td align="center">
        <p id="texto" align="justify"><font style="font-size: 130%; line-height: 1.1; font-family: sans-serif;">
 En VIDA INDEPENDIENTE tenemos ROPA Y ARTICULOS QUE AYUDAN en el cuidado de la población con  necesidades  
 <br>especiales. <br><br>
 
Entendemos las necesidades de las personas de la tercera edad, personas con obesidad, con artritis, con Parkinson <br> 
o  con retrasos físicos, retrasos de desarrollo y cognitivos.<br><br>

Ropa especial para hombres Y mujeres, que los ayuda a cumplir con suS TAREAS  DIARIAS. <br>
Tenemos para las personas que ya no pueden vestirse y para las que tienen que ser asistidas.<br><br>


Nuestra ropa ha sido diseñadA especialmente para preservar la dignidad de la persona que tiene que ser vestida, para <br> 
aquellos que están postrados en cama, en silla de ruedas,  o con ciertO problema de movilidad limitada. <br><br>

 Tenemos en cuenta que usted está buscando la ropa que debe ser fácil de cuidar, que aguantara  los rigores de las lavadoras y <br> 
 secadoras. <br><br>

Mantenemos la asequibilidad de precio en mente, tratando de proporcionar la ropa de calidad a precios razonables y <br> 
competitivos.<br><br>

Esperamos poder servirle y tener la satisfacción de proporcionarle lo que usted necesita.</font> </p>
        </td>
        </tr>
        
      </table>
    </td>
  </tr> 
</table>
</div>

<div id="DIV3" style="visibility: hidden;width: 0px;height: 0px">
<table width="80%">
        <tr><td><br></td></tr>

  <tr>
    <td width="100%">
      <table width="100%">
        <tr>
          <th><p id="titulo"><font style="font-size: 300%">Ubicacion</font></p></th>          
        </tr>
        <tr><td><br></td></tr>
        
          
          <tr>
            <td><font style="font-size: 120%;font-weight: bold; ">Nuestra Direccion   </font>
             Calle 11va. # 8661-2 Tijuana , Baja California, Mexico    </td>
          </tr>
          
                  <tr><td><br><br></td></tr>
          
          
        <tr>
        <td align="left">
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