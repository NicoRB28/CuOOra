tests
testConstructor
	self assert: rta texto equals: 'una respuesta a una pregunta'.
	self assert: (rta meCreo: usuario) equals: true