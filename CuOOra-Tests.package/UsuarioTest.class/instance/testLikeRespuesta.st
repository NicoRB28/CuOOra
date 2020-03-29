tests
testLikeRespuesta
	usuario likeRespuesta: respuesta.
	self assert: respuesta misLikesTotales equals: 1.
	self assert: respuesta2 misLikesTotales equals: 0.