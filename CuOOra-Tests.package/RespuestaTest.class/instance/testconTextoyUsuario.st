tests
testconTextoyUsuario
	
	
	
	self assert: (rta texto) equals: 'una respuesta de test'.
	self assert: (rta meCreo: usuario) equals: true.