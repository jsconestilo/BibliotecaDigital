-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2013 a las 03:24:37
-- Versión del servidor: 5.6.11
-- Versión de PHP: 5.5.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bibliotecait`
--
CREATE DATABASE IF NOT EXISTS `bibliotecait` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bibliotecait`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE IF NOT EXISTS `archivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `formato` varchar(5) NOT NULL,
  `tamanio` int(11) NOT NULL,
  `url` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `nombre`, `formato`, `tamanio`, `url`) VALUES
(1, 'Beginning CSS3', 'pdf', 31, '01BeginningCSS3.pdf'),
(2, 'CSS3 The Missing Manual, 3rd Edition', 'pdf', 29, '02CSS3MissMan.pdf'),
(3, 'Pro CSS3 Animation', 'pdf', 9, '03ProCSS3Animation.pdf'),
(4, 'The Book of CSS3', 'pdf', 16, '04TheBookOfCSS3.pdf'),
(5, 'Designing Next Generation Web Projects with CSS3', 'pdf', 6, '05DesigNextGenerationCSS3.pdf'),
(6, 'The CSS3 Anthology, 4th Edition', 'pdf', 34, '06TheCSS3Anthology.pdf'),
(7, 'HTML5 and CSS3 Responsive Web Design Cookbook', 'pdf', 6, '07HTML5CSS3Responsive.pdf'),
(8, 'HTML5 Cookbook', 'pdf', 21, '08HTML5Cookbook.pdf'),
(9, 'HTML5 BoilerplateWeb Development', 'pdf', 8, '09HTML5BoilerplateWebDev.pdf'),
(10, 'HTML5 Canvas Cookbook', 'pdf', 20, '10HTML5CanvasCookbook.pdf'),
(11, 'HTML5 and CSS3', 'pdf', 11, '11HTML5andCSS3.pdf'),
(12, 'Plug-In PHP: 100 Power Solutions', 'pdf', 13, '12Plug-InPHP.pdf'),
(13, 'Beginning PHP and MySQL, 4th Edition', 'pdf', 9, '13BeginningPHPandMySQL.pdf'),
(14, 'Pro PHP and jQuery', 'pdf', 12, '14ProPHPandjQuery.pdf'),
(15, 'Beginning PHP 5.3', 'pdf', 9, '15BeginningPHP53.pdf'),
(16, 'PHP Application Development with NetBeans', 'pdf', 10, '16PHPApplicationDevelopmentNetBeans.pdf'),
(17, 'Head First JavaScript', 'pdf', 51, '17HeadFirstJavaScript.pdf'),
(18, 'JavaScript: The Good Parts', 'pdf', 2, '18JavaScriptTheGoodParts.pdf'),
(19, 'Pragmatic Guide to JavaScript', 'pdf', 5, '19PragmaticGuidetoJavaScript.pdf'),
(20, 'JavaScript & jQuery: The Missing Manual', 'pdf', 16, '20JavaScriptjQueryMissingManual.pdf'),
(21, 'jQuery Cookbook', 'pdf', 5, '21jQueryCookbook.pdf'),
(22, 'jQuery Pocket Reference', 'pdf', 3, '22jQueryPocketReference.pdf'),
(23, 'jQuery Recipes', 'pdf', 6, '23jQueryRecipes.pdf'),
(24, 'Learning jQuery, 3rd Edition', 'pdf', 8, '24LearningjQuery3.pdf'),
(25, 'MySQL Pocket Reference, 2nd Edition', 'pdf', 1, '25MySQLPocketReference.pdf'),
(26, 'MySQL Enterprise Solutions', 'pdf', 3, '26MySQLEnterpriseSolutions.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE IF NOT EXISTS `autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id`, `nombre`) VALUES
(1, 'David Powers'),
(2, 'David Sawyer McFarland'),
(3, 'Dudley Storey'),
(4, 'Peter Gasston'),
(5, 'Sandro Paganotti'),
(6, 'Rachel Andrew'),
(7, 'Benjamin LaGrone'),
(8, 'Christopher Schmitt'),
(9, 'Kyle Simpson'),
(10, 'Divya Manian'),
(11, 'Eric Rowell'),
(12, 'Brian P. Hogan'),
(13, 'Robin Nixon'),
(14, 'W. Jason Gilmore'),
(15, 'Jason Lengstorf'),
(16, 'Matt Doyle'),
(17, 'Hossain Tonu'),
(18, 'Michael Morrison'),
(19, 'Douglas Crockford'),
(20, 'Christophe Porteneuve'),
(21, 'David Sawyer McFarland'),
(22, 'Cody Lindley'),
(23, 'David Flanagan'),
(24, 'Bintu Harwani'),
(25, 'Jonathan Chaffer'),
(26, 'Karl Swedberg'),
(27, 'George Reese'),
(28, 'Alexander Pachev');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Diseño Web'),
(2, 'Maquetación Web'),
(3, 'Programación Web Back-End'),
(4, 'Programación Web Front-End'),
(5, 'Base de Datos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE IF NOT EXISTS `editoriales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`id`, `nombre`) VALUES
(1, 'Apress'),
(2, 'O''Reilly Media'),
(3, 'No Starch Press'),
(4, 'Packt Publishing'),
(5, 'SitePoint'),
(6, 'The Pragmatic Programmers'),
(7, 'McGraw-Hill'),
(8, 'Wrox'),
(9, 'Wiley');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas`
--

CREATE TABLE IF NOT EXISTS `etiquetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `etiquetas`
--

