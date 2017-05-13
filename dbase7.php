<?php
session_start();  


class Constante{
	
	var $meses       = array(1=>'Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');
	var $depto       = array(1=>'Beni','Chuquisaca','Cochabamba','La Paz','Oruro','Pando','Potosí','Santa Cruz','Tarija');
	var $dias        = array(0=>'Domingo','Lunes','Martes','Miércoles','Jueves','Viernes','Sábado');
	var $tiempo      = array(1=>'Días',2=>'Horas');
	var $ubicaciones = array(1=>'GENERAL ACHA','POLICLINICO CENTRAL','HOSPITAL SETON','POLICONSULTORIO SUR','EL POTRERO');
	var $momentos    = array(16=>'Solicitado','Ajustado','Asignado','Comprometido','Devengado','Pagado');
        var $momentos2   = array(16=>'PRESUPUESTO SOLICITADO','ANTEPROYECTO','PRESUPUESTO APROBADO','PRESUPUESTO COMPROMETIDO','PRESUPUESTO DEVENGADO','PRESUPUESTO EJECUTADO');
	var $siguientes  = array(16=>17,19,19,20,21,21);
	var $anos        = array(2015=>2015,2016=>2016,2017=>2017);
	var $tipos       = array(1=>'Ingresos',2=>'Gastos');
	var $partidas    = array(1=>'Rubro',2=>'Partida');
	var $unidades    = array(1=>'Unidad',2=>'Servicio');
	var $unidades2   = array(1=>'UNIDAD',2=>'SERVICIO');
	var $programas   = array(1=>array(1=>'330000000'),array(1=>'000000001','720000001','970000022','980000001','990000001','110000000'));
	var $programa2   = array(1=>array(1=>'330000000'),array(1=>'ADMINISTRACION','CONSULTA EXTERNA Y HOSPITALIZACION','970000022','980000001','990000001','110000000'));
	
	function Constante($enlace){
		$this->datos    = new Datos($enlace);
		$this->programa = recuperar('pro_',1);
		$this->tipo     = recuperar('tip_',2);
		$this->gestion  = recuperar('ges_',date('Y'));
		$this->momento  = recuperar('mom_',18);
		$this->unidad   = recuperar('uni_',0);
	
		$this->lugar    = recuperar('lug_',0); // ubicacion de la unidad
		$this->ubica    = recuperar('ubi_',0); // array(1=>'GENERAL ACHA','POLICLINICO CENTRAL','HOSPITAL SETON','POLICONSULTORIO SUR','EL POTRERO');
		$this->partida  = recuperar('par_',0); // nomenclatura externa de partida
		$this->codigo   = recuperar('cod_',0); // codigo interno de partida
	}
	
}

function acceso($nivel){ if(isset($_SESSION['usuario']))if($_SESSION['usuario']['id']==6)return ($_SESSION['usuario']['nivel'] & $nivel)==$_SESSION['usuario']['nivel'];return $nivel==0;}

function enviar($lugar){header("Location: $lugar");echo "<script>location.href=\"$lugar\"</script>";}

function mensaje($cadena){echo "<script>alert(\"$cadena\");</script>";}

function iniciar($nombre,$defecto){if(isset($_GET[$nombre]))return $_GET[$nombre];elseif(isset($_POST[$nombre]))return $_POST[$nombre];elseif(isset($_COOKIE[$nombre]))return $_COOKIE[$nombre];else return $defecto;}

function iniciar2($nombre,$defecto){return addslashes(iniciar($nombre,$defecto));}

function recuperar($nombre,$defecto){if(isset($_GET[$nombre]))$_SESSION[$nombre]=$_GET[$nombre];elseif(isset($_POST[$nombre]))$_SESSION[$nombre]=$_POST[$nombre];elseif(!isset($_SESSION[$nombre]))$_SESSION[$nombre]=$defecto;return $_SESSION[$nombre];}

// funcion combinatoria para la funcion 'busqueda'
function combina2($lista,$parte){
	$primero=array_shift($lista);
	$matriz=array();
	for($i=count($parte);$i>=0;$i--){
		$temporal=$parte;
		array_splice($temporal,$i,0,array($primero));
		if(count($lista)) $matriz=array_merge($matriz,combina2($lista,$temporal));
		else $matriz=array_merge($matriz,array($temporal));
	}
	return $matriz;
}


function busqueda($cadena,$campo){
	$cadena=preg_replace('/\s+/',' ',$cadena);
	if($cadena=trim($cadena)){
		$consulta1='';
		$matriz=combina2(explode(' ',$cadena),array());
		foreach($matriz as $indice => $valor){
			$consulta1.=" or $campo like '".implode('% ',$valor)."%' or $campo like '% ".implode('% ',$valor)."%'";
		}
		return '('.substr($consulta1,4).')';
	} else return false;
}



function lista_opciones($lista,$seleccion){
	$escogido=count($lista)?key($lista):$escogido=0;
	foreach($lista as $indice => $valor)
		if($seleccion==$indice){$escogido=$indice;echo "<option value=\"$indice\" selected>$valor</option>\n";}
		else echo "<option value=\"$indice\">$valor</option>\n";
	return $escogido;
}

