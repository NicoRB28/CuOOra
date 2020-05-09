initialization
testAgregarTopico

	sistema agregarTopico: topico1.

	
	self assert: ((sistema topicosDelSistema) includes: topico1)equals: true.
	self deny:((sistema topicosDelSistema) includes: topico2) equals: true.
	self assert: ((sistema topicosDelSistema)size) equals: 1.