INSERT INTO `etiquetas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'CSS', 'Las Hojas de Estilo en Cascada CSS se utiliza para dar estilo a documentos HTML, separando el contenido de la presentación. Los Estilos definen la forma de mostrar los elementos HTML. CSS permite a los desarrolladores Web controlar el estilo y el formato de múltiples páginas Web al mismo tiempo. Cualquier cambio en el estilo marcado para un elemento en la CSS afectará a todas las páginas vinculadas a esa CSS en las que aparezca ese elemento.'),
(2, 'HTML', 'HTML es el lenguaje de marcado que se emplea para el desarrollo de páginas de Web. Este lenguaje está constituido de elementos que el navegador Web interpreta y las despliega en la pantalla de acuerdo a su objetivo. Existen elementos para disponer imágenes sobre una página, hipervínculos que nos permiten dirigirnos a otra página, listas, tablas para tabular datos, etc.'),
(3, 'PHP', 'PHP (Hipertext Preprocesor) es un lenguaje de programación del lado del servidor que se emplea para el desarrollo de scripts mismos que pueden ser embebidos en los documentos HTML con la finalidad de generar sitios Web dinámicos. '),
(4, 'JavaScript', 'JavaScript es un lenguaje de programación que se utiliza principalmente para crear páginas web dinámicas, mismas que incorporan efectos como textos que aparecen y desaparecen, animaciones, acciones que se activan al pulsar botones y ventanas con mensajes de aviso al usuario.'),
(5, 'jQuery', 'jQuery es una biblioteca de JavaScript, creada inicialmente por John Resig, que permite simplificar la manera de interactuar con los documentos HTML (DOM).'),
(6, 'MySQL', 'MySQL es un sistema de gestión de bases de datos relacional, multihilo y multiusuario empleada para el almacenamiento y administración de datos vía Web.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(200) NOT NULL,
  `sinopsis` text NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `publicacion` int(4) NOT NULL,
  `paginas` int(4) NOT NULL,
  `idioma` varchar(15) NOT NULL,
  `portada` varchar(15) NOT NULL,
  `editorial_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `archivo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editorial_id` (`editorial_id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `archivo_id` (`archivo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `subtitulo`, `sinopsis`, `isbn`, `publicacion`, `paginas`, `idioma`, `portada`, `editorial_id`, `categoria_id`, `archivo_id`) VALUES
