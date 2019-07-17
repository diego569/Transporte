include('cn/cn.php');
function Show(load){
	switch(load){    
	case 'pasajero':
		$('#resultado').empty();

		var_buscar = $("#buscar").val();
		//alert(var_buscar);

			$.ajax({
			type: "post",
			url: "get/pasajero.php",
			success: function(datos){
				registros = eval(datos);

					html = "";
					html += "<div class='container '>"
					html += "<p class='h2'>Listado de Pasajeros</p>";
					html += "<hr><br />";
					html += "<button class='btn btn-outline-primary mr-3 mb-3' onclick=javascrip:add('pasajero');><span class='fas fa-plus mr-2' title='Agregar'></span>Agregar</button>";
					html += "<a class='btn btn-outline-success mb-3' href='pdf/pasajero.php' target='_blank'><span class='fas fa-print mr-2' title='Imprimir'></span>Imprimir</a></button>";
					html += "<div class='row justify-content-between mb-3'>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item mr-2'><label>Mostrar</label></span>";
					html += "<span class='list-inline-item mr-2'>";
					html += "<select class='custom-select my-1 mr-2' id='inlineFormCustomSelectPref'>";
					html += "<option selected>10</option>";
					html += "<option value='1'>20</option>";
					html += "<option value='2'>30</option>";
					html += "<option value='3'>40</option>";
					html += "<option value='4'>50</option>";
					html += "<option value='5'>100</option>";
					html += "<option value='6'>Todo</option>";
					html += "</select>";
					html += "</span><span class='list-inline-item'><label>Entradas</label></span>";
					html += "</div></div>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item'>";
					html += "<label class='mr-2'>Buscar</label>";
					html += "<span><span class='fas fa-search mr-sm-2'></span></span>";
					html += "<span class='list-inline-item'>";
					html += "<input type='text' id='buscar'></span>";
					html += "</div></div></div>";					
					html += "<table class='table table-bordered table-hover table-responsive-md'>";
					html += "<thead>";
					html += "<th>N°</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Dni</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Nombre(s)</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Ciudad</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Telefono</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Fecha Nacimiento</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";

					for (var i=0; i < registros.length; i++) {
							html += "<tr><td>"+(i+1)+"</td>";
							html += "<td>"+registros[i].dnip+"</td>";
							html += "<td>"+registros[i].nombre+"</td>";
							html += "<td>"+registros[i].ciudad+"</td>";
							html += "<td>"+registros[i].telefono+"</td>";
							html += "<td>"+registros[i].fechan+"</td>";

							html += "<td><button class='btn btn-outline-success mr-2' onclick=javascrip:modificaPasajero('"+registros[i].dnip+"');><span class='fas fa-edit' title='Modificar'></span></button>";
							html += "<button class='btn btn-outline-danger' onclick=javascrip:eliminarPasajero('"+registros[i].dnip+"');><span class='fas fa-trash' title='Eliminar'></span></button></td></tr>";
			       
					}
					html += "</tbody>";
					html += "</table>";

					html += "<nav aria-label='Page navigation'>";
					html += "<ul class='pagination justify-content-end'>";
					html += "<li class='page-item'><a class='page-link' href='#'>1</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>2</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>3</a></li>";
					html += "</ul></nav>";
		
					$('#resultado').append(html);
				}
			});
			break;
	case 'bus':
	$('#resultado').empty();
		$.ajax({
			type: "post",
			url: "get/bus.php",
			success: function(datos){
				registros = eval(datos);

					html = "";
					html += "<div class='container '>"
					html += "<p class='h2'>Listado de Buses</p>";
					html += "<hr><br />";
					html += "<button class='btn btn-outline-primary mr-3 mb-3' onclick=javascrip:add('bus');><span class='fas fa-plus mr-2' title='Agregar'></span>Agregar</button>";
					html += "<a class='btn btn-outline-success mb-3' href='pdf/bus.php' target='_blank'><span class='fas fa-print mr-2' title='Imprimir'></span>Imprimir</a></button>";
					html += "<div class='row justify-content-between mb-3'>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item mr-2'><label>Mostrar</label></span>";
					html += "<span class='list-inline-item mr-2'>";
					html += "<select class='custom-select my-1 mr-2' id='inlineFormCustomSelectPref'>";
					html += "<option selected>10</option>";
					html += "<option value='1'>20</option>";
					html += "<option value='2'>30</option>";
					html += "<option value='3'>40</option>";
					html += "<option value='4'>50</option>";
					html += "<option value='5'>100</option>";
					html += "<option value='6'>Todo</option>";
					html += "</select>";
					html += "</span><span class='list-inline-item'><label>Entradas</label></span>";
					html += "</div></div>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item'>";
					html += "<label class='mr-2'>Buscar</label>";
					html += "<span><span class='fas fa-search mr-sm-2'></span></span>";
					html += "<span class='list-inline-item'>";
					html += "<input type='text' id='buscar'></span>";
					html += "</div></div></div>";					
					html += "<table class='table table-bordered table-hover table-responsive-md'>";
					html += "<thead>";
					html += "<th>N°</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Placa</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>No Asientos</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Calefaccion</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Empresa</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";

					for (var i=0; i < registros.length; i++) {
							html += "<tr><td>"+(i+1)+"</td>";
							html += "<td>"+registros[i].placa+"</td>";
							html += "<td>"+registros[i].casiento+"</td>";
							html += "<td>"+registros[i].calefaccion+"</td>";
							html += "<td>"+registros[i].empresa+"</td>";

							html += "<td><button class='btn btn-outline-success mr-2' onclick=javascrip:modificaBus('"+registros[i].placa+"');><span class='fas fa-edit' title='Modificar'></span></button>";
							html += "<button class='btn btn-outline-danger' onclick=javascrip:eliminarBus('"+registros[i].placa+"');><span class='fas fa-trash' title='Eliminar'></span></button></td></tr>";
			       
					}
					html += "</tbody>";
					html += "</table>";

					html += "<nav aria-label='Page navigation'>";
					html += "<ul class='pagination justify-content-end'>";
					html += "<li class='page-item'><a class='page-link' href='#'>1</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>2</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>3</a></li>";
					html += "</ul></nav>";
		
					$('#resultado').append(html);
				}
			});
			break;
case 'conductor':
		$('#resultado').empty();

		var_buscar = $("#buscar").val();
			$.ajax({
				type: "post",
				data: "nombres="+var_buscar,
				//data: "dnic="+var_dnic+"&nlicencia="+var_nlicencia+"&apaterno"+var_apaterno+"&amaterno="+var_amaterno+"&nombres="+var_nombres+"&experiencia="+var_experiencia,
				url: "get/conductor.php",
				success: function(datos){
					registros = eval(datos);

					html = "";
					html += "<div class='container '>"
					html += "<p class='h2'>Listado de Conductores</p>";
					html += "<hr><br />";
					html += "<button class='btn btn-outline-primary mr-3 mb-3' onclick=javascrip:add('conductor');><span class='fas fa-plus mr-2' title='Agregar'></span>Agregar</button>";
					html += "<a class='btn btn-outline-success mb-3' href='pdf/conductor.php' target='_blank'><span class='fas fa-print mr-2' title='Imprimir'></span>Imprimir</a></button>";
					html += "<div class='row justify-content-between mb-3'>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item mr-2'><label>Mostrar</label></span>";
					html += "<span class='list-inline-item mr-2'>";
					html += "<select class='custom-select my-1 mr-2' id='inlineFormCustomSelectPref'>";
					html += "<option selected>10</option>";
					html += "<option value='1'>20</option>";
					html += "<option value='2'>30</option>";
					html += "<option value='3'>40</option>";
					html += "<option value='4'>50</option>";
					html += "<option value='5'>100</option>";
					html += "<option value='6'>Todo</option>";
					html += "</select>";
					html += "</span><span class='list-inline-item'><label>Entradas</label></span>";
					html += "</div></div>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item'>";
					html += "<label class='mr-2'>Buscar</label>";
					html += "<span><span class='fas fa-search mr-sm-2'></span></span>";
					html += "<span class='list-inline-item'>";
					html += "<input type='text' id='buscar' ></span>";
					html += "</div></div></div>";
					html += "<table class='table table-bordered table-hover table-responsive-md'>";
					html += "<thead>";
					html += "<th>N°</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Dni</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>licencia</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>categoria</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>A. Paterno</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>A. Materno</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Nombre(s)</th>";
					html += "<th style='cursor:pointer;' onClick=javascrip:sort('');><span class='fas fa-sort mr-2' title='Ordenar'></span>Experiencia</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					
					for (var i=0; i < registros.length; i++) {
							html += "<tr><td>"+(i+1)+"</td>";
							html += "<td>"+registros[i].dnic+"</td>";
							html += "<td>"+registros[i].nlicencia+"</td>";
							html += "<td>"+registros[i].categoria+"</td>";
							html += "<td>"+registros[i].apaterno+"</td>";
							html += "<td>"+registros[i].amaterno+"</td>";
							html += "<td>"+registros[i].nombres+"</td>";
							html += "<td>"+registros[i].experiencia+"</td>";

							html += "<td><button class='btn btn-outline-success mr-2' onclick=javascrip:modificaConductor('"+registros[i].dnic+"');><span class='fas fa-edit' title='Modificar'></span></button>";
							html += "<button class='btn btn-outline-danger' onclick=javascrip:eliminarConductor('"+registros[i].dnic+"');><span class='fas fa-trash' title='Eliminar'></span></button></td></tr>";
					}
					html += "</tbody>";
					html += "</table>";
					
					html += "<nav aria-label='Page navigation'>";
					html += "<ul class='pagination justify-content-end'>";
					html += "<li class='page-item'><a class='page-link' href='#'>1</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>2</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>3</a></li>";
					html += "</ul></nav>";
		
		
					$('#resultado').append(html);
				}
			});
			break;
	case 'admin':
		$('#resultado').empty();

		var_buscar = $("#buscar").val();
		//alert(var_buscar);

			$.ajax({
				type: "post",
				data: "nombre="+var_buscar,
				url: "get/admin.php",
				success: function(datos){
					registros = eval(datos);
					html = "";
					//------------------------
					//-----------------

					html += "<div class='container'>";
					html += "<p class='h2'>Listado de Adminitradores</p>";
					html += "<hr><br />";
					html += "<button class='btn btn-outline-primary mr-3 mb-3' onclick=javascrip:add('admin');><span class='fas fa-plus mr-2' title='Agregar' ></span>Agregar</button>";
					html += "<a class='btn btn-outline-success mb-3' href='pdf/admin.php' target='_blank'><span class='fas fa-print mr-2' title='Imprimir'></span>Imprimir</a></button>";
					html += "<div class='row justify-content-between mb-3'>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item mr-2'><label>Mostrar</label></span>";
					html += "<span class='list-inline-item mr-2'>";
					html += "<select class='custom-select my-1 mr-2' id='inlineFormCustomSelectPref'>";
					html += "<option selected>10</option>";
					html += "<option value='1'>20</option>";
					html += "<option value='2'>30</option>";
					html += "<option value='3'>40</option>";
					html += "<option value='4'>50</option>";
					html += "<option value='5'>100</option>";
					html += "<option value='6'>Todo</option>";
					html += "</select>";
					html += "</span><span class='list-inline-item'><label>Entradas</label></span>";
					html += "</div></div>";
					html += "<div class='col-auto'>";
					html += "<div class='list-inline'>";
					html += "<span class='list-inline-item'>";
					html += "<label class='mr-2'>Buscar</label>";
					html += "<span><span class='fas fa-search mr-sm-2'></span></span>";
					html += "<span class='list-inline-item'>";
					html += "<input type='text' id='buscar'></span>";
					html += "</div></div></div>";
					html += "<table class='table table-bordered table-hover table-responsive-md'>";
					html += "<thead>";
					html += "<th>N°</th>";
					html += "<th><span class='fas fa-sort mr-sm-2' title='Ordenar' style='cursor:pointer;' onClick=javascrip:sort('');></span>Nomres</th>";
					html += "<th><span class='fas fa-sort mr-sm-2' title='Ordenar' style='cursor:pointer;' onClick=javascrip:sort('');></span>Usuario</th>";
					html += "<th><span class='fas fa-sort mr-sm-2' title='Ordenar' style='cursor:pointer;' onClick=javascrip:sort('');></span>Tipo</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
		
					for (var i=0; i < registros.length; i++) {
							html += "<tr><td>"+(i+1)+"</td>";
							html += "<td>"+registros[i].nombre+"</td>";
							html += "<td>"+registros[i].login+"</td>";
							html += "<td>"+registros[i].tipo+"</td>";

							html += "<td><button class='btn btn-outline-success mr-2' onclick=javascrip:modificaAdmin('"+registros[i].login+"');><span class='fas fa-edit' title='Modificar'></span></button>";
							html += "<button class='btn btn-outline-danger' onclick=javascrip:eliminarAdmin('"+registros[i].login+"');><span class='fas fa-trash' title='Eliminar'></span></button></td></tr>";
                                  
					}
					html += "</tbody>";
					html += "</table>";

					html += "<nav aria-label='Page navigation'>";
					html += "<ul class='pagination justify-content-end'>";
					html += "<li class='page-item'><a class='page-link' href='#'>1</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>2</a></li>";
					html += "<li class='page-item'><a class='page-link' href='#'>3</a></li>";
					html += "</ul></nav>";
		
					$('#resultado').append(html);
				}
			});
			break;
	}
}
//-------------- eliminar -------------------//

