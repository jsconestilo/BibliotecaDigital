var meteorslidessettings = {
	meteorslideshowspeed: "1000",
	meteorslideshowduration: "2000",
	meteorslideshowheight: "335",
	meteorslideshowwidth: "940",
	meteorslideshowtransition: "fade"
};

jQuery(document).on("ready", function(){
	
	/*** Plugin TolTip CSS3 ***/
	jQuery("#contenedor").delegate("#libros td a.tip_trigger", "mouseover mouseout", function(event){
		tip = jQuery(this).find('.tip');
		if(event.type == "mouseover"){
			tip.show(); 
		}else if(event.type == "mouseout"){
			tip.hide();	  
		}
	});

	jQuery("#contenedor").delegate("#libros td a.tip_trigger", "mousemove", function(e){
		var mousex = e.pageX + 20; //Get X coodrinates
		var mousey = e.pageY + 20; //Get Y coordinates
		var tipWidth = tip.width(); //Find width of tooltip
		var tipHeight = tip.height(); //Find height of tooltip
		//Distance of element from the right edge of viewport
		var tipVisX = jQuery(window).width() - (mousex + tipWidth);
		//Distance of element from the bottom of viewport
		var tipVisY = jQuery(window).height() - (mousey + tipHeight);
		if ( tipVisX < 20 ) { //If tooltip exceeds the X coordinate of viewport
			mousex = e.pageX - tipWidth - 20;
		} if ( tipVisY < 20 ) { //If tooltip exceeds the Y coordinate of viewport
			mousey = e.pageY - tipHeight - 20;
		} 
		tip.css({  top: mousey, left: mousex });
	});

	jQuery("#contenedor").delegate("figure .desc_ficha a.tip_trigger", "mouseover mouseout", function(event){	//Para páginas creadas dinámicamente por JavaScript y que implementan el Plugin Toltip CSS3 
		tip = jQuery(this).find('.tip');
		if(event.type == "mouseover"){
			tip.show(); 
		}else if(event.type == "mouseout"){
			tip.hide(); 	  
		}
	});

	jQuery("#contenedor").delegate("figure .desc_ficha a.tip_trigger", "mousemove", function(e){
		var mousex = e.pageX + 20; //Get X coodrinates
		var mousey = e.pageY + 20; //Get Y coordinates
		var tipWidth = tip.width(); //Find width of tooltip
		var tipHeight = tip.height(); //Find height of tooltip
		//Distance of element from the right edge of viewport
		var tipVisX = jQuery(window).width() - (mousex + tipWidth);
		//Distance of element from the bottom of viewport
		var tipVisY = jQuery(window).height() - (mousey + tipHeight); 
		if ( tipVisX < 20 ) { //If tooltip exceeds the X coordinate of viewport
			mousex = e.pageX - tipWidth - 20;
		} if ( tipVisY < 20 ) { //If tooltip exceeds the Y coordinate of viewport
			mousey = e.pageY - tipHeight - 20;
		} 
		tip.css({  top: mousey, left: mousex });
	});	
	/*** Termina Plugin Toltip CSS3 ***/

	/*** Formulario de Inicio de Session Administradores ***/
	jQuery("#mostrar-sesion-administrador span").on("click", function(){
		jQuery("#sesion-administrador").slideToggle("slow");
	});	
	/*** Termina Formulario de Inicio de Session Administradores ***/

	/*** Funcionalidad Scroll Parallax ***/
	jQuery(window).on("scroll",detectarScroll);

	jQuery("div.flecha").on("click",function(){
		jQuery("body, html").animate({scrollTop:0},1000);
	});
	/*** Termina funcionalidad Scroll Parallax ***/

	/*** Funcionalidad AJAX para consulta de Libros mediante PAGINADOR ***/
	jQuery("#contenedor").delegate(".paginador a.habilitar", "click", function(){
		jQuery("#biblioteca").html("<div><img src='assets/img/load.gif'></div>");
		var pagina_mostrar = jQuery(this).attr("data");
		if(jQuery("#acordion div").hasClass("disciplina-mostrada")){
			var etiqueta_mostrar = jQuery("#acordion .disciplina-mostrada").prev().attr("data");
			var queryString = "pagina_a_mostrar="+pagina_mostrar+"&disciplina_a_mostrar="+etiqueta_mostrar;
		}else if(jQuery("#txt_titulo_libro").data("titulo_buscado") == "activado"){
			var titulo_mostrar = jQuery("#txt_titulo_libro").val();
			var queryString = "pagina_a_mostrar="+pagina_mostrar+"&titulo_a_mostrar="+titulo_mostrar;
		}else{
			var queryString = "pagina_a_mostrar="+pagina_mostrar;
		}
		jQuery.ajax({
			type: "GET",
			url: "paginador.php",
			data: queryString,
			success: function(data){
				jQuery("#biblioteca").fadeIn(1000).html(data);
			},
			statusCode: {
    			404: function() {
      				alert( "Página no encontrada");
    			}
  			}
		});
	});
	/*** Termina funcionalidad AJAX para consulta de Libros mediante PAGINADOR ***/

	/*** Funcionalidad Buscador de Libros ***/
	jQuery("#frm_buscador").submit(function(event){
		event.preventDefault();
		jQuery(this).find("#txt_titulo_libro").data("titulo_buscado","activado");
		console.log(jQuery("#txt_titulo_libro").data("titulo_buscado"));
		var titulo_mostrar = jQuery(this).find("#txt_titulo_libro").val();
		jQuery("#acordion").find(".disciplina-mostrada").removeClass("disciplina-mostrada").slideToggle("slow")
						   .prev().on("click", efectoDisciplina).css({
						   		borderRadius:".2em",
								backgroundColor:"#FFBC33",
								color:"#222"
							});
		paginacionPorBuscador(titulo_mostrar);
	});
	/*** Termina funcionalidad Buscador de Libros ***/

	/*** Funcionalidad Efecto Acordión Disciplinas disponibles ***/
	jQuery("#acordion h4").on("click", efectoDisciplina);
	/*** Termina funcionalidad Efecto Acordión Disciplinas disponibles ***/

	/*** Funcionaliadad Caracteristicas Libro Seleccionado ***/
	jQuery("#contenedor").delegate("#libros a", "click", caracteristicasLibro);
	/*** Termina funcionaliadad Caracteristicas Libro Seleccionado ***/

	/*** Funcionalidad más información sección de Localización ***/
	jQuery("#masinfoloc").on("click", function(){
		jQuery(this).next().slideDown("slow", function(){
			jQuery(this).prev().text("Información de contacto");
		});
	});
	/*** Termina funcionalidad más información sección de Localización ***/

	/*** Funcionalidad efecto hover pestaña descripción colaboradores ***/
	jQuery("#colaboradores a img").hover(function(){
		jQuery(this).next().animate({
			bottom: 0
		},"slow");
	},function(){
		jQuery(this).next().animate({
			bottom: "-7em"
		},"slow");
	});
	/*** Termina funcionalidad efecto hover pestaña descripción colaboradores ***/

	/*** Fix para diseño responsivo referente a la sección de descripción del libro ***/
	jQuery(window).resize(function(){
		if(jQuery(this).width() > 320){
			jQuery("#biblioteca figure img, #biblioteca figure figcaption").css({
				"display": "inline-block",
				"vertical-align": "top"
			});
		}
	});
	/*** Termina Fix para diseño responsivo referente a la sección de descripción del libro ***/

}); //Fin función jQuery

