package Dominio;

import java.util.ArrayList;
import java.util.Date;

public class Docente {
	
	
	//Atributos--
	private int Legajo;
	private String Nombre;
	private String Apellido;
	private String FNacimiento;
	private String Direccion;
	private String Localidad;
	private String Provincia;
	private String Mail;
	private String Telefono;
	private int ID;
	private boolean Estado;

	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	//Composicion
	private ArrayList<Curso> Cursos;
	
	
	
	//Metodos
	
	
	
	//Get and Set
	
	public int getLegajo() {
		return Legajo;
	}
	public boolean isEstado() {
		return Estado;
	}
	public void setEstado(boolean estado) {
		Estado = estado;
	}
	public ArrayList<Curso> getCursos() {
		return Cursos;
	}
	public void setCursos(ArrayList<Curso> cursos) {
		Cursos = cursos;
	}
	public void setLegajo(int legajo) {
		Legajo = legajo;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getApellido() {
		return Apellido;
	}
	public void setApellido(String apellido) {
		Apellido = apellido;
	}
	public String getFNacimiento() {
		return FNacimiento;
	}
	public void setFNacimiento(String fNacimiento) {
		FNacimiento = fNacimiento;
	}
	public String getDireccion() {
		return Direccion;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	public String getLocalidad() {
		return Localidad;
	}
	public void setLocalidad(String localidad) {
		Localidad = localidad;
	}
	public String getProvincia() {
		return Provincia;
	}
	public void setProvincia(String provincia) {
		Provincia = provincia;
	}
	public String getMail() {
		return Mail;
	}
	public void setMail(String mail) {
		Mail = mail;
	}
	public String getTelefono() {
		return Telefono;
	}
	public void setTelefono(String telefono) {
		Telefono = telefono;
	}
	
	
	

}
