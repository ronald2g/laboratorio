<?php

require_once 'dbase7.php';

class Datos extends Tabla {

	function solicitud_listar($fecha)
	{
		return $this->consulta("select * from solservicio where date(fechahoralabo)='$fecha'");
	}

	function medicos_listar($centros)
	{
		return $this->matriz("select servicio_id,medico_id as contador from medico_especialidad_filial,especialidad_filial,especialidad where especialidad_filial_id=especialidad_filial.id and especialidad_id=especialidad.id and filial_id in ($centros) group by medico_id order by servicio_id");	
	}

	function laboratorios_contar($fecha,$medico,$hora1,$hora2)
	{
		if($hora1<$hora2) $hora="time(fechahoralabo)>='$hora1' and time(fechahoralabo)<'$hora2'";
		else $hora="(time(fechahoralabo)>='$hora1' or time(fechahoralabo)<'$hora2')";

		return $this->lista("select examen_id,count(*) as contador from laboratorio,solservicio_laboratorio,solservicio where laboratorio_id=laboratorio.id and solservicio_id=solservicio.id and date(fechahoralabo)='$fecha' and $hora and solservicio.medico_id=$medico and nroasignadolabo>0 group by examen_id order by examen_id");
	}

	function servicio_lista(){
		return $this->lista("select id,nombre from servicio");
	}

	function examen_lista(){
		return $this->lista("select id,descripcion from examen");
	}	

	function centro_recuperar($codigo){
		return $this->valor("select nombre from filial where id=$codigo");
	}
}

class Pagina extends Constante{
	
	function laboratorio_listar($fecha)
	{
		// lista de centro o establecimientos
		$centros = array(2,3,5);
		echo "Fecha: $fecha<br>";
		$centro_lista="";
		echo "<table><tr><th>Centros</th></tr>";
		foreach($centros as $indice => $codigo)
		{
			$nombre=$this->datos->centro_recuperar($codigo);
			$centro_lista.=$codigo.",";
			echo "<tr><td>$nombre</td></tr>\n";
			
		}	
		echo "</table>\n";
    		$centro_lista=substr($centro_lista,0,-1);



		// recuperar tablas
		$servicio_lista = $this->datos->servicio_lista();
		$examen_lista   = $this->datos->examen_lista();


		// recuperar lista de medicos en caso de que
		// un medico tenga dos especialidades se ignorara la otra
		// por transitividad se aplica a servicios
		// y no todos los centros dan receta
		$lista = $this->datos->medicos_listar($centro_lista);
		

		// mostrar examenes dentro un servicio 
		echo "<table>\n";
		echo "<tr><th>Especialidad</th><th>Mañana 06:30 a 12:30</th><th>Tarde 12:30 a 19:00</th><th>Noche 19:00 a 06:30</th></tr>\n";
		foreach($lista as $servicio => $medicos)
		{
			for($i=0;$i<3;$i++)
				foreach($examen_lista as $indice => $examen)
					$suma[$i][$indice]=0;
				
			foreach($medicos as $indice => $medico)
			{
				
				$grupo[0]=$this->datos->laboratorios_contar($fecha,$medico,'06:30:00','12:30:00');
				$grupo[1]=$this->datos->laboratorios_contar($fecha,$medico,'12:30:00','19:00:00');
				$grupo[2]=$this->datos->laboratorios_contar($fecha,$medico,'19:00:00','06:30:00');

				for($i=0;$i<3;$i++)
					foreach($grupo[$i] as $examen => $cantidad)
						$suma[$i][$examen]+=$cantidad;

			}
			echo "<tr><th>{$servicio_lista[$servicio]} TOTAL</th><td></td><td></td><td></td></tr>\n";
			foreach($examen_lista as $indice => $examen)
			{
				echo "<tr><td>$examen</td>";
				for($i=0;$i<3;$i++)
				{	
					echo "<td>{$suma[$i][$indice]}</td>";
				}	
				echo "</tr>\n";
			}
			echo "<tr><td>&nbsp;</td></tr>\n";
		}
		echo "</table>\n";
	}


	function panel_central()
	{
		$fecha = iniciar('fec',date("Y-m-d"));
	        $this->laboratorio_listar($fecha);
	}
}

if(acceso(0)){
	$pagina=new Pagina($enlace1);
	$pagina->panel_central();
} else enviar('index.php');
?>