(1, 'Beginning CSS3', '', 'Beginning CSS3 te enseña como aplicar estilo a las páginas web utilizando Hojas de Estilo en Cascada (CSS) - el lenguaje de diseño de páginas web. A partir de los primeros capítulos, usted aprenderá a través de una serie de ejercicios prácticos cómo cambiar el aspecto predeterminado de las etiquetas HTML, añadiendo color, fondos y bordes. El libro desmitifica conceptos básicos, tales como el modelo de caja de CSS y los selectores, mismos que le dan la confianza y el conocimiento para crear diseños de página innovadoras y flexibles. Usted también aprenderá cómo crear esquinas redondeadas, sombras y gradientes sin necesidad de imágenes, utilizando las últimas técnicas CSS3', '978-1-4302-4473-8', 2012, 568, 'Inglés', 'BeginCSS3.jpg', 1, 1, 1),
(2, 'CSS3 The Missing Manual, 3rd Edition', '', 'CSS3 permite crear sitios web de aspecto profesional, si no se aprende de sus puntos más finos puede ser difícil - incluso para los desarrolladores web experimentados. Este Manual de impresindible muestra cómo tomar habilidades de HTML y CSS a un nivel superior, con valiosos consejos, trucos e instrucciones paso a paso. Usted aprenderá rápidamente cómo construir páginas web que parecen profesionales y se ejecutan rápidamente en dispositivos y pantallas de todos los \r\n\r\ntamaños', '978-1-4493-2594-7', 2012, 656, 'Inglés', 'CSS3MisMan.jpg', 2, 1, 2),
(3, 'Pro CSS3 Animation', '', 'Pro CSS3 Animation le enseñará cómo utilizar la nueva sintaxis de CSS3 para aprovechar al máximo este apasionante herramienta para el diseño web. Utilizando estándares industriales de última generación y el aprovechamiento de las mejores prácticas para la animación, usted aprenderá cómo aplicar animaciones CSS3 para transformar y llevar su contenido de la página a la vida. CSS3 es el camino a seguir para desarrollar páginas web interactivas y animadas, ofreciendo nuevas y emocionantes opciones para el diseño. Integrado con HTML5, SVG y metodologías de diseño de móviles, puede traer a los sitios a la tercera dimensión para cambiar la percepción y apreciación que generan en su audiencia.', '978-1-4302-4722-7', 2012, 188, 'Inglés', 'ProCSS3An.jpg', 1, 1, 3),
(4, 'The Book of CSS3', 'A Developer''s Guide to the Future of Web Design', 'CSS3 es la tecnología detrás de la mayoría de los elementos visuales llamativos en la Web hoy en día, pero la documentación oficial puede difícil de seguir. Por suerte, el libro de CSS3 destila el lenguaje técnico embriagador de la especificación CSS3 en la llanura Inglés, por lo que puede empezar a trabajar en su próximo proyecto de inmediato. Con ejemplos de la vida real y un enfoque en los resultados, el bibro de CSS3 muestra cómo transformar el texto ordinario en impresionantes páginas web ricas en detalles aptas para cualquier navegador. Va a dominar las últimas caracteristicas CSS de vanguardia: como diseños de varias columnas, bordes, efectos de caja, nuevo color y ajustes de opacidad.', '978-1-59327-286-9', 2011, 304, 'Inglés', 'TheBookCSS.jpg', 3, 1, 4),
(5, 'Designing Next Generation Web Projects with CSS3', '', 'Las propiedades y técnicas de CSS3 se han utilizado desde hace mucho tiempo para completar proyectos Web. Este libro explica las herramientas para lidiar con CSS y aumentar en complejidad: como los prefijos experimentales de los proveedores de navegadores Web, estilo rápido y conciso centrado principalmente en los aspectos prácticos, como las técnicas de aplicación y estrategias de repliegue.', '978-1-84969-326-4', 2013, 288, 'Inglés', 'DesigNextG.jpg', 4, 1, 5),
(6, 'The CSS3 Anthology, 4th Edition', 'Take Your Sites to New Heights', 'The CSS3 Anthology: 101 Consejos Esenciales, Trucos y Hacks es una compilación de las mejores soluciones prácticas a los problemas más desafiantes de CSS. La cuarta edición de este libro a todo color ha sido completamente revisado y actualizado para cubrir nuevas técnicas permitidas por CSS3 y HTML5, y las tendencias más recientes en el diseño de páginas web, como diseño de respuesta. Es el libro de preguntas y respuesta más completa sobre CSS disponibles, con más de 100 tutoriales que muestran a los lectores cómo ganar más control sobre la apariencia de sus páginas web, crear controles sofisticados web, páginas de navegación y el diseño de los dispositivos de navegación alternativos, incluidos los teléfonos y los lectores de pantalla.', '978-0-98715-302-9', 2012, 400, 'Inglés', 'TheCSSAnth.jpg', 5, 1, 6),
(7, 'HTML5 and CSS3 Responsive Web Design Cookbook', 'Learn the secrets of developing responsive websites capable of interfacing with today''s mobile Internet devices.', 'Internet ahora es móvil. Las ventas de computadoras de escritorio siguen cayendo a diferencia de los dispositivos móviles. Los métodos de desarrollo Web están cambiando rápidamente para adaptarse a esta nueva tendencia. HTML5 and CSS3 Responsive Web Design Cookbook, para todos los dispositivos inalámbricos de Internet de hoy en día, ofrece a los desarrolladores una nueva caja de herramientas para estar conectado con esta tendencia demográfica. HTML5 y CSS3 Responsive Web Design Cookbook es el recurso del programador para la generación de sitios Web que sin esfuerzo interactúan con los dispositivos móviles modernos. Utilizando sus instrucciones claras se pueden crear aplicaciones que responden a dispositivos móviles dando a su sitio web lo último en diseño y desarrollo.', '978-1-84969-544-2', 2013, 204, 'Inglés', 'HTMCSSRes.jpg', 4, 1, 7),
(8, 'HTML5 Cookbook', 'Solutions & Examples for HTML5 Developers', 'Con decenas de recetas prácticas que puede utilizar en sus proyectos de inmediato, este libro de cocina le ayudará a ganar experiencia práctica con colecciones versátiles de elementos HTML5. Usted recibe soluciones claras para el manejo de problemas, desde la semántica de marcado, formularios web, audio y elementos de vídeo a las tecnologías relacionadas, como la geolocalización y APIs ricas JavaScript .Cada receta informativa incluye código de ejemplo y una explicación detallada de por qué y cómo la solución funciona. Perfecto para estudiantes intermedios y avanzados web, hasta desarrolladores web para móviles, este libro práctico le permite elegir las características de HTML5 que funcionan para usted y experimentar con el resto.', '978-1-4493-9679-4', 2011, 282, 'Inglés', 'HTML5Cook.jpg', 2, 2, 8),
(9, 'HTML5 BoilerplateWeb Development', 'Master HTML5 Boilerplate web development with a robust set of templates to get your web projects done quickly and effectively', 'HTML5 BoilerplateWeb Development - le permitirá construir nuevos proyectos de forma eficaz con el mínimo esfuerzo. HTML5 Boilerplate le permite implementar sitios web de calidad con éxito y rapidez al tiempo que garantiza un rendimiento sólido a través del navegador. Le lleva a través del proceso paso a paso para crear un sitio web y le enseña a sacar el máximo provecho de los diseños html prestados en HTML5 Boilerplate, ya sean estilos, marcado, o el código para que pueda lograr sus metas. Este libro le guiará a través del proceso de construcción de un sitio web del festival de música, como un ejemplo de aplicación utilizando HTML5 Boilerplate. Si quiere instalar, configurar HTML5 Boilerplate y desplegar sitios de producción.', '978-1-84951-850-5', 2012, 174, 'Inglés', 'HTBoilPDev.jpg', 4, 2, 9),
(10, 'HTML5 Canvas Cookbook', 'Over 80 recipes to revolutionize the web experience with HTML5 Canvas', 'HTML5 Canvas Cookbook comienza cubriendo los fundamentos de el API HTML5 para Canvas y luego avanza al proporcionar técnicas avanzadas para el manejo de funciones no admitidas directamente por el API, como la animación y la interactividad. Se termina proporcionando plantillas detalladas para algunas de las aplicaciones HTML5 basadas en canvas para la visualización de datos, desarrollo de juegos, y el modelado 3D. Se le dará a conocer temas de interés tales como los fractales, la animación, la física, modelos de color, y las matemáticas de matriz.', '978-1-84969-136-9', 2011, 348, 'Inglés', 'HTCanCook.jpg', 4, 2, 10),
(11, 'HTML5 and CSS3', 'Develop with Tomorrow''s Standards Today', 'HTML5 and CSS3 son el futuro del desarrollo web, pero usted no tiene que esperar para comenzar a utilizarlas. A pesar de que el pliego de condiciones se encuentra aún en desarrollo, muchos navegadores modernos y dispositivos móviles ya soportan HTML5 y CSS3. Este libro le pone al tanto de los nuevos elementos de HTML5 y CSS3 que puede utilizar ahora mismo, y soluciones compatibles para asegúrese de que usted no deje sin soporte a usuarios de navegadores más antiguos.', '978-1-93435-668-5', 2011, 280, 'Inglés', 'HTMCS3.jpg', 6, 2, 11),
(12, 'Plug-In PHP: 100 Power Solutions', 'Simple Solutions to Practical PHP Problems', 'Esta guía práctica le ofrece 100 funciones PHP listas para ejecutar y resolver la mayoría de los principales problemas que encuentra en la construcción de un sitio web dinámico con PHP. Cada plug-in en el libro ofrece una solución completa y trabajando para un resultado que puede lograr de inmediato, utilizando el código ya hecho simplemente coloquelo en su propio programa. Empleando poca o ninguna curva de aprendizaje, ya que cada uno de los ejemplos es autónomo y completamente documentado.', '978-0-07166-659-6', 2012, 384, 'Inglés', 'Plug-InPHP.jpg', 7, 3, 12),
(13, 'Beginning PHP and MySQL, 4th Edition', 'From Novice to Professional', 'Beginning PHP and MySQL: From Novice to Professional, la cuarta edición es una actualización importante del libro autorizado de Jason W. Gilmore en PHP y MySQL. La cuarta edición incluye una cobertura completa de las características de PHP 5.3, incluyendo los espacios de nombre, una actualización de la instalación AMP pila y configuración, actualizaciones de Zend Framework, la cobertura de MySQLWorkbench, y mucho más.\r\n\r\nUsted no sólo recibe extensas introducciones a las principales características de PHP, MySQL, y las herramientas relacionadas, usted también aprenderá cómo integrar de manera efectiva con el fin de construir aplicaciones basadas en datos sólidos. Gilmore tiene siete años de experiencia trabajando con estas tecnologías, y se ha incluido en este libro los ejemplos prácticos para comprender los desafíos del mundo real que enfrentan los desarrolladores. En consecuencia, se le pide repetidamente regresar a este libro como una herramienta de enseñanza valiosa y guía de referencia.', '978-1-4302-3114-1', 2010, 824, 'Inglés', 'BePHPMySQL.jpg', 1, 3, 13),
(14, 'Pro PHP and jQuery', '', 'Este libro está dirigido a programadores intermedios interesados ??en la construcción de aplicaciones web usando jQuery Ajax y PHP. Junto con la enseñanza de algunas técnicas avanzadas de PHP, se le enseñará cómo llevar sus aplicaciones dinámicas a un nivel superior mediante la adición de una capa de JavaScript con jQuery', '978-1-4302-2847-9', 2010, 400, 'Inglés', 'ProPHPjQ.jpg', 1, 3, 14),
(15, 'Beginning PHP 5.3', '', 'Como uno de los idiomas más populares de programación web de código abierto en uso hoy en día, PHP es un lenguaje de script del lado del servidor ideal que conecta las páginas web basadas en HTML a una base de datos de back-end para el contenido dinámico. Esto le permite crear cualquier cosa, desde un simple script de formulario por correo electrónico a un foro de aplicación web, una plataforma de blogs, o un sistema de gestión de contenidos. Esta guía presenta el lenguaje PHP y muestra cómo escribir potentes aplicaciones web usando PHP.', '978-1-4571-0612-5', 2011, 840, 'Inglés', 'BegPHP53.jpg', 8, 3, 15),
(16, 'PHP Application Development with NetBeans', 'Beginner''s Guide', 'Con instrucciones claras paso a paso y con un montón de ejemplos prácticos. Usted desarrollarará aplicaciones PHP de vanguardia como nunca antes con la ayuda de este IDE popular, a través de técnicas rápidas y sencillas. Experiente interesantes funciones de desarrollo de aplicaciones PHP con proyectos de Web de la vida real.', '978-1-8495-1580-1', 2012, 302, 'Inglés', 'PHPApNBea.jpg', 4, 3, 16),
(17, 'Head First JavaScript', 'A Learner''s Companion to JavaScript', '¿Quieres hacer el salto de escribir páginas web con HTML y CSS,  y crear aplicaciones web dinámicas? ¿Quieres llevar tus habilidades web al siguiente nivel?. Parece que usted está listo para aprender otro lenguaje de programación para la web: JavaScript. Head First JavaScript es su boleto para ir más allá de copiar y pegar el código del sitio web de alguien más, y escribir sus propias páginas web interactivas.', '978-0-596-52774-7', 2007, 656, 'Inglés', 'HeadFJavaSc.jpg', 2, 4, 17),
(18, 'JavaScript: The Good Parts', 'Unearthing the Excellence in JavaScript', 'La mayoría de los lenguajes de programación contienen partes buenas y malas, pero JavaScript tiene más que su parte de la mala, después de haber sido desarrollado y presentado a toda prisa antes de que pudiera ser refinado. Este libro autorizado raspa estos malos elementos para mostrar un subconjunto de JavaScript que es más fiable y fácil de leer, y fácil de mantener como un subconjunto que puede utilizar para crear un código verdaderamente extensible y eficiente.', '978-0-596-51774-8', 2008, 172, 'Inglés', 'JSGoodParts.jpg', 2, 4, 18),
(19, 'Pragmatic Guide to JavaScript', '', 'JavaScript está por todas partes. Es un componente clave de la Web de hoy en día, un poderoso lenguaje, dinámico, con un rico ecosistema de herramientas de desarrollo de nivel profesional, infraestructuras, marcos y cajas de herramientas. Este libro te llevará al día rápidamente y sin dolor de cabeza con las 35 tareas JavaScript que usted necesita saber.', '978-1-93435-667-8', 2010, 150, 'Inglés', 'PGuideJS.jpg', 6, 4, 19),
(20, 'JavaScript & jQuery: The Missing Manual', '', 'JavaScript permite impulsar el potencial de su HTML con la animación, interactividad y efectos visuales, pero muchos diseñadores web lo encuentran como el idioma difícil de aprender. Esta guía sin jerga abarca conceptos básicos de JavaScript y te muestra cómo ahorrar tiempo y esfuerzo con la biblioteca jQuery. Usted pronto estará construyendo páginas web que se sienten y actúan como programas de escritorio, sin tener que hacer mucho de programación.', '978-1-4493-9902-3', 2011, 536, 'Inglés', 'JSjQMisMa.jpg', 2, 4, 20),
(21, 'jQuery Cookbook', 'Solutions & Examples for jQuery Developers', 'La introducción a la biblioteca jQuery es fácil, pero puede tomar años para realizar completamente su estudio y profundidad; jQuery Cookbook acorta la curva de aprendizaje considerablemente. Vas a aprender los patrones y prácticas de 19 principales desarrolladores que utilizan jQuery para todo, desde la integración de componentes simples en sitios web, hasta aplicaciones complejas para el desarrollo de interfaces de usuario de alto rendimiento. Las recetas comienzan con lo básico y luego se trasladan a los casos prácticos con soluciones probadas a obstáculos de desarrollo web comunes.', '978-0-596-15977-1', 2009, 478, 'Inglés', 'jQCookbook.jpg', 2, 4, 21),
(22, 'jQuery Pocket Reference', 'Read Less, Learn More', 'jQuery "escribir menos, hacer más" es la biblioteca JavaScript por excelencia. Sus potentes funciones y facilidad de uso han hecho que sea el marco de JavaScript en el cliente más popular para la Web. Este libro es fiel compañero de jQuery: el "leer menos, aprender más" guía definitiva del library. jQuery Pocket Reference explica todo lo que necesita saber acerca de jQuery, por completo y de forma global.', '978-1-4493-9722-7', 2010, 160, 'Inglés', 'jQPockRef.jpg', 2, 4, 22),
(23, 'jQuery Recipes', 'A Problem-Solution Approach', 'jQuery es uno de los marcos de desarrollo de aplicaciones web con JavaScript más populares de hoy en día. jQuery Recipes pueden ayudarle a empezar con jQuery de forma rápida y sencilla, y servirá como una valiosa referencia a largo plazo. El libro comienza con pequeños problemas iniciales que normalmente los desarrolladores se enfrentan al trabajar con jQuery, y va poco a poco profundizando para explorar problemas más complejos. Las soluciones incluyen ilustraciones y explicaciones claras y concisas sobre el código. El uso de este libro y jQuery, haran de sus sitios web una experiencia más dinámica y viva.', '978-1-4302-2709-0', 2010, 456, 'Inglés', 'jQRecipes.jpg', 1, 4, 23),
(24, 'Learning jQuery, 3rd Edition', '', 'Una introducción a jQuery que requiere experiencia en programación mínima. Soluciones detalladas a los problemas del cliente específicos.', '978-1-8495-1654-9', 2011, 428, 'Inglés', 'LearningjQ.jpg', 4, 4, 24),
(25, 'MySQL Pocket Reference, 2nd Edition', 'SQL Functions and Utilities', 'Esta referencia práctica de bolsillo le da recordatorios instantáneos sobre el uso de funciones de MySQL importantes, sobre todo en relación con las partes clave de la infraestructura de código abierto LAMP. MySQL es tan rico en características que ningún administrador o programador pueden permanecer familiarizados con todos ellos. MySQL Pocket Reference es el amigo ideal para el puesto de trabajo que usted necesita.', '978-0-596-51426-6', 2007, 132, 'Inglés', 'MySQLPoRe.jpg', 2, 5, 25),
(26, 'MySQL Enterprise Solutions', '', 'Con más de tres millones de usuarios, MySQL es el servidor de base de datos de código abierto más popular del mundo, proporcionando una alternativa extremadamente rápida, confiable y de bajo costo para sistemas de gestión de bases de datos comerciales. Ofrece a los usuarios corporativos una guía completa para la creación de aplicaciones de bases de datos de nivel empresarial. Con este libro cubrirá los pros y los contras de la adopción de MySQL, su instalación, las pruebas y la configuración del servidor MySQL.', '978-0-471-26922-9', 2003, 416, 'Inglés', 'MySQLEnS.jpg', 9, 5, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_autores`
--

CREATE TABLE IF NOT EXISTS `libros_autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libro_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `libro_id` (`libro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `libros_autores`
--

INSERT INTO `libros_autores` (`id`, `libro_id`, `autor_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 8, 9),
(10, 9, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 18),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21),
(22, 21, 22),
(23, 22, 23),
(24, 23, 24),
(25, 24, 25),
(26, 24, 26),
(27, 25, 27),
(28, 26, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_etiquetas`
--

CREATE TABLE IF NOT EXISTS `libros_etiquetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libro_id` int(11) NOT NULL,
  `etiqueta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `libro_id` (`libro_id`),
  KEY `etiqueta_id` (`etiqueta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `libros_etiquetas`
--

INSERT INTO `libros_etiquetas` (`id`, `libro_id`, `etiqueta_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 3),
(13, 14, 3),
(14, 15, 3),
(15, 16, 3),
(16, 13, 3),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 6),
(26, 26, 6);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `fk_archivo` FOREIGN KEY (`archivo_id`) REFERENCES `archivos` (`id`),
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `fk_editorial` FOREIGN KEY (`editorial_id`) REFERENCES `editoriales` (`id`);

--
-- Filtros para la tabla `libros_autores`
--
ALTER TABLE `libros_autores`
  ADD CONSTRAINT `fk_libro_autor_autor` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`),
  ADD CONSTRAINT `fk_libro_autor_libro` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`id`);

--
-- Filtros para la tabla `libros_etiquetas`
--
ALTER TABLE `libros_etiquetas`
  ADD CONSTRAINT `fk_libro_etiqueta_etiqueta` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiquetas` (`id`),
  ADD CONSTRAINT `fk_libro_etiqueta_libro` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
