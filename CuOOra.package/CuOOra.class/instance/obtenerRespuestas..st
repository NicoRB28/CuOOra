accessing
obtenerRespuestas: unaPregunta
	(preguntas anySatisfy: [ :preg | preg == unaPregunta ])
		ifTrue: [ ^ unaPregunta misRespuestas ].
	^ nil