tests
testconTextoyUsuario
	rta conTexto: 'una respuesta a una pregunta' yUsuario: usuario. 
	self assert: rta texto equals: 'una respuesta a una pregunta'.
	self assert: (rta meCreo: usuario) equals: true