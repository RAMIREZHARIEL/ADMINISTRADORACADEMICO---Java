package Dominio;

import java.util.ArrayList;

public class Curso {
	
	private String Materia;
	private String Semestre;
	private int Anio;
	private Docente docente;
	private ArrayList<Alumno> Alumnos;
	private int ID;
	
	
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	private boolean Eliminado;
	
	
	public boolean isEliminado() {
		return Eliminado;
	}
	public void setEliminado(boolean eliminado) {
		Eliminado = eliminado;
	}
	public String getMateria() {
		return Materia;
	}
	public void setMateria(String materia) {
		Materia = materia;
	}
	public String getSemestre() {
		return Semestre;
	}
	public void setSemestre(String semestre) {
		Semestre = semestre;
	}
	public int getAnio() {
		return Anio;
	}
	public void setAnio(int anio) {
		Anio = anio;
	}
	public Docente getDocente() {
		return docente;
	}
	public void setDocente(Docente docente) {
		this.docente = docente;
	}
	public ArrayList<Alumno> getAlumnos() {
		return Alumnos;
	}
	public void setAlumnos(ArrayList<Alumno> alumnos) {
		Alumnos = alumnos;
	}
	
	

}