function eliminarConductor(id){
	 $.ajax({
		type: "post",
		data: "dnic="+id,
		url: "include/delete.php",
		success: function(datos){
			$('#resultado').empty();
			Show('conductor');
		}
	});  
}
function eliminarBus(id){
	 $.ajax({
		type: "post",
		data: "placa="+id,
		url: "include/delete.php",
		success: function(datos){
			$('#resultado').empty();
			Show('bus');
		}
	});  
}
function eliminarPasajero(id){	
	 $.ajax({
		type: "post",
		data: "dnip="+id,
		url: "include/delete.php",
		success: function(datos){
			$('#resultado').empty();
			Show('pasajero');
		}
	});  
}

function eliminarAdmin(id){

	 $.ajax({
		type: "post",
		data: "idadmin="+id,
		url: "include/delete.php",
		success: function(datos){
			$('#resultado').empty();
			Show('admin');
		}
	});  
}
////////////////////////////////

/////////////////////////////////
//-----------add -----------------------


function add(ad){
	switch(ad){
	 	case 'admin':
		 $.ajax({
			type: "post",
			//data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Agregar Administrador</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>Nombre</th>";
					html += "<th>Usuario</th>";
					html += "<th>Contraseña</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtnombre' id='txtlogin' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtlogin' id='txtlogin' class='form-control' required autofocus></td><br>";
	        		html += "<td><input type='password' name='txtclave' id='txtclave' class='form-control' id='' required></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";
					
					$('#resultado').append(html);
			}
		}); 
		break;
		case 'bus':
		 $.ajax({
			type: "post",
			//data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Agregar Bus</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>Placa</th>";
					html += "<th>No Asientos</th>";
					html += "<th>Calefaccion</th>";
					html += "<th>Empresa</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtplaca' id='txtlogin' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtcasiento' id='txtcasiento' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtcalefaccion' id='txtcalefaccion' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtempresa' id='txtempresa' class='form-control' required autofocus></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";
					
					$('#resultado').append(html);
			}
		}); 
		break;
		case 'conductor':
		 $.ajax({
			type: "post",
			//data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Agregar Conductor</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>Dni</th>";
					html += "<th>licencia</th>";
					html += "<th>Categoria</th>";
					html += "<th>A. Paterno</th>";
					html += "<th>A. Materno</th>";
					html += "<th>Nombre(es)</th>";
					html += "<th>Experiencia</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtdni' id='txtdni' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtnlicencia' id='txtnlicencia' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtcategoria' id='txtcategoria' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtapaterno' id='txtapaterno' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtamaterno' id='txtamaterno' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtnombre' id='txtnombre' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtexperiencia' id='txtexperiencia' class='form-control' required autofocus></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";
					
					$('#resultado').append(html);
			}
		}); 
		break;
		case 'pasajero':
		 $.ajax({
			type: "post",
			//data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Agregar Pasajero</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>Dni</th>";
					html += "<th>Nombre(s)</th>";
					html += "<th>Ciudad</th>";
					html += "<th>Telefono</th>";
					html += "<th>Fecha Nacimiento</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtdnip' id='txtdnip' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtnombres' id='txtnombres' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtciudad' id='txtciudad' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txttelefono' id='txttelefono' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtfechan' id='txtfechan' class='form-control' required autofocus></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";
					
					$('#resultado').append(html);
			}
		}); 
		break;
	}
}

