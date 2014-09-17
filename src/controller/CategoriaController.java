package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import hibernate.Categoria;
import hibernate.Producto;

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
import dao.UsuariosDAO;

@Controller
public class CategoriaController {
	
	@Autowired
	CategoriasDAO categoriasDAO;
	
	@Autowired
	PaginaDAO paginaDAO;
	
	@Autowired
	UsuariosDAO usuariosDAO;
	
	
	@RequestMapping(value="/Categoria.htm", method=RequestMethod.GET)
	public ModelAndView getCategoria(@RequestParam(value="categoriaId")String categoriaId, HttpServletRequest request  ){
		
		List<Producto> ListaProductos = categoriasDAO.getProductosPorCategoria(categoriaId);
		Categoria cat = categoriasDAO.getCategoria(categoriaId);
		
		List<Object> ListaProductos2 = new ArrayList<Object>(); 
		ArrayList<Producto> TempList = new ArrayList<Producto>(); 		
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Categoria"); 

		int cantidadVersion = 0;
		
		if(VersionInfo.get("Tipo").trim().equals("D")){
			cantidadVersion = 4;
		}else if(VersionInfo.get("Tipo").trim().equals("M")){
			cantidadVersion = 3;
		}
		
		
		
		for (int x =0; x< ListaProductos.size(); x++) {
			
			TempList.add(ListaProductos.get(x));			
			if (x > 0 &&  (x+1) % cantidadVersion == 0) {			
				ListaProductos2.add(TempList.clone());
				TempList.clear();
			}			
		}
		
		if(! TempList.isEmpty() ){ListaProductos2.add(TempList.clone());}
		
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(VersionInfo.get("View"));

		List<Categoria> ListCategorias = categoriasDAO.getCategoriasInfo();	
		mv.addObject("ListCategorias",ListCategorias); 

		
		mv.addObject("ListaProductos",ListaProductos2); 
		
		
		mv.addObject("Categoria",cat); 

		String tipo =	VersionInfo.get("Tipo");

		paginaDAO.pageView("Categoria", categoriaId,tipo);
		
		return mv ;
		
	}
		
	@RequestMapping(value="/CategoriaForm.htm", method=RequestMethod.GET)
	public ModelAndView getCategoriaForm(HttpServletRequest request){
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "NuevaCategoria"); 
				  
		return new ModelAndView(VersionInfo.get("View"));		
	}
	
	
	@RequestMapping(value="/NuevaCategoria.htm", method=RequestMethod.POST)
	public View getCategoria(@RequestParam(value="txtNombre")String nombre, 
			@RequestParam(value="txtDescripcion")String descripcion, 
			@RequestParam(value="txtImagen")String imagen, 
			HttpServletRequest request  ){
	
		Categoria cat = new Categoria();
		cat.setNombre(nombre);
		cat.setDescripcion(descripcion);
		cat.setImagen(imagen);
		
		
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		categoriasDAO.insert(cat);
		}
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Portada.htm"); 
		return new RedirectView(VersionInfo.get("View"));		
	}

	@RequestMapping(value="/EditarCategoria.htm", method=RequestMethod.POST)
	public View editarCategoria(@RequestParam(value="txtNombre")String nombre, 
			@RequestParam(value="txtDescripcion")String descripcion, 
			@RequestParam(value="txtImagen")String imagen, 
			@RequestParam(value="txtId")Integer id,
			HttpServletRequest request  ){
	
		Categoria cat = new Categoria();
		cat.setId(id);
		cat.setNombre(nombre);
		cat.setDescripcion(descripcion);
		cat.setImagen(imagen);
		
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		categoriasDAO.edit(cat);
		}

		ModelAndView mv = new ModelAndView();
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Portada.htm"); 		
		return new RedirectView(VersionInfo.get("View"));		


	}
	
	@RequestMapping(value="/BorrarCategoria.htm", method=RequestMethod.POST)
	public View borrarCategoria(@RequestParam(value="txtId")Integer id,
			HttpServletRequest request  ){
	
		Categoria cat = new Categoria();
		cat.setId(id);
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		categoriasDAO.delete(cat);
		}
		
		ModelAndView mv = new ModelAndView();

		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Portada.htm"); 
		
		return new RedirectView(VersionInfo.get("View"));		

	}

}








