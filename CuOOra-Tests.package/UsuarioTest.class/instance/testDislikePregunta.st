tests
testDislikePregunta

	usuario dislikePregunta: pregunta2.
	
	self assert: (pregunta misDislikesTotales  ) equals:0.
	self assert:(pregunta2 misDislikesTotales ) equals: 1. 