//-----------modifica -----------------------

function modificaAdmin(id){

		 $.ajax({
			type: "post",
			data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Editar Administrador</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>No</th>";
					html += "<th>Nombre</th>";
					html += "<th>Usuario</th>";
					html += "<th>Contraseña</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtn' id='txtdnip' class='form-control disable' disable='1' required autofocus></td><br>";
					html += "<td><input type='text' name='txtnombre' id='txtlogin' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtlogin' id='txtlogin' class='form-control' value='"+id+"' required autofocus></td><br>";
	        		html += "<td><input type='password' name='txtclave' id='txtclave' class='form-control' id='' required></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";

					$('#resultado').append(html);
			}
		}); 
}
function modificaBus(id){

		 $.ajax({
			type: "post",
			//data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Editar Bus</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>No</th>";
					html += "<th>Placa</th>";
					html += "<th>No Asientos</th>";
					html += "<th>Calefaccion</th>";
					html += "<th>Empresa</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtn' id='txtdnip' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtplaca' id='txtlogin' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtcasiento' id='txtcasiento' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtcalefaccion' id='txtcalefaccion' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtempresa' id='txtempresa' class='form-control' required autofocus></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";
					
					$('#resultado').append(html);
			}
		}); 
}
function modificaConductor(id){
		 $.ajax({
			type: "post",
			//data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Editar Conductor</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>No</th>";
					html += "<th>Dni</th>";
					html += "<th>licencia</th>";
					html += "<th>Categoria</th>";
					html += "<th>A. Paterno</th>";
					html += "<th>A. Materno</th>";
					html += "<th>Nombre(es)</th>";
					html += "<th>Experiencia</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtn' id='txtdnip' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtdni' id='txtdni' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtnlicencia' id='txtnlicencia' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtcategoria' id='txtcategoria' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtapaterno' id='txtapaterno' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtamaterno' id='txtamaterno' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtnombre' id='txtnombre' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtexperiencia' id='txtexperiencia' class='form-control' required autofocus></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";
					
					$('#resultado').append(html);
			}
		}); 