function detectarScroll(){
	return (jQuery(window).scrollTop()>200)?jQuery("div.flecha").fadeIn():jQuery("div.flecha").fadeOut();
}

function efectoDisciplina(){
	var $disciplinaSeleccionada = jQuery(this);
	$disciplinaSeleccionada.css({
		borderRadius:".2em .2em 0 0",
		backgroundColor:"#f60",
		color:"#fff"
	});
	jQuery(this).parent().find(".disciplina-mostrada").removeClass("disciplina-mostrada").slideToggle("slow")
				.prev().on("click",efectoDisciplina).css({
					borderRadius:".2em",
					backgroundColor:"#FFBC33",
					color:"#222"
				});
	jQuery(this).next().addClass("disciplina-mostrada").slideToggle("slow").end().off("click");
	paginacionPorDisciplina($disciplinaSeleccionada);
}

function paginacionPorDisciplina($miObjeto){
	jQuery("#biblioteca").html("<div><img src='assets/img/load.gif'></div>");
	var etiqueta_mostrar = $miObjeto.attr("data");
	var queryString = "pagina_a_mostrar=1&disciplina_a_mostrar="+etiqueta_mostrar;
	jQuery.ajax({
		type: "GET",
		url: "paginador.php",
		data: queryString,
		success: function(data){
			jQuery("#biblioteca").fadeIn(1000).html(data);
		},
		statusCode: {
    		404: function() {
      			alert( "Página no encontrada" );
    		}
  		}
	});
}

