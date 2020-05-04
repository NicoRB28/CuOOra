tests
testPuntajePreguntasHechas
	|preguntasHechas|
	preguntasHechas := OrderedCollection new.
	preguntasHechas add: pregunta.
	preguntasHechas add: pregunta2.
	
	self assert: (usuario puntajePreguntasHechas: preguntasHechas) equals: (pregunta puntaje + pregunta2 puntaje)