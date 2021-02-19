/**
 * 
 */

function  AltaDocente(){

	var ok = true;
	var form = document.getElementById("FormAltaDocente");
	
	var nombre = document.getElementById("txtNombreDocente").value;
	var apellido = document.getElementById("txtApellidoDocente").value;
	var Legajo =  document.getElementById("txtLegajoDocente").value;
	var Telefono =  document.getElementById("txtTelefonoDocente").value;
	//var Email =  document.getElementById("txtMail").value;           FALTA VALIDAR
	var Domicilio =  document.getElementById("txtDomicilioDocente").value;
	var Localidad =  document.getElementById("txtLocalidadDocente").value;
	var Provincia =  document.getElementById("txtProvinciaDocente").value;
	//var FechaNac =  document.getElementById("txtFechaNac").value;          FALTA VALIDAR
	
	
	
	var regexNumeros = /^([0-9])*$/;
	var regexLetras = (/^[A-Z\s]+$/i);
	
	if(!regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvinciaDocente").style.backgroundColor = "red";
	document.getElementById("txtProvinciaDocente").value="";
	}
	else
		{
		document.getElementById("txtProvinciaDocente").style.backgroundColor = "white";

		}
	
	if(!regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidadDocente").style.backgroundColor = "red";
	document.getElementById("txtLocalidadDocente").value="";
	}
	else
		{
		document.getElementById("txtLocalidadDocente").style.backgroundColor = "white";

		}
	
//	if(Domicilio.length==0 || !regexLetras.test(Domicilio))
//	{
//	ok=false;
//	document.getElementById("txtDomicilioDocente").style.backgroundColor = "red";
//	}
	
	
	if(!regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefonoDocente").style.backgroundColor = "red";
	document.getElementById("txtTelefonoDocente").value="";
	}
	else
		{
		document.getElementById("txtTelefonoDocente").style.backgroundColor = "white";

		}
	
	if(!regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajoDocente").style.backgroundColor = "red";
	document.getElementById("txtLegajoDocente").value="";

	}
	else
		{
		document.getElementById("txtLegajoDocente").style.backgroundColor = "white";

		}

	if(!regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombreDocente").style.backgroundColor = "red";
		document.getElementById("txtNombreDocente").value="";

		}
	else
		{
		document.getElementById("txtNombreDocente").style.backgroundColor = "white";

		}
	
	if(!regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellidoDocente").style.backgroundColor = "red";
	document.getElementById("txtApellidoDocente").value="";

	}
	else
		{
		document.getElementById("txtApellidoDocente").style.backgroundColor = "white";

		}

	if(ok)
		{
		form.method = "post";
		form.action="ServletAltaDocente";
		
		}
	else if(!ok)
		{
		form.method = "post";
		form.action= "DocenteAlta.jsp";
		setTimeout(alertError(),5000);

		} 
	
}


function ModificarDocente()
{
	

	
	var ok = true;
	var form = document.getElementById("FormModificarDocente");
	
	var nombre = document.getElementById("txtNombreDocente").value;
	var apellido = document.getElementById("txtApellidoDocente").value;
	var Legajo =  document.getElementById("txtLegajoDocente").value;
	var Telefono =  document.getElementById("txtTelefonoDocente").value;
	//var Email =  document.getElementById("txtMailDocente").value;           FALTA VALIDAR
	var Domicilio =  document.getElementById("txtDomicilioDocente").value;
	var Localidad =  document.getElementById("txtLocalidadDocente").value;
	var Provincia =  document.getElementById("txtProvinciaDocente").value;
	//var FechaNac =  document.getElementById("txtFechaNacDocente").value;          FALTA VALIDAR
	
	
	
	var regexNumeros = /^([0-9])*$/;
	var regexLetras = (/^[A-Z\s]+$/i);
	
	if(!regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvinciaDocente").style.backgroundColor = "red";
	document.getElementById("txtProvinciaDocente").value="";
	}
	else
		{
		document.getElementById("txtProvinciaDocente").style.backgroundColor = "white";

		}
	
	if(!regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidadDocente").style.backgroundColor = "red";
	document.getElementById("txtLocalidadDocente").value="";
	}
	else
		{
		document.getElementById("txtLocalidadDocente").style.backgroundColor = "white";

		}
	
//	if(Domicilio.length==0 || !regexLetras.test(Domicilio))
//	{
//	ok=false;
//	document.getElementById("txtDomicilioDocente").style.backgroundColor = "red";
//	}
	
	
	if(!regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefonoDocente").style.backgroundColor = "red";
	document.getElementById("txtTelefonoDocente").value="";
	}
	else
		{
		document.getElementById("txtTelefonoDocente").style.backgroundColor = "white";

		}
	
	if(!regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajoDocente").style.backgroundColor = "red";
	document.getElementById("txtLegajoDocente").value="";

	}
	else
		{
		document.getElementById("txtLegajoDocente").style.backgroundColor = "white";

		}

	if(!regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombreDocente").style.backgroundColor = "red";
		document.getElementById("txtNombreDocente").value="";

		}
	else
		{
		document.getElementById("txtNombreDocente").style.backgroundColor = "white";

		}
	
	if(!regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellidoDocente").style.backgroundColor = "red";
	document.getElementById("txtApellidoDocente").value="";

	}
	else
		{
		document.getElementById("txtApellidoDocente").style.backgroundColor = "white";

		}
	


	if(ok)
		{
		form.method = "post";
		form.action="ServletModificarDocente";
		
		}
	else if(!ok)
		{

		alertError();

		} 
	

}

function EliminarDocente(IDTabla)
{
	

	var form = document.getElementById("formTablaDocentes"+IDTabla);
	form.method="post";
	form.action="ServletModificarDocente";
	AlertEliminado();
	
	
}
function AlertEliminado()
{
alert("Eliminado con exito.");	
}

function EnviarDocente()
{
	var form = document.getElementById("FormDocenteDireccionar");
	form.method="post";
	form.action="ServletDireccionarDocente";
	form.submit();
	alert("a");
	
}

function direccionarDocente(IDTabla)
{
	var form = document.getElementById("formTablaDocentes"+IDTabla);
	form.method="post";
	form.action="ServletModificarDocente";
						
		
		
	
}