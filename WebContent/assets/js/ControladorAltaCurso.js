/**
 * 
 */

function ListarAlumnos()
{
	var nom=true;
	var leg=true;
	var form = document.getElementById("formListaAlumnos2");

	
	var regexNumeros = new RegExp("[0-9]+");
	var regexLetras = new RegExp("[a-zA-Z]+");
	
//	if(nombre.length==0 || !regexLetras.test(nombre))
//	{
//	nom=false;
//	}
//	
//	if(legajo.length==0 || !regexNumeros.test(legajo))
//	{
//	leg=false;
//	}
	
//	
//	if(leg==true || nom==true)
//	{
		form.method = "post";
		form.action="ServletAltaCurso";

//	}
//
//	else
//		{
//		alertError();
//		form.action= "AlumnoListado.jsp";
//		}

}



function ListarProfesores()
{
	var nom=true;
	var leg=true;
	var form = document.getElementById("formListaDocentes");

	
	var regexNumeros = new RegExp("[0-9]+");
	var regexLetras = new RegExp("[a-zA-Z]+");
	
//	if(nombre.length==0 || !regexLetras.test(nombre))
//	{
//	nom=false;
//	}
//	
//	if(legajo.length==0 || !regexNumeros.test(legajo))
//	{
//	leg=false;
//	}
//	
	
//	if(leg==true || nom==true)
////	{
	
	var MateriaIngresada = document.getElementById("MateriaIngresada3").value= document.getElementById("txtMateriaCurso").value;
	var SemestreIngresado = document.getElementById("SemestreIngresado3").value= document.getElementById("txtSemestreCurso").value;
	var AnioIngresado = document.getElementById("AnioIngresado3").value= document.getElementById("txtAnioCurso").value;
	

	var div = document.getElementById("HabilitarAlumnos").style.visibility = 'visible';

	
		form.method = "post";
		form.action="ServletAltaCurso";
		
		

}

function CursoCompleto()
{
	var form = document.getElementById("btnGuardarCurso").disabled=false;
	
}


function GuardarCurso()
{
	var form = document.getElementById("formAltaAlumnosCurso");
	form.method = "post";
	form.action="ServletAltaCurso";
	
}


function SeleccionarProfesor(IDTabla)
{
	
	var form = document.getElementById(IDTabla);
	form.method="post";
	form.action="ServetAltaCurso";
}


function GuardarNotas()
{
	var form = document.getElementById("TablaCalificarCurso");
	form.method = "post";
	form.action="ServletCalificarCurso";
	

}


function HabilitarProfesores()
{
	var MateriaIngresada = document.getElementById("MateriaIngresada").value= document.getElementById("txtMateriaCurso").value;
	var SemestreIngresado = document.getElementById("SemestreIngresado").value= document.getElementById("txtSemestreCurso").value;
	var AnioIngresado = document.getElementById("AnioIngresado").value= document.getElementById("txtAnioCurso").value;
	
	var form = document.getElementById("formDatosCurso");

	form.method = "post";
	form.action="ServletAltaCurso";
	
	
	
	//document.getElementById("NuevoCurso").style.visibility= "hidden";

	
	
}

function HabilitarAlumnos()
{
	var MateriaIngresada = document.getElementById("MateriaIngresada3").value= document.getElementById("txtMateriaCurso").value;
	var SemestreIngresado = document.getElementById("SemestreIngresado3").value= document.getElementById("txtSemestreCurso").value;
	var AnioIngresado = document.getElementById("AnioIngresado3").value= document.getElementById("txtAnioCurso").value;
	
	
	

//	form.method = "get";
//	form.action="ServletAltaCurso";
	


}

function HabilitarAlumnosInscriptos()
{
	var div = document.getElementById("HabilitarAlumnosInscriptos").style.visibility = 'visible';

}





