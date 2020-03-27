accessing
obtenerRespuestas: unaPregunta
	| ordenada |
	(preguntas anySatisfy: [ :preg | preg == unaPregunta ])
		ifTrue: [ ordenada := unaPregunta misRespuestas
				asSortedCollection: [ :e :e2 | e miCalificacionTotal > e2 miCalificacionTotal ].
			^ ordenada ].
	^ nil