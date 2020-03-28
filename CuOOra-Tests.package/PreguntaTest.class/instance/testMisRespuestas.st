as yet unclassified
testMisRespuestas

	
	
	
	self assert: ((preguntaLibro  misRespuestas)size)  equals:  0.
	self assert: ((preguntaPelicula misRespuestas )size) equals: 2.
	