function modificaPasajero(id){

		 $.ajax({
			type: "post",
			//data: "login="+id,
			///url: "modifica_admin.php",
			success: function(datos){
				$('#resultado').empty();
					html = "";
					html += "<div class='container'>";
					html += "<p class='h2'>Editar Pasajero</p>";
					html += "<hr>";
					html += "<table class='table table-bordered table-responsive-md'>";
					html += "<thead>";
					html += "<th>No</th>";
					html += "<th>Dni</th>";
					html += "<th>Nombre(s)</th>";
					html += "<th>Ciudad</th>";
					html += "<th>Telefono</th>";
					html += "<th>Fecha Nacimiento</th>";
					html += "<th>Comandos</th>";
					html += "</thead>";
					html += "<tbody>";
					html += "<form class='text-center' method='post' action='control.php'><tr>";
					html += "<td><input type='text' name='txtn' id='txtdnip' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtdnip' id='txtdnip' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtnombres' id='txtnombres' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtciudad' id='txtciudad' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txttelefono' id='txttelefono' class='form-control' required autofocus></td><br>";
					html += "<td><input type='text' name='txtfechan' id='txtfechan' class='form-control' required autofocus></td><br>";
					html += "<td><button class='btn btn-md btn-outline-primary' onclick=javascrip:addAdmin('');><span class='fas fa-save' title='Guardar'></span></button></td>"
					html += "</tr>";	
					html += "</form>";
					html += "</tbody>";
					html += "</table>";
					
					$('#resultado').append(html);
			}
		}); 
		break;
	}
}