/*
function lista_opciones2($lista,$seleccion){
	$escogido=count($lista)?key($lista):$escogido=0;
	foreach($lista as $indice => $valor)
		if(($seleccion & $indice) == $indice){$escogido=$indice;echo "<option value=\"$indice\" selected>$valor</option>\n";}
		else echo "<option value=\"$indice\">$valor</option>\n";
	return $escogido;
}

function lista_opciones3($lista,$mascara,$seleccion){
	$escogido=-1;
	foreach($lista as $indice => $valor)
		if(($mascara & $indice) == $indice){
			if($escogido<0)$escogido=$indice;
			{if($seleccion==$indice){$escogido=$indice;echo "<option value=\"$indice\" selected>$valor</option>\n";}
			else echo "<option value=\"$indice\">$valor</option>\n";}
	}
	return $escogido;
}

function filtro($lista,$mascara){
	$filtrado=array();
	foreach($lista as $indice => $valor) if(($mascara & $indice) == $indice) $filtrado[$indice]=$valor;
	return $filtrado;
}
*/

function partida_limite($partida){
	$numero=rtrim($partida,'0');
	return ($numero+1).str_repeat('0',strlen($partida)-strlen($numero));
}

function partida_completar($partida){
	return intval(str_pad(trim($partida,' 0'),5,'0'));
}

function formato_num($cad,$dec,$max) {$num=number_format($cad,$max,',','.');return substr($num,0,$dec-$max).rtrim(substr($num,$dec-$max),',0');}
function      formato_dec($cadena) {return floatval(str_replace(',','.',str_replace('.','',$cadena)));}
function      fecha_mysql($cadena) {if($cadena){sscanf($cadena,"%d-%d-%d",$a,$m,$d);return sprintf("%02d/%02d/%04d",$d,$m,$a);} else return '';}
function      mysql_fecha($cadena) {if(empty($cadena))return 'null';sscanf($cadena,"%d/%d/%d",$d,$m,$a);return sprintf("'%04d-%02d-%02d'",$a,$m,$d);}
function       mysql_hora($cadena) {if(empty($cadena))return 'null';sscanf($cadena,"%d:%d:%d",$h,$m,$s);return sprintf("'%02d:%02d:%02d'",$h,$m,$s);}
function  fecha_php_mysql($cadena) {if(is_null($cadena))return 0;sscanf($cadena,"%d-%d-%d",$a,$m,$d);return mktime(0,0,0,$m,$d,$a,0);}
function   hora_php_mysql($cadena) {if(is_null($cadena))return 0;sscanf($cadena,"%d:%d:%d",$h,$m,$s);return mktime($h,$m,$s,0,0,0);}
function tiempo_php_mysql($cadena) {if(is_null($cadena))return 0;sscanf($cadena,"%d-%d-%d %d:%d:%d",$a,$m1,$d,$h,$m2,$s);return mktime($h,$m2,$s,$m1,$d,$a,0);}


class Tabla{
	var $enlace;
	var $grupo  = array(1,2,3,5,0,7,0,9);	

	function Tabla($enlace){$this->enlace =$enlace;}
	function consulta ($cadena)  {return mysqli_query($this->enlace,$cadena);}
	function primero  ($cadena)  {if( $puntero=mysqli_query($this->enlace,$cadena)) return mysqli_fetch_array($puntero); else return false;}
	function existe   ($cadena)  {if(($puntero=mysqli_query($this->enlace,$cadena)) && mysqli_num_rows($puntero)) return true; else return false;}
	function valor    ($cadena)  {if(($puntero=mysqli_query($this->enlace,$cadena)) && ($fila=mysqli_fetch_row($puntero))) return $fila[0]; else return false;}
	function indice   ($cadena)  {if( $puntero=mysqli_query($this->enlace,$cadena)) return $this->ultimo(); else return false;}
	function lista    ($cadena)  {$a=array();if($puntero = mysqli_query($this->enlace,$cadena)){while($fila=mysqli_fetch_row($puntero))$a[$fila[0]]=$fila[1];return $a;}else return false;}
	function matriz   ($cadena)  {$a=array();if($puntero = mysqli_query($this->enlace,$cadena)){while($fila=mysqli_fetch_row($puntero))$a[$fila[0]][]=$fila[1];return $a;}else return false;}
	function contar   ()         {return mysqli_affected_rows($this->enlace);}
	function ultimo   ()	     {$puntero = mysqli_query($this->enlace,"select last_insert_id()");if($fila=mysqli_fetch_row($puntero)) return $fila[0];else return false;}
	function error    ()         {return mysqli_error($this->enlace);}
	
	function consulta2 ($cadena)  {echo "<p>$cadena</p>\n";return $this->consulta($cadena);}	
	function primero2  ($cadena)  {echo "<p>$cadena</p>\n";return $this->primero($cadena);}
	function indice2   ($cadena)  {echo "<p>$cadena</p>\n";return $this->indice($cadena);}
	function valor2    ($cadena)  {echo "<p>$cadena</p>\n";return $this->valor($cadena);}
	function lista2    ($cadena)  {echo "<p>$cadena</p>\n";return $this->lista($cadena);}
	function matriz2   ($cadena)  {echo "<p>$cadena</p>\n";return $this->matriz($cadena);}
	
}

$enlace1 = @new mysqli('w.x.y.z','usuario','clave','almacen');
?>
