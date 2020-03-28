initialization
setUpPregunta
	| topico topic|
	topico := OrderedCollection with: topico1.
	topic := OrderedCollection with: topico3.
	pregunta := Pregunta
		conTitulo: '¿que pelicula se puede ver en tiempos de corona virus'
		descripcion: 'vamos que esta pandemia la pasamos entre todes'
		topico: topico
		usuario: usuario.
	topico add: topico2.
	pregunta2 := Pregunta
		conTitulo: '¿alguna pelicula basada en libro?'
		descripcion:
			'odio leer así que lo que no leo lo veo en peliculas, que me recomiendan'
		topico: topico
		usuario: usuario.
		pregunta3 := Pregunta
		conTitulo: '¿alguna libro sobre dinosaurios?'
		descripcion: 'creo que en mi vida pasada fui uno, asi que quiero saber mas'
		topico: topic
		usuario: usuario2