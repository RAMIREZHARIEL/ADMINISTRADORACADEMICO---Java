
function ListadoAlumnos()
{
	var nom=true;
	var leg=true;
	var form = document.getElementById("formListaAlumnos");
	var nombre = document.getElementById("NomApe");
	var legajo = document.getElementById("Legajo");
	
	var regexNumeros = new RegExp("[0-9]+");
	var regexLetras = new RegExp("[a-zA-Z]+");
	
	if(nombre.length==0 || !regexLetras.test(nombre))
	{
	nom=false;
	}
	
	if(legajo.length==0 || !regexNumeros.test(legajo))
	{
	leg=false;
	}
	
	
	if(leg==true || nom==true)
	{
		form.method = "get";
		form.action="ServletListarAlumno";
	}

	else
		{
		alertError();
		form.action= "AlumnoListado.jsp";
		}

}

function ListadoDocentes()
{
	var nom=true;
	var leg=true;
	var form = document.getElementById("formListaDocentes");
	var nombre = document.getElementById("txtNombreProfesor");
	var legajo = document.getElementById("txtLegajoProfesor");
	
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
//	alertError();
	
	
	if(leg==true || nom==true)
	{

		form.method = "get";
		form.action="ServletListarDocente";
	}

	else
		{
		alertError();
		form.action= "DocenteListado.jsp";
		}
}


function ListadoCursos()
{
	var form = document.getElementById("formFiltroAnio");
	
	
	var select  = document.getElementById("FiltroAnio").value;
	form.method="get";
	form.action="ServletListarCurso";
	form.submit();
	
}

function ListarAlumnosDeCurso(IDTabla)
{	
	//var formname = document.getElementById("formName");
	var form = document.getElementById("TablaVerCursos"+IDTabla);
	form.method="get";
	form.action="ServletListarAlumnosDeCurso";
	
}

function alertError(){
	alert("Existen inconcistencias en los filtros ingresados.");
}