initialization
setUpPreguntas
	preguntaLibro := Pregunta conTitulo: '¿recomendaciones de libros de Hesse?' descripcion:'lei un par de cuentos y es genial, recomienden'  topico: topicoL   usuario: usuario.
	preguntaPelicula := Pregunta conTitulo: '¿peliculas para ver en cuarentena?' descripcion:'cuarentena time'  topico:topico   usuario: usuario2.
	preguntaPelicula registrarRespuesta: rta1.
	preguntaPelicula registrarRespuesta: rta2.