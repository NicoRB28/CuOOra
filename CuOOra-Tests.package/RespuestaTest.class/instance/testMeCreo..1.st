tests
testMeCreo
	rta conTexto: 'bla bla ' yUsuario: usuario. 

	self assert: (rta meCreo: usuario) equals: true.
	self deny: (rta meCreo: usuario2) equals: true. 