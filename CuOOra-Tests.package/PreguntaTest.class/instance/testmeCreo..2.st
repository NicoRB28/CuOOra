as yet unclassified
testmeCreo
	self assert: (preguntaLibro meCreo: usuario) equals: true.
	self assert: (preguntaPelicula meCreo: usuario) equals: false.