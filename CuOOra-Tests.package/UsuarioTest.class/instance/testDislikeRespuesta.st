tests
testDislikeRespuesta
	usuario dislikeRespuesta: respuesta2.
	self assert: respuesta misDislikesTotales equals: 0.
	self assert: respuesta2 misDislikesTotales equals: 1