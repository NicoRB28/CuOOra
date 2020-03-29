running
setUp
	"Hooks that subclasses may override to define the fixture of test."
	topico:= OrderedCollection new.
	topicoL  := OrderedCollection new.
	cuoora := CuOOra new.
	topicoPreguntaLibro:= Topico conNombre: 'Libros' descripcion:'se habla de libros'.
	topicoPreguntaPelicula := Topico conNombre: 'Peliculas' descripcion:'topic donde compartimos todo lo relacionado con las peliculas'. 
	topicoL add: topicoPreguntaLibro.
	topico add: topicoPreguntaPelicula .
	
	usuario := Usuario nombreUsuario: 'Nicolas' contraseña: '2222'.
	usuario2 := Usuario nombreUsuario: 'Homero' contraseña:'3333'. 
	
	preguntaLibro := Pregunta conTitulo: '¿recomendaciones de libros de Hesse?' descripcion:'lei un par de cuentos y es genial, recomienden'  topico: topicoL   usuario: usuario.
	preguntaPelicula := Pregunta conTitulo: '¿peliculas para ver en cuarentena?' descripcion:'cuarentena time'  topico:topico   usuario: usuario2.
	
	rta1 := Respuesta conTexto: 'ninguna' yUsuario: usuario2.
	rta2 := Respuesta conTexto: 'titanic' yUsuario: usuario.
		
	preguntaPelicula registrarRespuesta: rta1.
	preguntaPelicula registrarRespuesta: rta2.

