package Negocio;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Conexion.AccesoBD;
import Dominio.Alumno;

public class AlumnoNeg {
	
	
private static AccesoBD acceso;
	
	public static boolean guardar(Alumno nuevo)
	{
		boolean estado=true;
		acceso = new AccesoBD();
		acceso.Open();
		
		String query = "INSERT INTO Alumnos (Legajo, Nombre, Apellido, FNac, Direccion, Localidad, Provincia, Mail, Telefono, Estado) VALUES ('"+nuevo.getLegajo()+"','"+nuevo.getNombre()+"','"+nuevo.getApellido()+"','"+nuevo.getFNacimiento()+"','"+nuevo.getDireccion()+"','"+nuevo.getLocalidad()+"','"+nuevo.getProvincia()+"','"+nuevo.getMail()+"','"+nuevo.getTelefono()+"',"+nuevo.isEstado()+")";
		try {

			
		estado=acceso.execute(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally
		{
			acceso.close();
		}
		return estado;
		
	}
	
	public static boolean Modificar(Alumno nuevo)
	{
		boolean estado=true;
		acceso = new AccesoBD();
		acceso.Open();
		
		String query = "UPDATE  Alumnos set  Nombre = '"+nuevo.getNombre()+"',  Apellido= '"+nuevo.getApellido()+"', FNac= '"+nuevo.getFNacimiento()+"',  Direccion='"+nuevo.getDireccion()+"', Localidad='"+nuevo.getLocalidad()+"', Provincia='"+nuevo.getProvincia()+"', Mail='"+nuevo.getMail()+"', Telefono='"+nuevo.getTelefono()+"', Legajo='"+nuevo.getLegajo()+"' where ID='"+nuevo.getID()+"'";
		try {

			
			estado=acceso.execute(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally
		{
			acceso.close();
		}
		return estado;
		
	}
	
	
	public static boolean Baja(int ID)
	{
		boolean estado=true;
		acceso = new AccesoBD();
		acceso.Open();
		
		String query = "UPDATE  Alumnos set Estado='0' where ID='"+ID+"'";
		try {

			
			estado=acceso.execute(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally
		{
			acceso.close();
		}
		return estado;
		
	}
	
	public static int ValidarIngreso(int legajo)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		int Cant=1;
		String query = "select count(*) as cantidad from Alumnos where legajo="+legajo;
		try {

			
		ResultSet rs=acceso.query(query);
		rs.next();
		Cant = rs.getInt("cantidad");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally
		{
			acceso.close();
		}
		return Cant;
	}
	
	
	public static Alumno ListarAlumnos(int ID)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Alumno> Lista= new ArrayList<Alumno>();
		
		
		 Alumno alumno = new Alumno();

		String query = "SELECT * from alumnos where ID='"+ID+"' and Estado='1'";
		try {
			

			 ResultSet rs = acceso.query(query);
			 while(rs.next())
			 {
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
				 alumno.setFNacimiento(rs.getString("FNac"));
				 alumno.setID(rs.getInt("ID"));
				 
				 
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally
		{
			acceso.close();
		}
		return alumno;

		
	}
	
	public static ArrayList<Alumno> ListarAlumnos(String nombre)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Alumno> Lista= new ArrayList<Alumno>();
		
		
		
		String query = "SELECT * from alumnos where (Nombre like '%"+nombre+"%' or Apellido like '%"+nombre+"%') and Estado='1'";
		try {
			
			
			 ResultSet rs = acceso.query(query);
			 while(rs.next())
			 {
				 Alumno alumno = new Alumno();
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
				 alumno.setFNacimiento(rs.getString("FNac"));
				 alumno.setID(rs.getInt("ID"));

				 
				 
				 Lista.add(alumno);
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally
		{
			acceso.close();
		}
		return Lista;

		
	}
	
	public static ArrayList<Alumno> ListarAlumnos(String nombre, int legajo)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Alumno> Lista= new ArrayList<Alumno>();
		
		
		
		String query = "SELECT * from alumnos where (Nombre like '%"+nombre+"%' or Apellido like '%"+nombre+"%') and Legajo="+legajo+" and Estado='1'";
		try {
			
			
			 ResultSet rs = acceso.query(query);
			 while(rs.next())
			 {
				 Alumno alumno = new Alumno();
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
				 alumno.setFNacimiento(rs.getString("FNac"));
				 alumno.setID(rs.getInt("ID"));

				 
				 
				 Lista.add(alumno);
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally
		{
			acceso.close();
		}
		return Lista;

		
	}
	
	

}

