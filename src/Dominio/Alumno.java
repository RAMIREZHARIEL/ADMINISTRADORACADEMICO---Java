package Dominio;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class Alumno {
	
	private int Legajo;
	private String Nombre;
	private String Apellido;
	private String FNacimiento;
	private String Direccion;
	private String Localidad;
	private String Provincia;
	private String Mail;
	private String Telefono;
	private boolean Estado;
	private int ID;
	private int Nota1;
	private int Nota2;
	private int Nota3;
	private int Nota4;
	private boolean Aprobado;
	
	
	
	public int getNota1() {
		return Nota1;
	}
	public void setNota1(int nota1) {
		Nota1 = nota1;
	}
	public int getNota2() {
		return Nota2;
	}
	public void setNota2(int nota2) {
		Nota2 = nota2;
	}
	public int getNota3() {
		return Nota3;
	}
	public void setNota3(int nota3) {
		Nota3 = nota3;
	}
	public int getNota4() {
		return Nota4;
	}
	public void setNota4(int nota4) {
		Nota4 = nota4;
	}
	public boolean isAprobado() {
		return Aprobado;
	}
	public void setAprobado(boolean aprobado) {
		Aprobado = aprobado;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public boolean isEstado() {
		return Estado;
	}
	public void setEstado(boolean estado) {
		Estado = estado;
	}
	public int getLegajo() {
		return Legajo;
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
		
		try {
			SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
	        SimpleDateFormat DBformato = new SimpleDateFormat("yyyy-MM-dd");
	        this.FNacimiento = DBformato.format(formato.parse(fNacimiento));
		} catch (ParseException e) {
			this.FNacimiento=fNacimiento;
			}
		 
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
