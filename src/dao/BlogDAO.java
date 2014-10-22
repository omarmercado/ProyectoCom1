package dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import hibernate.Blog;

public class BlogDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	
	public Blog getUltimo(){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Blog resultado = (Blog) session.createQuery("from Blog b order by b.Fecha desc ").setMaxResults(1).uniqueResult();  
				
		session.getTransaction().commit(); 
	
		return resultado;				
	}

	public List<Blog> getUltimos10(){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		List<Blog> resultado = session.createQuery("from Blog b order by b.Fecha asc ").setMaxResults(10).list();  
		
		session.getTransaction().commit(); 
	
		return resultado;				
	}
	
	public Blog getBlogById(String blogid){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Blog resultado = (Blog) session.get(Blog.class, Integer.parseInt(blogid));  
		
		session.getTransaction().commit(); 
	
		return resultado;				
	}
	
	public void insert(Blog b){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Date fecha = new Date(System.currentTimeMillis());
		b.setFecha(fecha);
		
		session.save(b);
		
		session.getTransaction().commit(); 
					
	}
	
	public void editar(Blog b){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Blog blog = (Blog)session.get(Blog.class, b.getId());
		blog.setTitulo(b.getTitulo());
		blog.setTexto(b.getTexto());
		
		session.saveOrUpdate(blog);
		
		session.getTransaction().commit(); 
					
	}
	
	public void eliminar(Blog b){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Blog blog = (Blog)session.get(Blog.class, b.getId());
		
		session.delete(blog);
		
		session.getTransaction().commit(); 
					
	}
}
