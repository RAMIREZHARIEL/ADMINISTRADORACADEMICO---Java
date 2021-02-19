package Negocio;

import java.sql.DriverManager;
import java.sql.ResultSet;

import Conexion.AccesoBD;
import Dominio.Usuario;

public class UsuarioNeg {
	
	private static AccesoBD acceso;
	
	public static int validar(String email)
	{
		acceso = new AccesoBD();
		acceso.Open();
		ResultSet rs=null;
		int Cant=0;
		String query = "select count(*) as cant from usuarios where Usser='"+email+"'";

		try {

			rs=acceso.query(query);
			rs.next();
			Cant=rs.getInt("cant");

			
		} catch (Exception e) {
			e.printStackTrace();
		}finally
		{
			acceso.close();
		}
			
		return Cant;
	}
	
	public static boolean guardar(Usuario nuevo)
	{
		boolean estado=true;
		acceso = new AccesoBD();
		acceso.Open();
		
		String query = "INSERT INTO Usuarios (Usser, Password, Tipo) VALUES ('"+nuevo.getUsser()+"','"+nuevo.getPassword()+"','"+nuevo.getTipo()+"')";
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
	
	public static int getIDUsuario(String Us, String Pass,String type)
	{
		
		acceso = new AccesoBD();
		acceso.Open();
		ResultSet rs=null;
		int id=0;
		
		String query = "SELECT IDUsuario from usuarios where Usser='"+Us+"' and Password='"+Pass+"' and Tipo='"+type+"'";
		try {
			rs=acceso.query(query);
			rs.next();
			id=rs.getInt("IDUsuario");
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally
		{
			acceso.close();
		}
		return id;

		
	}

}
