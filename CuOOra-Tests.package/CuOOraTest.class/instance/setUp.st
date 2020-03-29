running
setUp
	| topic |
	sistema := CuOOra new.
	usuarios := OrderedCollection new.
	topicos := OrderedCollection new.
	topico1 := OrderedCollection new.
	preguntas := OrderedCollection new.
	respuestas := OrderedCollection new.
	
	usuario2 := Usuario nombreUsuario: 'user2' contraseña: '123'.
	topic := Topico conNombre: 'Libros' descripcion: 'se habla de libros'.
	topico1 add: topic.
	pregunta2 := Pregunta
		conTitulo: '¿recomendaciones de libros de Hesse?'
		descripcion: 'lei un par de cuentos y es genial, recomienden'
		topico: topico1
		usuario: usuario2.
	respuesta2 := Respuesta conTexto: 'bla bla bla' yUsuario: usuario2.