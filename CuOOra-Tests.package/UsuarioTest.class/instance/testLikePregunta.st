tests
testLikePregunta
	usuario likePregunta: pregunta.
	self assert: pregunta misLikesTotales equals: 1.
	self assert: pregunta2 misLikesTotales equals: 0