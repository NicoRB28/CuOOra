as yet unclassified
agregarTopico: nombreTopico descripcion: unaDescripcion
	|topico|
	topico := Topico conNombre: nombreTopico  descripcion: unaDescripcion .
	topicos add: (topico).
	^topico.