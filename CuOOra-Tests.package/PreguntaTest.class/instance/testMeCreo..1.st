tests
testMeCreo
	self assert: (preguntaLibro meCreo: usuario) equals: true.
	self deny: (preguntaLibro meCreo: usuario2) equals: true. 