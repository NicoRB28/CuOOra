as yet unclassified
testMisTopicos
	self assert: (preguntaLibro misTopicos includes: topicoPreguntaLibro).
	self assert: (preguntaLibro misTopicos includes: topicoPreguntaLibroDos).
	self assert: (preguntaPelicula misTopicos includes: topicoPreguntaPelicula)