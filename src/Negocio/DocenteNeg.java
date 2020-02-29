package Negocio;

import Conexion.AccesoBD;
import Dominio.Docente;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DocenteNeg {
	
	private static AccesoBD acceso;
	
	public static boolean guardar(Docente nuevo)
	{
		boolean estado=true;
		acceso = new AccesoBD();
		acceso.Open();
		
		String query = "INSERT INTO Docentes (Legajo, Nombre, Apellido, FNac, Direccion, Localidad, Provincia, Mail, Telefono, Estado) VALUES ('"+nuevo.getLegajo()+"','"+nuevo.getNombre()+"','"+nuevo.getApellido()+"','"+nuevo.getFNacimiento()+"','"+nuevo.getDireccion()+"','"+nuevo.getLocalidad()+"','"+nuevo.getProvincia()+"','"+nuevo.getMail()+"','"+nuevo.getTelefono()+"',"+nuevo.isEstado()+")";
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
	
	public static boolean Modificar(Docente nuevo)
	{
		boolean estado=true;
		acceso = new AccesoBD();
		acceso.Open();
		
		String query = "UPDATE  Docentes set  Nombre = '"+nuevo.getNombre()+"',  Apellido= '"+nuevo.getApellido()+"', FNac= '"+nuevo.getFNacimiento()+"',  Direccion='"+nuevo.getDireccion()+"', Localidad='"+nuevo.getLocalidad()+"', Provincia='"+nuevo.getProvincia()+"', Mail='"+nuevo.getMail()+"', Telefono='"+nuevo.getTelefono()+"', Legajo='"+nuevo.getLegajo()+"' where ID='"+nuevo.getID()+"'";
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
		
		String query = "UPDATE  Docentes set Estado='0' where ID='"+ID+"'";
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
	
	
	public static Docente ListarDocentes(int IDUsuario)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Docente> Lista= new ArrayList<Docente>();
		
		
		Docente docente = new Docente();

		String query = "SELECT * from docentes where IDUsuario='"+IDUsuario+"' and Estado='1'";
		try {
			

			 ResultSet rs = acceso.query(query);
			 while(rs.next())
			 {
				 docente.setApellido(rs.getString("Apellido"));
				 docente.setDireccion(rs.getString("Direccion"));
				 docente.setEstado(rs.getBoolean("Estado"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setLegajo(rs.getInt("Legajo"));
				 docente.setLocalidad(rs.getString("Localidad"));
				 docente.setMail(rs.getString("Mail"));
				 docente.setNombre(rs.getString("Nombre"));
				 docente.setProvincia(rs.getString("Provincia"));
				 docente.setTelefono(rs.getString("Telefono"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setID(rs.getInt("ID"));
				 docente.setIDUsuario(IDUsuario);
				
				 
				 
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally
		{
			acceso.close();
		}
		return docente;

		
	}
	
	
	
	public static Docente ListarDocenteID(int ID)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Docente> Lista= new ArrayList<Docente>();
		
		
		Docente docente = new Docente();

		String query = "SELECT * from docentes where ID='"+ID+"' and Estado='1'";
		try {
			

			 ResultSet rs = acceso.query(query);
			 while(rs.next())
			 {
				 docente.setApellido(rs.getString("Apellido"));
				 docente.setDireccion(rs.getString("Direccion"));
				 docente.setEstado(rs.getBoolean("Estado"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setLegajo(rs.getInt("Legajo"));
				 docente.setLocalidad(rs.getString("Localidad"));
				 docente.setMail(rs.getString("Mail"));
				 docente.setNombre(rs.getString("Nombre"));
				 docente.setProvincia(rs.getString("Provincia"));
				 docente.setTelefono(rs.getString("Telefono"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setID(rs.getInt("ID"));
				 
				 
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally
		{
			acceso.close();
		}
		return docente;

		
	}
	
	public static ArrayList<Docente> ListarDocentes(String nombre)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Docente> Lista= new ArrayList<Docente>();
		
		
		
		String query = "SELECT * from docentes where (Nombre like '%"+nombre+"%' or Apellido like '%"+nombre+"%') and Estado='1'";
		try {
			
			
			 ResultSet rs = acceso.query(query);
			 while(rs.next())
			 {
				 Docente docente = new Docente();
				 docente.setApellido(rs.getString("Apellido"));
				 docente.setDireccion(rs.getString("Direccion"));
				 docente.setEstado(rs.getBoolean("Estado"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setLegajo(rs.getInt("Legajo"));
				 docente.setLocalidad(rs.getString("Localidad"));
				 docente.setMail(rs.getString("Mail"));
				 docente.setNombre(rs.getString("Nombre"));
				 docente.setProvincia(rs.getString("Provincia"));
				 docente.setTelefono(rs.getString("Telefono"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setID(rs.getInt("ID"));

				 
				 
				 Lista.add(docente);
			 }
			
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally
		{
			acceso.close();
		}
		return Lista;

		
	}
	
	public static ArrayList<Docente> ListarDocentes(String nombre, int legajo)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ArrayList<Docente> Lista= new ArrayList<Docente>();
		
		
		
		String query = "SELECT * from docentes where (Nombre like '%"+nombre+"%' or Apellido like '%"+nombre+"%') and Legajo="+legajo+" and Estado='1'";
		try {
			
			
			 ResultSet rs = acceso.query(query);
			 while(rs.next())
			 {
				 Docente docente = new Docente();
				 docente.setApellido(rs.getString("Apellido"));
				 docente.setDireccion(rs.getString("Direccion"));
				 docente.setEstado(rs.getBoolean("Estado"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setLegajo(rs.getInt("Legajo"));
				 docente.setLocalidad(rs.getString("Localidad"));
				 docente.setMail(rs.getString("Mail"));
				 docente.setNombre(rs.getString("Nombre"));
				 docente.setProvincia(rs.getString("Provincia"));
				 docente.setTelefono(rs.getString("Telefono"));
				 docente.setFNacimiento(rs.getString("FNac"));
				 docente.setID(rs.getInt("ID"));

				 
				 
				 Lista.add(docente);
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
