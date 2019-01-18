<?php
	header('Content-Type: text/html; charset=utf-8');
	include "config/conexion.php";

	if(isset($_GET["disciplina_a_mostrar"])){
		$etiqueta = $_GET["disciplina_a_mostrar"];
		$consulta = "SELECT libros.titulo, etiquetas.nombre FROM libros INNER JOIN libros_etiquetas ON libros.id = libros_etiquetas.libro_id INNER JOIN etiquetas ON libros_etiquetas.etiqueta_id = etiquetas.id WHERE libros_etiquetas.etiqueta_id = $etiqueta ORDER BY titulo";
	}else if(isset($_GET["titulo_a_mostrar"])){
		$titulo = $_GET["titulo_a_mostrar"];
		$consulta = "SELECT * FROM libros WHERE titulo LIKE '%$titulo%' ORDER BY titulo";
	}else{
		$consulta = "SELECT * FROM libros ORDER BY titulo";
	}

	$resultado = $conexion->query($consulta);

	$total_registros = $resultado->num_rows;
	
	if($total_registros > 0){
		$registros_por_pagina = 3;
		$pagina_actual = 1;
		if(isset($_GET["pagina_a_mostrar"])){
			sleep(1);
			$pagina_actual = $_GET["pagina_a_mostrar"];
		}
		$desplazamiento = ($pagina_actual - 1) * $registros_por_pagina;
		$total_paginas = ceil($total_registros / $registros_por_pagina);
		
		if(isset($_GET["disciplina_a_mostrar"])){
			$etiqueta = $_GET["disciplina_a_mostrar"];
			$consulta = "SELECT libros.id as id, libros.titulo as titulo, libros.sinopsis as sinopsis, libros.portada as portada, etiquetas.nombre FROM libros INNER JOIN libros_etiquetas ON libros.id = libros_etiquetas.libro_id INNER JOIN etiquetas ON libros_etiquetas.etiqueta_id = etiquetas.id WHERE libros_etiquetas.etiqueta_id = $etiqueta ORDER BY titulo LIMIT $desplazamiento, $registros_por_pagina";
		}else if(isset($_GET["titulo_a_mostrar"])){
			$titulo = $_GET["titulo_a_mostrar"];
			$consulta = "SELECT * FROM libros WHERE titulo LIKE '%$titulo%' ORDER BY titulo LIMIT $desplazamiento, $registros_por_pagina";
		}else{
			$consulta = "SELECT * FROM libros ORDER BY titulo LIMIT $desplazamiento, $registros_por_pagina";
		}
		
		$resultado = $conexion->query($consulta);
		echo "<h2>Biblioteca Digital</h2>";
		echo "<table id=\"libros\">";
		while($fila = $resultado->fetch_object()){
			echo "<tr>";
			echo "<td>"."<img width='150' src=\"assets/img/portadas/$fila->portada\" />"."</td>";
			echo "<td><h3><a href=\"libros/show.php?id=$fila->id\" class=\"tip_trigger cambio\">".$fila->titulo."<span class=\"tip\"><img src='assets/img/LogotipoInstitucional.png' style='float:left; margin-right:20px;'/>Usted deberá hacer clic en este enlace para ver la descripción completa de esta obra y proceder a descargarla.</span></a></h3><p>".substr($fila->sinopsis, 0,400)."...</p></td>";
			echo "</tr>";
		}
		echo "</table>";
		if($total_paginas > 1){
			echo "<div class='paginador'>";
			echo "<ul>";
			if($pagina_actual != 1){
				echo "<li><a class=\"habilitar cambio\" data=\"".($pagina_actual - 1)."\">Anterior</a></li>";
			}
			for($i=1; $i<=$total_paginas; $i++){
				if($pagina_actual == $i){
					echo "<li><a class=\"deshabilitar cambio\">$i</a></li>";
				}else{
					echo "<li><a class=\"habilitar cambio\" data=\"".$i."\">$i</a></li>";
				}
			}
			if($pagina_actual != $total_paginas){
				echo "<li><a class=\"habilitar cambio\" data=\"".($pagina_actual + 1)."\">Siguiente</a></li>";
			}
			echo "</ul>";
			echo "</div>";
		}
	}
	$resultado->free();
	$conexion->close();
?>