package dao;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import hibernate.Categoria;
import hibernate.Producto;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ProductosDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	public Producto getProdutco(String productoId){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Producto resultado = (Producto)session.get(Producto.class, Integer.parseInt(productoId));  

		session.getTransaction().commit(); 	
		
		return resultado;
		
	}
	
	public void insertar(Producto p, String[] categorias){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		
	    Set<Categoria> setCategorias = new HashSet<Categoria>();
	    for (String categoriaid : categorias) {
			
	    	setCategorias.add((Categoria) session.get(Categoria.class, Integer.parseInt(categoriaid.trim()) ));	
		}
	    p.setCategorias(setCategorias);
	    
		session.save(p);
		
		session.getTransaction().commit(); 			
	}
	
	public void update(Producto p){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Producto pro = (Producto)session.get(Producto.class, p.getId());
		pro.setNombre(p.getNombre());
		pro.setDescripcion(p.getDescripcion());
		pro.setImagenes(p.getImagenes());
		pro.setPrecio(p.getPrecio());
		session.update(pro);
		
		session.getTransaction().commit(); 			
	}
	
	public void delete(Producto p){
		
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		
		Producto pro = (Producto)session.get(Producto.class, p.getId());

		session.delete(pro);
		
		session.getTransaction().commit(); 			
	}
}
