package Conexion;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Dominio.Alumno;
import Dominio.Curso;


public class AccesoBD {
	
	private String host = "jdbc:mysql://localhost:3306/";
	private String user = "root";
	private String pass = "ROOT";
	private static String dbName = "ramirezhariel_lab4_tpintegrador";
	private static String url= String.format("jdbc:mysql://%s:%d/%s?useSSL=false", "localhost", 3306, dbName);	

	
	protected Connection connection;
	
	
	public void AgregarALumnos(Curso alumnos,int IDDocente)
	{
		
	}

	public void ejecutarSPListarAlumno(int IDCURSO, int IDALUMNO)
	{
		Connection  cn = null;
		try {
			cn = DriverManager.getConnection(url, user, pass);
			String call = "CALL SP_LISTARALUMNOS(?,?)";			
			CallableStatement cst = cn.prepareCall(call);
			cst.setInt(1, IDCURSO);
			cst.setInt(2, IDALUMNO);
			cst.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	
	

	public void ejecutarSPAgregarCurso(Curso agregar)
	{
		
		Connection  cn = null;
		try {
			cn = DriverManager.getConnection(url, user, pass);
			String call = "CALL SP_ALTACURSO(?,?,?,?,?)";			
			CallableStatement cst = cn.prepareCall(call);
			cst.setString(1, agregar.getMateria());
			cst.setString(2, agregar.getSemestre());
			cst.setInt(3, agregar.getDocente().getID());
			cst.setInt(4, agregar.getAnio());
			cst.setBoolean(5, agregar.isEliminado());
			cst.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} 

	}
	
	
	public Connection Open()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			this.connection = DriverManager.getConnection(url, user, pass);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return this.connection;
	}
	
	public ResultSet query(String query)
	{
		Statement st;
		ResultSet rs=null;
		try
		{
			
			st= connection.createStatement();
			rs= st.executeQuery(query);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public int BuscarID(String query)
	{
		Statement st;
		ResultSet rs=null;
		int id=0;
		try
		{
			st= connection.createStatement();
			rs= st.executeQuery(query);
			id=rs.getInt("IDUsuario");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return id;
	}
	
	public int BuscarMaxID(String query)
	{
		
		Connection  cn = null;
		Statement st;

		
		ResultSet rs=null;
		int Maxid=0;
		try
		{
			cn = DriverManager.getConnection(url, user, pass);
			st= connection.createStatement();
			rs= st.executeQuery(query);
			Maxid=rs.getInt(1);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return Maxid;
	}
	
	
	
	

	
	public boolean execute(String query)
	{
		Statement st;
		boolean save = true;
		try {
			st = connection.createStatement();
		    st.executeUpdate(query);
		}
		catch(SQLException e)
		{
			save = false;
			e.printStackTrace();
		}
		return save;
	}
	
	
	public boolean close()
	{
		boolean ok=true;
		try {
			connection.close();
		}
		catch(Exception e)
		{
			ok= false;
			e.printStackTrace();
		}
		return ok;
	}

}
