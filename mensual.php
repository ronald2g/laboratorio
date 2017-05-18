<?php

require_once 'dbase7.php';

class Datos extends Tabla {

        function centro_recuperar($codigo){
                return $this->valor("select nombre from filial where id=$codigo");
        }

	function examen_lista(){
                return $this->lista("select id,descripcion from examen order by id");
        }

	function laboratorio_contar($medico,$ano,$mes,$laboratorio){
                return $this->valor("select count(*) from solservicio,solservicio_laboratorio where solservicio_id=solservicio.id and medico_id=$medico and year(fechahoralabo)=$ano and month(fechahoralabo)=$mes and nroasignadolabo>0 and laboratorio_id=$laboratorio");
        }

	function laboratorio_lista(){
		return $this->matriz("select examen_id,id from laboratorio order by examen_id,id");
	}

	function laboratorio_nombres(){
		return $this->lista("select id,nombre from laboratorio order by id");
	}

	function laboratorio_recuperar($codigo){
                return $this->valor("select nombre from centro_salud where id=$codigo");
        }

	function medico_laboratorio($medico,$ano,$mes){
		return $this->lista("select laboratorio_id,count(*) from solservicio,solservicio_laboratorio where solservicio_id=solservicio.id and medico_id=$medico and year(fechahoralabo)=$ano and month(fechahoralabo)=$mes and nroasignadolabo>0 group by laboratorio_id");
	}

	function medicos_listar($centros)
        {
                if(empty($centros)) $consulta ="";
                else $consulta = "and filial_id in ($centros)";
                return $this->matriz("select servicio_id,medico_id as contador from medico_especialidad_filial,especialidad_filial,especialidad where especialidad_filial_id=especialidad_filial.id and especialidad_id=especialidad.id $consulta group by medico_id order by servicio_id");
        }

	function medico_recuperar($codigo){
		return $this->valor("select nombrec from medico where id=$codigo");
	}

	function servicio_contar($medico,$ano,$mes){
                return $this->valor("select count(*) from solservicio where medico_id=$medico and year(fechahoralabo)=$ano and month(fechahoralabo)=$mes and nroasignadolabo>0");
        }

        function servicio_lista(){
                return $this->lista("select id,nombre from servicio");
        }

	function solicitud_listar($fecha)
        {
                return $this->consulta("select * from solservicio where date(fechahoralabo)='$fecha'");
        }

}

class Pagina extends Constante{
	
	function laboratorio_listar($fecha)
	{
		// lista de centro o establecimientos
		echo "Fecha: $fecha<br>";
		echo "<table><tr><th>Centro</th></tr>";
		$centros="";
		if(isset($_GET['cen'])){
			$centros = $_GET['cen'];// str_replace('/',',',$_GET['cen']);
			$lista = explode(',',$centros);
			foreach($lista as $indice => $codigo)
			{
				$nombre=$this->datos->centro_recuperar($codigo);
				echo "<tr><td>$codigo</td><td>$nombre</td></tr>\n";
				
			}
		}
		echo "</table>\n";

		// recuperar tablas
		$servicio_lista      = $this->datos->servicio_lista();
		$examen_lista        = $this->datos->examen_lista();
		$laboratorio_lista   = $this->datos->laboratorio_lista();
		$laboratorio_nombres = $this->datos->laboratorio_nombres();
		// recuperar lista de medicos en caso de que
		// un medico tenga dos especialidades se ignorara la otra
		// por transitividad se aplica a servicios
		// y no todos los centros dan receta
		$lista = $this->datos->medicos_listar($centros);
		

		// mostrar examenes dentro un servicio 
		echo "<table border=\"1\">\n";

		echo "<tr><th></th><th></th>";
		foreach($examen_lista as $indice => $examen){
			$columnas=count($laboratorio_lista[$indice]);
			echo "<th colspan=\"$columnas\"> $examen</th>";
		}
		echo "</tr>\n<tr><th>MEDICO</th><th># PACIENTES ATENDIDOS</th>";
		foreach($laboratorio_lista as $examen => $laboratorios){
			foreach($laboratorios as $i => $laboratorio_id){
				echo "<td>{$laboratorio_nombres[$laboratorio_id]}</td>";
			}
		}
		echo "</tr>\n";


		foreach($lista as $servicio => $medicos)
		{

			foreach($examen_lista as $indice => $examen){
				$suma[$indice]=0;
                        }

			echo "<tr><th>{$servicio_lista[$servicio]}</th>\n";
			foreach($laboratorio_lista as $examen => $laboratorios)
                        	foreach($laboratorios as $i => $laboratorio_id){
                                	echo "<td></td>";
                        }
                	echo "</tr>\n";

			foreach($medicos as $indice => $codigo)
			{
				$contar=$this->datos->servicio_contar($codigo,$this->ano,$this->mes);
				if($contar){
					$medico=$this->datos->medico_recuperar($codigo);
					$labora=$this->datos->medico_laboratorio($codigo,$this->ano,$this->mes);	
					echo "<tr><td>$medico</td><td>$contar</td>";
					foreach($laboratorio_lista as $examen => $laboratorios){
						foreach($laboratorios as $i => $laboratorio_id){
							if(isset($labora[$laboratorio_id])){
								$suma[$examen]+=$labora[$laboratorio_id];
								echo "<td>{$labora[$laboratorio_id]}</td>";
							}
							else
								echo "<td>0</td>";	
						}
					}	
					echo "</tr>\n";
				}
			}
			echo "<tr><th></th><th></th>";
                	foreach($examen_lista as $indice => $examen){
                        	$columnas=count($laboratorio_lista[$indice]);
	                        echo "<th colspan=\"$columnas\">{$suma[$indice]}</th>";
        	        }
                	echo "</tr>\n";
		}
		echo "</table>\n";
	}


	function panel_central()
	{
		$fecha = iniciar('fec',date("Y-m"));
		sscanf($fecha,"%d-%d",$this->ano,$this->mes);	
	        $this->laboratorio_listar($fecha);
	}
}

if(acceso(0)){
	$pagina=new Pagina($enlace1);
	$pagina->panel_central();
} else enviar('index.php');
?>
