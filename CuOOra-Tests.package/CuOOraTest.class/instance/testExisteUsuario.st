as yet unclassified
testExisteUsuario

	sistema agregarUsuario: usuario1.
	
	self assert: (sistema usuarios includes: usuario1) equals: true.
	self assert: (sistema usuarios includes: usuario2) equals: false.