package hibernate;

import java.sql.Date;

public class Pagina {

	Pagina(){}
	
	int id;
	Date UltimaActualizacion;
	String imgPATH;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getUltimaActualizacion() {
		return UltimaActualizacion;
	}
	public void setUltimaActualizacion(Date ultimaActualizacion) {
		UltimaActualizacion = ultimaActualizacion;
	}
	public String getImgPATH() {
		return imgPATH;
	}
	public void setImgPATH(String imgPATH) {
		this.imgPATH = imgPATH;
	}
	

	
}
