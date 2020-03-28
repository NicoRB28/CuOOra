as yet unclassified
testMisTopicos

	|topicoExtra|
	topicoExtra := Topico conNombre: 'cine' descripcion:'topico destinado a cuestiones relacionadas con el cine en general'. 
	
	preguntaPelicula registrarTopico: topicoExtra .
	
	self assert: ((preguntaLibro  misTopicos)size)  equals:  1.
	self assert: ((preguntaPelicula misTopicos )size) equals: 2.
	