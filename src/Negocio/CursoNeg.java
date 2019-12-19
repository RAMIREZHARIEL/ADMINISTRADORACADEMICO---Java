package Negocio;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.mysql.jdbc.PreparedStatement;

import Conexion.AccesoBD;
import Dominio.Alumno;
import Dominio.Curso;
import Dominio.Docente;

public class CursoNeg {
	
	
	private static AccesoBD acceso;
	
	
	public static boolean CalificarCurso(Alumno alumno, int IDCurso)
	{
		boolean estado = false;
		acceso = new AccesoBD();
		//Alumno lista = null;
		acceso.Open();
		String query =""; 

		try {

			query ="UPDATE alumnosxcurso set Nota1="+alumno.getNota1()+", Nota2="+alumno.getNota2()+", Nota3="+alumno.getNota3()+", Nota4="+alumno.getNota4()+", Estado="+alumno.isAprobado()+" where IDCURSO="+IDCurso+" and IDALUMNO="+alumno.getID()+"";
			estado = acceso.execute(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			acceso.close();
		}
		return estado;
	}
	
	
	public static ArrayList<Alumno> ListarAlumnosXCurso (int IDCurso) 
	{
		acceso = new AccesoBD();
		
		ArrayList<Alumno> lista = null;
		Alumno alumno = null;
		Connection  cn = acceso.Open();

		try {
			ResultSet rs = null;
			CallableStatement ps = null;
			ps = cn.prepareCall("CALL SP_LISTARALUMNOS(?)");
			ps.setInt(1, IDCurso);
			rs = ps.executeQuery();
			lista = new ArrayList<Alumno>();
			while(rs.next())
			{
				alumno = new Alumno();
				
				 alumno.setID(rs.getInt("ID"));
				 alumno.setNota1(rs.getInt("NOTA1"));
				 alumno.setNota2(rs.getInt("NOTA2"));
				 alumno.setNota3(rs.getInt("NOTA3"));
				 alumno.setNota4(rs.getInt("NOTA4"));
				 alumno.setAprobado(rs.getBoolean("APROBADO"));
				 alumno.setApellido(rs.getString("Apellido"));
				 alumno.setDireccion(rs.getString("Direccion"));
				 alumno.setEstado(rs.getBoolean("Estado"));
				 alumno.setFNacimiento(rs.getString("FNac"));
				 alumno.setLegajo(rs.getInt("Legajo"));
				 alumno.setLocalidad(rs.getString("Localidad"));
				 alumno.setMail(rs.getString("Mail"));
				 alumno.setNombre(rs.getString("Nombre"));
				 alumno.setProvincia(rs.getString("Provincia"));
				 alumno.setTelefono(rs.getString("Telefono"));
				 
				 lista.add(alumno);

				 

				 
			}
			//cn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			//cn.close();
			acceso.close();
		}
		return lista;
	
		
		
	}
	
	public static Curso ListarCurso(int ID)
	{
		acceso = new AccesoBD();
		acceso.Open();
		Curso curso = null;
		String query = "select * from Cursos where Eliminado=0 and ID="+ID+"";
		try {

			ResultSet rs = acceso.query(query);
			Docente docente = new Docente();
			while(rs.next())
			{
				curso = new Curso();
				curso.setID(rs.getInt("ID"));
				curso.setMateria(rs.getString("Materia"));
				curso.setSemestre(rs.getString("Semestre"));
				docente.setID(rs.getInt("IDDocente"));
				curso.setAnio(rs.getInt("Anio"));
				curso.setEliminado(rs.getBoolean("Eliminado"));
				curso.setDocente(docente);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			acceso.close();
		}
		return curso;
	}
	
	public static ArrayList<Curso> ListarCursos (int anio)
	{
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Curso> listado = null;
		String query = "select * from Cursos where Eliminado=0 and Anio="+anio+"";
		try {
			listado = new ArrayList<>();
			Curso curso = null;
			Docente docente = new Docente();
			ResultSet rs = acceso.query(query);
			while(rs.next())
			{
				curso = new Curso();
				curso.setID(rs.getInt("ID"));
				curso.setMateria(rs.getString("Materia"));
				curso.setSemestre(rs.getString("Semestre"));
				docente.setID(rs.getInt("IDDocente"));
				curso.setAnio(rs.getInt("Anio"));
				curso.setEliminado(rs.getBoolean("Eliminado"));
				curso.setDocente(docente);
				listado.add(curso);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			acceso.close();
		}
		return listado;
		
		
	}
	
	public static int BuscarMaxId (String query)
	{
		int ID=0;

		acceso = new AccesoBD();
		acceso.Open();
		try {
			ResultSet rs = acceso.query(query);
			while(rs.next())
			{
				ID=rs.getInt(1);
			}
			//ID= acceso.BuscarMaxID(query);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			acceso.close();
		}
		return ID;
		
		
	}
	
	

	public static boolean guardar(Curso nuevo)
	{
		
	
		boolean estado = false;
		
		try {
			
			acceso = new AccesoBD();
			acceso.Open();
			acceso.ejecutarSPAgregarCurso(nuevo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally
		{
			acceso.close();
			
		}
		return estado;
		
	}
	public static void guardarAlumno(Alumno nuevo, int idCurso)
	{
		
	
		boolean estado=true;
		try {
		acceso = new AccesoBD();
		acceso.Open();
		
	
		String query = "INSERT INTO alumnosxcurso (IDCURSO, IDALUMNO) VALUES ('"+idCurso+"','"+nuevo.getID()+"')";
		estado=acceso.execute(query);

		} catch (Exception e) {
			e.printStackTrace();
		}finally
		{
			acceso.close();
		}
		
		
	}
	

}
