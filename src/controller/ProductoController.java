package controller;

import hibernate.Categoria;
import hibernate.Producto;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import dao.CategoriasDAO;
import dao.PaginaDAO;
import dao.ProductosDAO;
import dao.UsuariosDAO;

@Controller
public class ProductoController {

	
	
	@Autowired
	ProductosDAO productosDAO;
	
	@Autowired
	PaginaDAO paginaDAO;
	
	@Autowired
	CategoriasDAO categoriasDAO;
	
	@Autowired
	UsuariosDAO usuariosDAO;
	
	
	@RequestMapping(value="/Producto.htm", method=RequestMethod.GET)
	public ModelAndView getProducto(@RequestParam(value="productoId")String productoId, 
			HttpServletRequest request  ){
		
	    Producto producto = productosDAO.getProdutco(productoId);
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Producto"); 

	    
		ModelAndView mv = new ModelAndView();
		mv.setViewName(VersionInfo.get("View"));
	
		List<Categoria> ListCategorias = categoriasDAO.getCategoriasInfo();	
		mv.addObject("ListCategorias",ListCategorias); 

		  
		  mv.addObject("Producto",producto); 
		  
			String tipo =	VersionInfo.get("Tipo");

			paginaDAO.pageView("Producto", productoId, tipo);

			
		return mv ;
		
	}
	
	
	@RequestMapping(value="/ProductoForm.htm", method=RequestMethod.GET)
	public ModelAndView getProductoForm(HttpServletRequest request){
		
		List<Categoria> ListCategorias = categoriasDAO.getCategoriasInfo();	
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "NuevoProducto"); 

		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(VersionInfo.get("View"));
		
		mv.addObject("ListCategorias",ListCategorias); 
  
		return mv ;
		
	}
	
	
	
	@RequestMapping(value="/NuevoProducto.htm", method=RequestMethod.POST)
	public View nuevoProducto(@RequestParam(value="txtNombre")String nombre,
			@RequestParam(value="txtDescripcion")String descripcion,
			@RequestParam(value="txtImagenes")int imagenes,
			@RequestParam(value="txtCategorias")String[] categorias,
			@RequestParam(value="txtColores")int colores,
			@RequestParam(value="txtPrecio")double precio,
			HttpServletRequest request  ){
				
	    Producto p = new Producto();
	    p.setNombre(nombre);
	    p.setDescripcion(descripcion);
	    p.setColores(colores);
	    p.setImagenes(imagenes);
	    p.setPrecio(precio);
	
	
	   
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Portada.htm"); 
	
	
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		productosDAO.insertar(p,categorias );
		}
		
					  
		return new RedirectView(VersionInfo.get("View"));				
		
	}
	
	@RequestMapping(value="/EditarProducto.htm", method=RequestMethod.POST)
	public View editarProducto(@RequestParam(value="txtNombre")String nombre,
			@RequestParam(value="txtDescripcion")String descripcion,
			@RequestParam(value="txtImagenes")int imagenes,
		//	@RequestParam(value="txtCategorias")String[] categorias,
			@RequestParam(value="txtId")int id,
			@RequestParam(value="txtPrecio")double precio,
			HttpServletRequest request  ){
				
	    Producto p = new Producto();
	    p.setId(id);
	    p.setNombre(nombre);
	    p.setDescripcion(descripcion);
	    p.setImagenes(imagenes);
	    p.setPrecio(precio);
	
	  //  Set<Categoria> setCategorias = new HashSet<Categoria>();
	  //  setCategorias.add((Categoria) Arrays.asList(categorias));
	  //  p.setCategorias(setCategorias);
	
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Producto.htm"); 

		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		productosDAO.update(p);
		}
		
		return new RedirectView(VersionInfo.get("View")+"?productoId="+id);				
	}	
	
	@RequestMapping(value="/BorrarProducto.htm", method=RequestMethod.POST)
	public View borrarProducto(@RequestParam(value="txtId")int id,
			HttpServletRequest request){
				
	    Producto p = new Producto();
	    p.setId(id);

		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		productosDAO.delete(p);
		}
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Portada.htm"); 


		return new RedirectView(VersionInfo.get("View"));		

		
	}	
}
