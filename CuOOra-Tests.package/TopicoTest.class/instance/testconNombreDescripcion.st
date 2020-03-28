tests
testconNombreDescripcion
	| topico |
	topico := Topico
		conNombre: 'Peliculas'
		descripcion: 'muchas peliculas'.
	self assert: topico nombre equals: 'Peliculas'.
	self assert: topico descripcion equals: 'muchas peliculas'