function paginacionPorBuscador(termino_busqueda){
	jQuery("#biblioteca").html("<div><img src='assets/img/load.gif'></div>");
	var titulo_mostrar = termino_busqueda;
	var queryString = "pagina_a_mostrar=1&titulo_a_mostrar="+titulo_mostrar;
	jQuery.ajax({
		type: "GET",
		url: "paginador.php",
		data: queryString,
		success: function(data){
			jQuery("#biblioteca").fadeIn(1000).html(data);
		},
		statusCode: {
    		404: function() {
      			alert( "Página no encontrada" );
    		}
  		}
	});
}

function caracteristicasLibro(event){
	event.preventDefault();
	jQuery("#biblioteca").html("<div><img src='assets/img/load.gif'></div>");
	var $objetoLink = jQuery(this).attr("href");
	var queryString = "id="+$objetoLink.substring(($objetoLink.indexOf("=")+1));
	jQuery.ajax({
		type: "GET",
		url: "libros/show.php",
		data: queryString,
		dataType: "json",
		success: function(data){
			jQuery("#biblioteca").empty();
			var $biblioteca = jQuery("#biblioteca");
			$biblioteca.append("<h2>"+data.titulo+"</h2>").find("h2").hide().show("slow", function(){
				$biblioteca.append("<h3>"+data.subtitulo+"</h3>").find("h3").hide().show("slow",function(){
					$biblioteca.append("<figure></figure>");
					$biblioteca.find("figure").append("<img src='assets/img/portadas/"+data.portada+"'>").find("img").hide().show("slow", function(){
						$biblioteca.find("img").after("<figcaption></figcaption>").parent().find("figcaption").delay(1000).hide().show("slow", function(){
							var $detallesLibro = $biblioteca.find("figcaption");
							$detallesLibro.append("<h4 class='tit_resenia'>Reseña</h4>").find(".tit_resenia").hide().show("slow", function(){
								$detallesLibro.append("<div class='desc_resenia'><p>"+data.sinopsis+"<p></div>").find(".desc_resenia").hide().show("slow", function(){
									$detallesLibro.append("<h4 class='tit_ficha'>Ficha Técnica del Libro</h4>").find(".tit_ficha").hide().show("slow", function(){
										$detallesLibro.append("<div class='desc_ficha'><ul><li>Categoría: "+data.categoria+"</li><li>Editorial: "+data.editorial+"</li><li>Año de Publicación: "+data.publicacion+"</li><li>I.S.B.N: "+data.isbn+"</li><li>Formato: Electrónico - "+data.formato+"</li><li>Tamaño del Archivo: "+data.peso+" MB.</li><li>Número de Páginas: "+data.paginas+"</li><li>Idioma: "+data.idioma+"</li><li>Enlace de Descarga: <a href='assets/libros/"+data.url+"' target='_blank' class='tip_trigger cambio'>Descargar Libro<span class='tip' style='font-size:1em;'><img src='assets/img/LogotipoInstitucional.png' style='float:left; margin-right:20px;'/>Aviso Importante:<br/>Biblioteca IT sólo publica material bibliográfico en formato digital para uso académico interno y no para usos comerciales o derivados.</span></a></li></ul></div>").find(".desc_ficha").hide().show("slow");
									});//ficha tecnica
								}); //descripcion reseña
							}); //reseña
						}); //figcaption
					}); //imagen
				}); //subtitulo
			}); //titulo
		}
	});
}	