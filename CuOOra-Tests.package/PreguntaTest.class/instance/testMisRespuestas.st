as yet unclassified
testMisRespuestas
	self assert: (preguntaLibro misRespuestas)size equals: 0.
	self assert: (preguntaPelicula misRespuestas includes: rta1).
	self assert: (preguntaPelicula misRespuestas includes: rta2).