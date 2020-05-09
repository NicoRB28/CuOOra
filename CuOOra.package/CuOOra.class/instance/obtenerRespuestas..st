accessing
obtenerRespuestas: unaPregunta

	(self existePregunta: unaPregunta)
		ifTrue: [^((unaPregunta misRespuestas)
				asSortedCollection: [ :e :e2 | e miCalificacionTotal > e2 miCalificacionTotal ]).
			 ].

	^OrderedCollection new.