as yet unclassified
testregistrarTopico
	usuario registrarTopico: topico1.
	self assert: (usuario misTopicos includes: topico1)