/**
 * 
 */

function  AltaAlumno(){
	var ok = true;
	var form = document.getElementById("FormAltaAlumno");
	
	var nombre = document.getElementById("txtNombre").value;//
	var apellido = document.getElementById("txtApellido").value;//
	var Legajo =  document.getElementById("txtLegajo").value;//
	var Telefono =  document.getElementById("txtTelefono").value;//
	var Email =  document.getElementById("txtMail").value;         
	var Domicilio =  document.getElementById("txtDomicilio").value;//
	var Localidad =  document.getElementById("txtLocalidad").value;//
	var Provincia =  document.getElementById("txtProvincia").value;//
	var FechaNac =  document.getElementById("txtFechaNac").value;          
	
	
	var regexNumeros = /^([0-9])*$/;
	var regexLetras = (/^[A-Z\s]+$/i);
	
	if(!regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvincia").style.backgroundColor = "red";
	document.getElementById("txtProvincia").value="";

	}
	else
		{
		document.getElementById("txtProvincia").style.backgroundColor = "white";
		}
	
	if(!regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidad").style.backgroundColor = "red";
	document.getElementById("txtLocalidad").value="";
	}
	else
		{
		document.getElementById("txtLocalidad").style.backgroundColor = "white";

		}
	
//	if(!regexLetras.test(Domicilio))
//	{
//	ok=false;
//	document.getElementById("txtDomicilio").style.backgroundColor = "red";
//	document.getElementById("txtDomicilio").value="";
//	}
//	else
//		{
//		document.getElementById("txtDomicilio").style.backgroundColor = "white";
//
//		}
	
	
	if(!regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefono").style.backgroundColor = "red";
	document.getElementById("txtTelefono").value="";
	}
	else
		{
		document.getElementById("txtTelefono").style.backgroundColor = "white";

		}
	
	if(!regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajo").style.backgroundColor = "red";
	document.getElementById("txtLegajo").value="";
	}
	else
		{
		document.getElementById("txtLegajo").style.backgroundColor = "white";

		}

	if(!regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombre").style.backgroundColor = "red";
		document.getElementById("txtNombre").value="";
		}
	else
		{
		document.getElementById("txtNombre").style.backgroundColor = "white";

		}
	
	if(!regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellido").style.backgroundColor = "red";
	document.getElementById("txtApellido").value="";
	}
	else
		{
		document.getElementById("txtApellido").style.backgroundColor = "white";

		}
	
	

	
	if(ok)
		{
		form.method = "post";
		form.action="ServletAltaAlumno";
		setTimeout(AlertIngresado(),5000);
		
		}
	else if(!ok)
		{
		form.method = "post";
		form.action= "AlumnoAlta.jsp";
		alertError();

		} 
	
}


function ModificarAlumno()
{
	
	
	
	var ok = true;
	var form = document.getElementById("FormModificarAlumno");
	var nombre = document.getElementById("txtNombreModificarAlumno").value;
	var apellido = document.getElementById("txtApellidoModificarAlumno").value;
	var Legajo =  document.getElementById("txtLegajoModificarAlumno").value;
	var Telefono =  document.getElementById("txtTelefonoModificarAlumno").value;
	//var Email =  document.getElementById("txtMail").value;           FALTA VALIDAR
	var Domicilio =  document.getElementById("txtDomicilioModificarAlumno").value;
	var Localidad =  document.getElementById("txtLocalidadModificarAlumno").value;
	var Provincia =  document.getElementById("txtProvinciaModificarAlumno").value;
	//var FechaNac =  document.getElementById("txtFechaNac").value;          FALTA VALIDAR
	
	
	var regexNumeros = /^([0-9])*$/;
	var regexLetras = (/^[A-Z\s]+$/i);
	

	
	if(!regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvinciaModificarAlumno").style.backgroundColor = "red";
	document.getElementById("txtProvinciaModificarAlumno").value="";

	}
	else
		{
		document.getElementById("txtProvinciaModificarAlumno").style.backgroundColor = "white";
		}
	
	if(!regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidadModificarAlumno").style.backgroundColor = "red";
	document.getElementById("txtLocalidadModificarAlumno").value="";
	}
	else
		{
		document.getElementById("txtLocalidadModificarAlumno").style.backgroundColor = "white";

		}
	
//	if(!regexLetras.test(Domicilio))
//	{
//	ok=false;
//	document.getElementById("txtDomicilio").style.backgroundColor = "red";
//	document.getElementById("txtDomicilio").value="";
//	}
//	else
//		{
//		document.getElementById("txtDomicilio").style.backgroundColor = "white";
//
//		}
	
	
	if(!regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefonoModificarAlumno").style.backgroundColor = "red";
	document.getElementById("txtTelefonoModificarAlumno").value="";
	}
	else
		{
		document.getElementById("txtTelefonoModificarAlumno").style.backgroundColor = "white";

		}
	
	if(!regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajoModificarAlumno").style.backgroundColor = "red";
	document.getElementById("txtLegajoModificarAlumno").value="";
	}
	else
		{
		document.getElementById("txtLegajoModificarAlumno").style.backgroundColor = "white";

		}

	if(!regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombreModificarAlumno").style.backgroundColor = "red";
		document.getElementById("txtNombreModificarAlumno").value="";
		}
	else
		{
		document.getElementById("txtNombreModificarAlumno").style.backgroundColor = "white";

		}
	
	if(!regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellidoModificarAlumno").style.backgroundColor = "red";
	document.getElementById("txtApellidoModificarAlumno").value="";
	}
	else
		{
		document.getElementById("txtApellidoModificarAlumno").style.backgroundColor = "white";

		}


	if(ok)
		{
		form.method = "post";
		form.action="ServletModificarAlumno";
		setTimeout(AlertModificado(),5000);
		
		}
	else if(!ok)
		{
		form.method = "post";
		form.action= "AlumnoAlta.jsp";
		setTimeout(alertError(),5000);

		} 
	

}

function DireccionarModificar()
{
	
	var form = document.getElementById("formTablaAlumnos");
	form.method="get";
	form.action="ServletModificarAlumno";
	
}



function EliminarAlumno(IDTabla)
{
	
	var form = document.getElementById("formTablaAlumnos"+IDTabla);
	form.method="get";
	form.action="ServletModificarAlumno";
	AlertEliminado();
	
	
}

function direccionar(IDTabla){
	
	var form = document.getElementById("formTablaAlumnos"+IDTabla);
	form.method="get";
	form.action="ServletModificarAlumno";
	
}

function AlertEliminado()
{
alert("Eliminado con exito.");	
}

function AlertModificado()
{
	alert("Modificado con exito.");
}


function AlertIngresado(){
	alert("Ingresado con exito.");
}

function alertError(){
	alert("Existen errores los datos ingresados.");
}