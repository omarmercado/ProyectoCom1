package controller;

import hibernate.Blog;
import hibernate.Categoria;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.BlogDAO;
import dao.CategoriasDAO;
import dao.PaginaDAO;

@Controller
public class InformacionController {

	@Autowired
	PaginaDAO paginaDAO;
	
	@Autowired
	CategoriasDAO categoriasDAO;
	

	@Autowired
	BlogDAO blogDAO;
	
	
	@RequestMapping(value="/Informacion.htm", method=RequestMethod.GET)
	public ModelAndView getCategoriaForm(HttpServletRequest request){
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Informacion"); 
				  
		List<Categoria> ListCategorias = categoriasDAO.getCategoriasInfo();	
		List<Blog> ListaBlogs = blogDAO.getUltimos10();
		
		ModelAndView mv = new ModelAndView(VersionInfo.get("View"));		
		mv.addObject("ListaBlogs", ListaBlogs);
		mv.addObject("Pagina",paginaDAO.getPagina());

		
		mv.addObject("ListCategorias",ListCategorias); 
		
		String tipo =	VersionInfo.get("Tipo");

		paginaDAO.pageView("Portada", "", tipo);
		
		return mv;
	}
	
}
