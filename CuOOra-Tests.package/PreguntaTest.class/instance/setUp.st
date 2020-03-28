running
setUp
	"Hooks that subclasses may override to define the fixture of test."
	|topicosPreguntaPelicula topicosPreguntaLibro|
	topicosPreguntaPelicula := OrderedCollection new.
	topicosPreguntaLibro  := OrderedCollection new.
	cuoora := CuOOra new.
	topicoL:= Topico conNombre: 'Libros' descripcion:'se habla de libros'.
	topico := Topico conNombre: 'Peliculas' descripcion:'topic donde compartimos todo lo relacionado con las peliculas'. 
	topicosPreguntaLibro add: topicoL.
	topicosPreguntaPelicula add: topico.
	
	preguntaLibro := Pregunta conTitulo: '¿recomendaciones de libros de Hesse?' descripcion:'lei un par de cuentos y es genial, recomienden'  topico: topicosPreguntaLibro   usuario: usuario.
	preguntaPelicula := Pregunta conTitulo: '¿peliculas para ver en cuarentena?' descripcion:'cuarentena time'  topico:topicosPreguntaPelicula   usuario: usuario2.
	
	usuario := Usuario nombreUsuario: 'Nicolas' contraseña: '2222'.
	usuario2 := Usuario nombreUsuario: 'Homero' contraseña:'3333'. 
	
	rta1 := Respuesta conTexto: 'ninguna' yUsuario: usuario2.
	rta2 := Respuesta conTexto: 'titanic' yUsuario: usuario.
		
	preguntaPelicula registrarRespuesta: rta1.
	preguntaPelicula registrarRespuesta: rta2.

