package hibernate;

import java.util.Set;

public class Producto {

	
	public Producto(){}
	
	int id;
	String Nombre;
	String Descripcion;
	double Precio;
	Set<Categoria> Categorias;
	int Imagenes;
	int Colores;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	public double getPrecio() {
		return Precio;
	}
	public void setPrecio(double precio) {
		Precio = precio;
	}
	public Set<Categoria> getCategorias() {
		return Categorias;
	}
	public void setCategorias(Set<Categoria> categorias) {
		Categorias = categorias;
	}
	public int getImagenes() {
		return Imagenes;
	}
	public void setImagenes(int imagenes) {
		Imagenes = imagenes;
	}
	public int getColores() {
		return Colores;
	}
	public void setColores(int colores) {
		Colores = colores;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Colores;
		result = prime * result
				+ ((Descripcion == null) ? 0 : Descripcion.hashCode());
		result = prime * result + Imagenes;
		result = prime * result + ((Nombre == null) ? 0 : Nombre.hashCode());
		long temp;
		temp = Double.doubleToLongBits(Precio);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Producto other = (Producto) obj;
		if (Colores != other.Colores)
			return false;
		if (Descripcion == null) {
			if (other.Descripcion != null)
				return false;
		} else if (!Descripcion.equals(other.Descripcion))
			return false;
		if (Imagenes != other.Imagenes)
			return false;
		if (Nombre == null) {
			if (other.Nombre != null)
				return false;
		} else if (!Nombre.equals(other.Nombre))
			return false;
		if (Double.doubleToLongBits(Precio) != Double
				.doubleToLongBits(other.Precio))
			return false;
		if (id != other.id)
			return false;
		return true;
	}


	
	
	
}
