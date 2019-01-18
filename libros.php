<!doctype html>
<html lang="es-MX">
	<head>
		<meta charset="UTF-8"/>
		<meta name="description" content="La Biblioteca Digital - PSEDUCA IT - ofrece a nuestros usuarios diversas fuentes de información en formato electrónico las cuales pueden servir como complemento a la Bibliografía básica que utilizan en el aula, con la intención de contribuir en el desarrollo de habilidades en el proceso de búsqueda y recuperación."/>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0"/>
		<title>Material Bibliográfico Digital - PSEDUCA IT</title>
		<link rel="stylesheet" href="css/general.css"/>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="apple-touch-icon-144x144.png" />
		<link rel="author" type="text/plain" href="humans.txt" />
		<link rel="sitemap" type="application/xml" title="Sitemap" href="sitemap.xml">
	</head>
	<body>
		<div id="sesion-administrador">
			<form name="frm_sesion" id="frm_sesion" method="post" action="" enctype="application/x-www-form-urlencoded">
				<div>
					<label for="txt_email_administrador">Correo / Usuario:</label>
					<input type="text" name="txt_email_administrador" class="cambio" id="txt_email_administrador" placeholder="Tu correo / usuario">
				</div><div>
					<label for="txt_password_administrador">Contraseña</label>
					<input type="password" name="txt_password_administrador" class="cambio" id="txt_password_administrador" placeholder="Tu contraseña">
				</div><div>
					<input type="submit" name="btn_iniciar_sesion" value="Entrar" class="cambio" id="btn_iniciar_sesion">
				</div>
			</form>
		</div>
		<div id="mostrar-sesion-administrador">
			<span class="cambio">Iniciar Sesión</span>	
		</div>
		<img src="assets/img/MiniLogotipoBibliotecaDigital.png" id="logobiblioteca" alt="">
		<nav id="menu">
			<ul>
				<li><a href="home.php" class="cambio">BIENVENIDOS</a></li><li><a href="libros.php" class="cambio">LIBROS</a></li><li class="logo"><a href="index.php" class="cambio"><img src="assets/img/LogotipoInstitucional.png" alt=""></a></li><li><a href="contacto.php" class="cambio">CONTACTO</a></li><li><a href="nosotros.php" class="cambio">NOSOTROS</a></li>
			</ul>
		</nav>
		<div id="slideshow">
			<div id="meteor-slideshow" class="meteor-slides navnone">
				<div class="mslide mslide-1">
					<img src="assets/foto/gal_000.jpg" alt="slideshow" title="slideshow">
				</div>
				<div class="mslide mslide-2">
					<img src="assets/foto/gal_001.jpg" alt="slideshow" title="slideshow">
				</div>
				<div class="mslide mslide-3">
					<img src="assets/foto/gal_002.jpg" alt="slideshow" title="slideshow">
				</div>
				<div class="mslide mslide-4">
					<img src="assets/foto/gal_003.jpg" alt="slideshow" title="slideshow">
				</div>
				<div class="mslide mslide-5">
					<img src="assets/foto/gal_004.jpg" alt="slideshow" title="slideshow">
				</div>
				<div class="mslide mslide-6">
					<img src="assets/foto/gal_005.jpg" alt="slideshow" title="slideshow">
				</div>
				<div class="mslide mslide-7">
					<img src="assets/foto/gal_006.jpg" alt="slideshow" title="slideshow">
				</div>
				<img id="slideshow_dummy" src="assets/foto/slideshow-blank.jpg" alt="" />
			</div>
		</div>
		<div id="contenedor">
			<section id="biblioteca">
				<?php
					include "paginador.php";
				?>					
			</section><section id="buscador_libros">
				<form name="frm_buscador" id="frm_buscador" method="get" action="paginador.php" enctype="application/x-www-form-urlencoded">
					<fieldset>
						<legend>Buscador General</legend>
						<div>
							<label for="txt_titulo_libro">Título del Libro: </label>
							<input type="text" name="txt_titulo_libro" id="txt_titulo_libro" placeholder="Título o categoría del libro">
						</div>
						<input type="submit" value="Buscar Libro" name="btn_buscar_libro" class="cambio" id="btn_buscar_libro">
					</fieldset>
				</form>
				<?php
					include "config/conexion.php";
					$consulta = "SELECT * FROM etiquetas";
					$resultado = $conexion->query($consulta);
					echo "<div id='acordion'>";
					echo "<h2>Disciplinas Disponibles</h2>";
					while($fila = $resultado->fetch_object()){
						echo "<h4 data=\"$fila->id\">".$fila->nombre."</h4>";
						echo "<div class='oculto'>".$fila->descripcion."</div>";
					}
					echo "</div>";
					$resultado->free();
					$conexion->close();
				?>
			</section>
		</div>
		<footer id="pie">
			<section>
				<h3>Sobre nosotros</h3>
				<p>Biblioteca Digital es parte PSEDUCA IT, un entorno virtual que tiene por objetivo ser un punto de encuentro entre alumnos de la comunidad estudiantil y profesores.</p>
				<img src="assets/img/MiniLogotipoPSEDUCA.png" alt="">
			</section><section>
				<h3>Newsletter</h3>
				<p>Registrese y reciba mensualmente de forma gratuita nuestros boletines informativos con las últimas noticias acerca de cursos y diplomados.</p>
				<form name="frm_boletines" id="frm_boletines" action="" method="post" enctype="application/x-www-form-urlencoded">
					<input type="email" name="txt_email_boletin" id="txt_email_boletin" placeholder="Correo Electrónico">
					<input type="submit" name="btn_suscribirse" id="btn_suscribirse" value="Registrar" class="cambio">
				</form>
			</section><section>
				<h3>Estamos en las redes</h3>
				<p>Nos complace comunicar a nuestros alumnos y profesores que a partir de este momento ya nos pueden visitar a través de las redes sociales.</p>
				<a href="" class="facebook"><span>Facebook PrepaJV</span></a>
				<a href="" class="feed"><span>Feed PrepaJV</span></a>
				<a href="" class="youtube"><span>Youtube PrepaJV</span></a>
				<a href="" class="twitter"><span>Twitter PrepaJV</span></a>
			</section>
		</footer>
		<div class="flecha">
			<img src="assets/img/flecha.png" alt="">
		</div>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script>
			(!window.jQuery) && document.write("<script src='js/jquery183.min.js'><\/script>");
		</script>
		<script src="assets/plugins/meteor-slideshow/jquery.cycle.lite.min.js"></script>
		<script src="assets/plugins/meteor-slideshow/jquery.metadata.js"></script>
		<script src="js/general.js"></script>
		<script src="assets/plugins/meteor-slideshow/slideshow.js"></script>
	</body>
</html>