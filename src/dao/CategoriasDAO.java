package dao;

import hibernate.Categoria;
import hibernate.Producto;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class CategoriasDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	
	public List<Categoria> getCategoriasInfo(){
		
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		List<Categoria> resultado = session.createQuery("from Categoria c").list();  

		session.getTransaction().commit(); 

		return resultado;
	}
	

	public List<Producto> getProductosPorCategoria(String categoriaId){
		
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		List<Producto> resultado = session.createQuery("select p from Producto p inner join p.Categorias cat where cat.id = ?")
				.setParameter(0, Integer.parseInt(categoriaId))
				.list();  

		session.getTransaction().commit(); 

		return resultado;
	}

	public Categoria getCategoria(String categoriaId){
		
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Categoria cat = (Categoria) session.get(Categoria.class,  Integer.parseInt(categoriaId));  

		session.getTransaction().commit(); 

		return cat;
	}
	
	public void insert(Categoria cat){
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		session.save(cat);
		
		session.getTransaction().commit(); 

	}
	
	public void edit(Categoria cat){
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
				
		session.update(cat);
		
		session.getTransaction().commit(); 

	}

	public void delete(Categoria cat){
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
				
		session.delete(cat);
		
		session.getTransaction().commit(); 

	}

}
