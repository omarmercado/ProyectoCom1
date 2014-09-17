package dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import helpers.Hash5;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class UsuariosDAO {

	@Autowired
	SessionFactory sessionFactory;
    
	@Autowired
	Hash5 hash5;
	
	public int getUsuario(String Email, String Contrasena){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Query query = session.createQuery("from Usuario u  where u.Email = :Email and u.Contrasena = :Contrasena ");
        query.setParameter("Email", hash5.getMd5Digest(Email)) ;
        query.setParameter("Contrasena", hash5.getMd5Digest(Contrasena)) ;
        
        int res = query.list().size();
		
		session.getTransaction().commit();
		
	return res;	
	}
	
	public int revisarSession(HttpServletRequest request){
		
		int res = 1;
		
		HttpSession session = request.getSession();
		
		Integer usuario = (Integer) session.getAttribute("usuario");
		
		if(usuario == null || usuario == 0){			
			res = 0;			
		}
		  

		return res;
	}
	
}
