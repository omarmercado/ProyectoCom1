package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import dao.UsuariosDAO;

@Controller
public class UsuarioController{

	@Autowired
	UsuariosDAO usuariosDAO;

	@RequestMapping(value="/Ingresar.htm", method=RequestMethod.POST)
	protected ModelAndView getusuario(HttpServletRequest request) throws Exception {

		String Email = request.getParameter("txtEmail");
		String Contrasena = request.getParameter("txtContrasena");
		
		int usuario = usuariosDAO.getUsuario(Email, Contrasena);
		
		ModelAndView mv = new ModelAndView("redirect:/Portada.htm");
		
		HttpSession session = request.getSession();
		session.setAttribute("usuario",usuario);
			
		
		
		return mv;
	}
	
	
	
}
