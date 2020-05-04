as yet unclassified
puntajeRespuestasTotales: respTotales Hechas: respPropias
	(respTotales isEmpty) ifTrue: [ ^0 ].
	^ ( (respTotales sumNumbers: [ :resp | resp puntaje ]) - (respPropias sumNumbers: [ :resProp | resProp puntaje ]) )