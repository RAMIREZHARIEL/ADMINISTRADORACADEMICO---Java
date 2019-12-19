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
	
	
	
	var regexNumeros = RegExp("[0-9]+");
	var regexLetras = RegExp("[a-zA-Z]+");
	
	if(Provincia.length==0 || !regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvinciaDocente").style.backgroundColor = "red";
	}
	
	if(Localidad.length==0 || !regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidadDocente").style.backgroundColor = "red";
	}
	
	if(Domicilio.length==0 || !regexLetras.test(Domicilio))
	{
	ok=false;
	document.getElementById("txtDomicilioDocente").style.backgroundColor = "red";
	}
	
	
	if(Telefono.length==0 || !regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefonoDocente").style.backgroundColor = "red";
	}
	
	if(Legajo.length==0 || !regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajoDocente").style.backgroundColor = "red";
	}

	if(nombre.length==0 || !regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombreDocente").style.backgroundColor = "red";
		}
	
	if(apellido.length==0 || !regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellidoDocente").style.backgroundColor = "red";
	}
	
	

	
	if(ok)
		{
		form.method = "get";
		form.action="ServletAltaDocente";
		setTimeout(AlertIngresado(),5000);
		
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
	
	
	
	var regexNumeros = RegExp("[0-9]+");
	var regexLetras = RegExp("[a-zA-Z]+");
	

	
	if(Provincia.length==0 || !regexLetras.test(Provincia))
	{
	ok=false;
	document.getElementById("txtProvinciaDocente").style.backgroundColor = "red";
	}
	

	
	if(Localidad.length==0 || !regexLetras.test(Localidad))
	{
	ok=false;
	document.getElementById("txtLocalidadDocente").style.backgroundColor = "red";
	}
	
	if(Domicilio.length==0 || !regexLetras.test(Domicilio))
	{
	ok=false;
	document.getElementById("txtDomicilioDocente").style.backgroundColor = "red";
	}
	
	
	if(Telefono.length==0 || !regexNumeros.test(Telefono))
	{
	ok=false;
	document.getElementById("txtTelefonoDocente").style.backgroundColor = "red";
	}
	
	if(Legajo.length==0 || !regexNumeros.test(Legajo))
	{
	ok=false;
	document.getElementById("txtLegajoDocente").style.backgroundColor = "red";
	}

	if(nombre.length==0 || !regexLetras.test(nombre))
		{
		ok=false;
		document.getElementById("txtNombreDocente").style.backgroundColor = "red";
		}
	
	if(apellido.length==0 || !regexLetras.test(apellido))
	{
	ok=false;
	document.getElementById("txtApellidoDocente").style.backgroundColor = "red";
	}
	


	if(ok)
		{
		form.method = "post";
		form.action="ServletModificarDocente";
		setTimeout(AlertModificado(),5000);
		
		}
	else if(!ok)
		{
		form.method = "post";
		form.action= "DocenteAlta.jsp";
		setTimeout(alertError(),5000);

		} 
	

}

function EliminarDocente()
{
	

	var tabla = document.getElementById("TablaListaDocentes"),rIndex, cIndex;
	var boton = document.getElementsByName("btnEliminarDocente");

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
				var x = "formTablaDocentes"+rIndex;
				var form = document.getElementById(x);
				form.method="get";
				form.action="ServletModificarDocente";
				
				}
		};
		}
	
	}
	
}


function direccionarDocente()
{
	
	
	var tabla = document.getElementById("TablaListaDocentes"),rIndex, cIndex;
	var boton = document.getElementsByName("btnModificarDocente");


	for (var i=0; i<tabla.rows.length;i++)
		{
		
		for(var j=0; j<tabla.rows[i].cells.length;j++)
			{
			tabla.rows[i].cells[j].onclick = function()
			{

					rIndex= this.parentElement.rowIndex;
					cIndex= this.cellIndex;
						var x = "formTablaDocentes"+rIndex;
						var form = document.getElementById(x);
						form.method="get";
						form.action="ServletModificarDocente";
						
			};
			}
		
		}
	
}