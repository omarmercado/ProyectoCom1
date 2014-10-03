package controller;

import hibernate.Blog;
import hibernate.Categoria;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import dao.BlogDAO;
import dao.CategoriasDAO;
import dao.PaginaDAO;
import dao.UsuariosDAO;


@Controller
public class BlogController {
	
	@Autowired
	PaginaDAO paginaDAO;
	
	@Autowired
	BlogDAO blogDAO;
	
	@Autowired
	UsuariosDAO usuariosDAO;
	
	@Autowired
	CategoriasDAO categoriasDAO;
	
	@RequestMapping("/Blog.htm")
	public ModelAndView getUltimo(HttpServletRequest request){
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Blog"); 

		
		Blog blog = blogDAO.getUltimo();
		List<Blog> ListaBlogs = blogDAO.getUltimos10();
		List<Categoria> ListCategorias = categoriasDAO.getCategoriasInfo();	

		
		String tipo =	VersionInfo.get("Tipo");

		paginaDAO.pageView("Blog", "", tipo );
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(VersionInfo.get("View"));

		mv.addObject("ListCategorias",ListCategorias); 
		mv.addObject("ListaBlogs", ListaBlogs);
		mv.addObject("Blog", blog);
		return mv;
	}
	
	
	@RequestMapping("/NuevoBlog.htm")
	public ModelAndView nuevoBlog(HttpServletRequest request){
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "NuevoBlog"); 
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(VersionInfo.get("View"));

		return mv;
	}
	
	
	@RequestMapping("/GetBlog.htm")
	public ModelAndView getBlog(@RequestParam("blogId")String blogId, 
			HttpServletRequest request){
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Blog"); 
		List<Blog> ListaBlogs = blogDAO.getUltimos10();
		List<Categoria> ListCategorias = categoriasDAO.getCategoriasInfo();	

		
		Blog blog = blogDAO.getUltimo();

		String tipo =	VersionInfo.get("Tipo");
		
	    paginaDAO.pageView("Blog", blogId, tipo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(VersionInfo.get("View"));
		mv.addObject("Blog", blog);
		mv.addObject("ListaBlogs", ListaBlogs);
		mv.addObject("ListCategorias",ListCategorias); 

		
		return mv;
	}

	@RequestMapping("/InsertarBlog.htm")
	public View insertarBlog(@RequestParam("txtTitulo")String txtTitulo,
			@RequestParam("txtTexto")String txtTexto,
			HttpServletRequest request){ 

		Blog b = new Blog();
		b.setTitulo(txtTitulo);
		b.setTexto(txtTexto);
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		blogDAO.insert(b);
		}

		return new RedirectView("Blog.htm");
	}
	
	@RequestMapping("/EditarBlog.htm")
	public View EditarBlog(@RequestParam("txtTitulo")String txtTitulo,
			@RequestParam("txtTexto")String txtTexto,
			@RequestParam("txtId")int txtId,
			HttpServletRequest request){
		
		Blog b = new Blog();
		b.setTitulo(txtTitulo);
		b.setTexto(txtTexto);
		b.setId(txtId);
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		blogDAO.editar(b);
		}

		return new RedirectView("GetBlog.htm?blogId="+txtId);
	}
	
	@RequestMapping("/EliminarBlog.htm")
	public View EliminarBlog(@RequestParam("txtId")int txtId,
			HttpServletRequest request){ 

		Blog b = new Blog();
		b.setId(txtId);
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 1){
		blogDAO.eliminar(b);
		}

		return new RedirectView("Blog.htm");
	}
}
