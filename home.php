<!doctype html>
<html lang="es-MX">
	<head>
		<meta charset="UTF-8">
		<meta name="description" content="La Biblioteca Digital del Centro de Bachillerato José Vasconcelos S.C. - PSEDUCA IT - tiene por objetivo reunir información de carácter especializada en materia de educación media superior, con la finalidad de apoyar a través de sus servicios a la comunidad estudiantil, profesores y público en general en el conocimiento, estudio y divulgación de temas referentes a las áreas de Matemáticas, Informática, Historia, Literatura, Biología y Sociales."/>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0"/>
		<title>Bienvenidos a la Biblioteca Digital del Centro de Bachillerato José Vasconcelos SC.</title>
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
					<input type="text" name="txt_email_administrador" class="cambio" id="txt_email_administrador" placeholder="Tu correo / usuario" />
				</div><div>
					<label for="txt_password_administrador">Contraseña</label>
					<input type="password" name="txt_password_administrador" class="cambio" id="txt_password_administrador" placeholder="Tu contraseña" />
				</div><div>
					<input type="submit" name="btn_iniciar_sesion" value="Entrar" id="btn_iniciar_sesion" class="cambio" />
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
			<section id="bienvenidos">
				<h2>Bienvenidos</h2>
				<p>La Biblioteca Digital del Centro de Bachillerato José Vasconcelos SC. tiene por objetivo reunir información de carácter especializada en materia de educación media superior, con la finalidad de apoyar a través de sus servicios a la comunidad estudiantil, profesores y público en general en el conocimiento, estudio y divulgación de temas referentes a las áreas de Matemáticas, Informática, Historia, Literatura, Biología y Sociales.</p>
				<p>Nuestro objetivo consiste en mantener, custodiar y enriquecer desde la Biblioteca Digital el acervo bibliográfico con el que cuenta el Centro de Bachillerato José Vasconcelos SC. mediante la adquisión de material especializado y el intercambio de publicaciones con Organismos Nacionales e Internacionales en materia de educación media superior.</p>
				<p>La Biblioteca Digital apoya a los usuarios a través del acceso ágil y oportuno a las colecciones y servicios disponibles desde la biblioteca central, con el fin de satisfacer las necesidades de información que se derivan de las tareas inherentes al estudio, enseñanza, investigación y difusión sobre educación media superior.</p>
			</section><form id="frm_registro_usuarios" name="frm_registro_usuarios" action="" enctype="application/x-www-form-urlencoded">
				<fieldset>
					<legend>Formulario de Registro</legend>
					<div>
						<label for="txt_nombre_usuario">Nombre</label>
						<input type="text" name="txt_nombre_usuario" id="txt_nombre_usuario" placeholder="Tu nombre completo">
					</div>
					<div>
						<label for="txt_email_usuario">Correo Electrónico</label>
						<input type="email" name="txt_email_usuario" id="txt_email_usuario" placeholder="Tu correo electrónico">
					</div>
					<div>
						<label for="txt_password_usuario">Contraseña</label>
						<input type="password" name="txt_password_usuario" id="txt_password_usuario" placeholder="Tu contraseña">
					</div>
					<input type="submit" value="Registrar Usuario" name="btn_registrar_usuario" id="btn_registrar_usuario" class="cambio">
				</fieldset>
			</form>
			<section id="empresa">
				<article>
					<h2>Misión</h2>
					<figure>
						<img src="assets/img/bd_bibliograficas.jpg" alt="">
						<figcaption>Ofrecer a nuestros usuarios diversas fuentes de información en formato electrónico las cuales pueden servir como complemento a la Bibliografía básica que utilizan en el aula, con la intención de contribuir en el desarrollo de habilidades en el proceso de búsqueda y recuperación.</figcaption>
					</figure>
				</article><article>
					<h2>Visión</h2>
					<figure>
						<img src="assets/img/bibliotecas_al.jpg" alt="">
						<figcaption>Satisfacer las demandas de información de nuestra comunidad académica a través del uso de las nuevas tecnologías de la información y la comunicación.</figcaption>
					</figure>
				</article><article>
					<h2>Filosofía</h2>
					<figure>
						<img src="assets/img/manuales.jpg" alt="">
						<figcaption>Promover la consulta a los medios bibliográficos electrónicos como apoyo a los diferentes programas académicos que se ofertan en nuestra Institución educativa y contribuir en los procesos de generación de nuevos conocimientos de académicos, investigadores y futuros profesionales.</figcaption>
					</figure>
				</article>
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
				<a href="" class="facebook" ><span>Facebook PrepaJV</span></a><a href="" class="feed"><span>Feed PrepaJV</span></a><a href="" class="youtube"><span>Youtube PrepaJV</span></a><a href="" class="twitter"><span>Twitter PrepaJV</span></a>
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