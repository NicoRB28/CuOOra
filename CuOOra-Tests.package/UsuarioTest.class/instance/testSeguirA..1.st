tests
testSeguirA

	usuario seguirA: usuario2.
	
	self assert: (usuario seguidos includes: usuario2) equals: true.
	self deny: (usuario2 seguidos includes: usuario ) equals: true.