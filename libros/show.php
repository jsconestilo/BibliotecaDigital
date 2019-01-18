<?php
	header('Content-Type: text/html; charset=utf-8');
	include "../config/conexion.php";
	
	$libroID = $_GET["id"];
	$consulta = "SELECT libros.titulo as titulo, libros.subtitulo as subtitulo, libros.sinopsis as sinopsis, libros.isbn as isbn, libros.publicacion as publicacion, libros.paginas as paginas, libros.idioma as idioma, libros.portada as portada, editoriales.nombre as editorial, categorias.nombre as categoria, archivos.nombre as archivo, archivos.formato as formato, archivos.tamanio as peso, archivos.url as url FROM libros INNER JOIN editoriales ON libros.editorial_id = editoriales.id INNER JOIN categorias ON libros.categoria_id = categorias.id INNER JOIN archivos ON libros.archivo_id = archivos.id where libros.id = $libroID";
	$resultado = $conexion->query($consulta);
	sleep(1);
	while($fila = $resultado->fetch_object()){
		echo json_encode($fila);
	}
	
	$resultado->free();
	$conexion->close();
?>