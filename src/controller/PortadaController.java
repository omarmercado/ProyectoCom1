package controller;


import hibernate.Blog;
import hibernate.Categoria;
import hibernate.PageView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.BlogDAO;
import dao.CategoriasDAO;
import dao.PaginaDAO;

@Controller
public class PortadaController {

	@Autowired
	CategoriasDAO categoriasDAO;
	
	@Autowired
	PaginaDAO paginaDAO;

	@Autowired
	BlogDAO blogDAO;
	
	@RequestMapping(value={"/","/Portada.htm"})
	public ModelAndView getPortada(HttpServletRequest request){

		List<Categoria> ListCategorias = categoriasDAO.getCategoriasInfo();	
		List<Blog> ListaBlogs = blogDAO.getUltimos10();

		ModelAndView mv = new ModelAndView();		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Portada"); 
		
		mv.setViewName(VersionInfo.get("View"));
		
		int cantidadVersion = 0;
		
		if(VersionInfo.get("Tipo").trim().equals("D")){
			cantidadVersion = 4;
		}else if(VersionInfo.get("Tipo").trim().equals("M")){
			cantidadVersion = 2;
		}
		
		
		List<Object> ListCategorias2 = new ArrayList<Object>(); 
		ArrayList<Categoria> TempList = new ArrayList<Categoria>(); 		
				
		for (int x =0; x< ListCategorias.size(); x++) {			
			TempList.add(ListCategorias.get(x));			
			if (x > 0 &&  (x+1) % cantidadVersion == 0) {			
				ListCategorias2.add(TempList.clone());
				TempList.clear();
			}			
		}		
		if(! TempList.isEmpty() ){ListCategorias2.add(TempList.clone());}
		
		mv.addObject("ListaBlogs", ListaBlogs);
		mv.addObject("Pagina",paginaDAO.getPagina());

		
		mv.addObject("ListCategorias",ListCategorias); 
		mv.addObject("ListCategorias2",ListCategorias2); 
		  
		String tipo =	VersionInfo.get("Tipo");

		paginaDAO.pageView("Portada", "", tipo);
		return mv ;
	}

}
