package Dominio;

public class Usuario {
	
	private String Usser;
	private String Password;
	private String Tipo;
	private boolean Eliminado;
	private int IDUsuario;
//	private static int cant=0;
	
	public Usuario()
	{
//		cant++;
//		this.IDUsuario=cant;
		
	}
	
	public Usuario(int id,boolean eliminado,String Us, String Pass, String Type)
	{
		this.setIDUsuario(id);
		this.setEliminado(eliminado);
		this.setUsser(Us);
		this.setPassword(Pass);
		this.setTipo(Type);
		
	}
	
	public int getIDUsuario() {
		return IDUsuario;
	}
	public void setIDUsuario(int iDUsuario) {
		IDUsuario = iDUsuario;
	}
	public boolean isEliminado() {
		return Eliminado;
	}
	public void setEliminado(boolean eliminado) {
		Eliminado = eliminado;
	}
	public String getUsser() {
		return Usser;
	}
	public void setUsser(String usser) {
		Usser = usser;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getTipo() {
		return Tipo;
	}
	public void setTipo(String tipo) {
		Tipo = tipo;
	}
	
	

}
