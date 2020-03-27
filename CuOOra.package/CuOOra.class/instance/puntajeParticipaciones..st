behavior
puntajeParticipaciones: unUsuario
	| puntaje |
	puntaje := (self preguntasDeUsuario: unUsuario)
		inject: 0
		into: [ :puntajePreg :each | puntajePreg + each miCalificacionTotal ].
	
	puntaje := puntaje + ( (self respuestasUsuario: unUsuario)
		inject: 0
		into: [ :puntajeResp :each | puntajeResp + each miCalificacionTotal ]).
	^ puntaje