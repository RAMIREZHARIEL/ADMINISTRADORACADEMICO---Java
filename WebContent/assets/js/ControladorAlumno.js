/**
 * 
 */

function  AltaAlumno(){
	var ok = true;
	var form = document.getElementById("FormAltaAlumno");
	
	var nombre = document.getElementById("txtNombre").value;
	var apellido = document.getElementById("txtApellido").value;
	var Legajo =  document.getElementById("txtLegajo").value;
	var Telefono =  document.getElementById("txtTelefono").value;
	//var Email =  document.getElementById("txtMail").value;           FALTA VALIDAR
	var Domicilio =  document.getElementById("txtDomicilio").value;
	var Localidad =  document.getElementById("txtLocalidad").value;
	var Provincia =  document.getElementById("txtProvincia").value;
	//var FechaNac =  document.getElementById("txtFechaNac").value;          FALTA VALIDAR
	
	
	
	var regexNumeros = RegExp("[0-9]+");
	var regexLetras = RegExp("[a-zA-Z]+");
	
	if(Provincia.length==0 || !regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvincia").style.backgroundColor = "red";
	}
	
	if(Localidad.length==0 || !regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidad").style.backgroundColor = "red";
	}
	
	if(Domicilio.length==0 || !regexLetras.test(Domicilio))
	{
	ok=false;
	document.getElementById("txtDomicilio").style.backgroundColor = "red";
	}
	
	
	if(Telefono.length==0 || !regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefono").style.backgroundColor = "red";
	}
	
	if(Legajo.length==0 || !regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajo").style.backgroundColor = "red";
	}

	if(nombre.length==0 || !regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombre").style.backgroundColor = "red";
		}
	
	if(apellido.length==0 || !regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellido").style.backgroundColor = "red";
	}
	
	

	
	if(ok)
		{
		form.method = "get";
		form.action="ServletAltaAlumno";
		setTimeout(AlertIngresado(),5000);
		
		}
	else if(!ok)
		{
		form.method = "post";
		form.action= "AlumnoAlta.jsp";
		setTimeout(alertError(),5000);

		} 
	
}


function ModificarAlumno()
{
	
	
	
	var ok = true;
	var form = document.getElementById("FormModificarAlumno");
	
	var nombre = document.getElementById("txtNombre").value;
	var apellido = document.getElementById("txtApellido").value;
	var Legajo =  document.getElementById("txtLegajo").value;
	var Telefono =  document.getElementById("txtTelefono").value;
	//var Email =  document.getElementById("txtMail").value;           FALTA VALIDAR
	var Domicilio =  document.getElementById("txtDomicilio").value;
	var Localidad =  document.getElementById("txtLocalidad").value;
	var Provincia =  document.getElementById("txtProvincia").value;
	//var FechaNac =  document.getElementById("txtFechaNac").value;          FALTA VALIDAR
	
	
	
	var regexNumeros = RegExp("[0-9]+");
	var regexLetras = RegExp("[a-zA-Z]+");
	

	
	if(Provincia.length==0 || !regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvincia").style.backgroundColor = "red";
	}
	

	
	if(Localidad.length==0 || !regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidad").style.backgroundColor = "red";
	}
	
	if(Domicilio.length==0 || !regexLetras.test(Domicilio))
	{
	ok=false;
	document.getElementById("txtDomicilio").style.backgroundColor = "red";
	}
	
	
	if(Telefono.length==0 || !regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefono").style.backgroundColor = "red";
	}
	
	if(Legajo.length==0 || !regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajo").style.backgroundColor = "red";
	}

	if(nombre.length==0 || !regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombre").style.backgroundColor = "red";
		}
	
	if(apellido.length==0 || !regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellido").style.backgroundColor = "red";
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



function EliminarAlumno()
{
	
	var tabla = document.getElementById("TablaListaALumnos"),rIndex, cIndex;
	var boton = document.getElementsByName("btnEliminar");

	for (var i=0; i<tabla.rows.length;i++)
	{
	
	for(var j=0; j<tabla.rows[i].cells.length;j++)
		{
		tabla.rows[i].cells[j].onclick = function()
		{

			var ok= confirm("Seguro que desea eliminar?");
			if (ok)
				{
				
				rIndex= this.parentElement.rowIndex;
				cIndex= this.cellIndex;
				var x = "formTablaAlumnos"+rIndex;
				var form = document.getElementById(x);
				form.method="get";
				form.action="ServletModificarAlumno";
				
				}
		};
		}
	
	}
	
	
}

function direccionar(){
	
	var tabla = document.getElementById("TablaListaALumnos"),rIndex, cIndex;
	var boton = document.getElementsByName("btnModificar");


	for (var i=0; i<tabla.rows.length;i++)
		{
		
		for(var j=0; j<tabla.rows[i].cells.length;j++)
			{
			tabla.rows[i].cells[j].onclick = function()
			{

					rIndex= this.parentElement.rowIndex;
					cIndex= this.cellIndex;
						var x = "formTablaAlumnos"+rIndex;
						var form = document.getElementById(x);
						form.method="get";
						form.action="ServletModificarAlumno";
						
			};
			}
		
		}
	
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