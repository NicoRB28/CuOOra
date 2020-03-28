as yet unclassified
testesRelevante		
	usuario seguirA: usuario2.	
	usuario registrarTopico: topico2.
	self assert: (usuario esRelevante: pregunta) equals: false.
	self assert: (usuario esRelevante: pregunta2) equals: true.
	self assert: (usuario esRelevante: pregunta3) equals: true.