initialization
setUpTopico 
	topico:= OrderedCollection new.
	topicoL  := OrderedCollection new.
	cuoora := CuOOra new.
	topicoPreguntaLibroDos := Topico conNombre: 'Autores Clasicos' descripcion: 'topico para charlar sobre autores clasicos'.
	topicoPreguntaLibro:= Topico conNombre: 'Libros' descripcion:'se habla de libros'.
	topicoPreguntaPelicula := Topico conNombre: 'Peliculas' descripcion:'topic donde compartimos todo lo relacionado con las peliculas'. 
	topicoL add: topicoPreguntaLibro.
	topicoL add: topicoPreguntaLibroDos.
	topico add: topicoPreguntaPelicula .
