as yet unclassified
puntajePreguntas: misPreguntas Respuestas: misRespuestas 
	| puntaje |
	puntaje := misPreguntas
		inject: 0
		into: [ :puntajePreg :each | puntajePreg + each miCalificacionTotal ].
	
	puntaje := puntaje + ( misRespuestas
		inject: 0
		into: [ :puntajeResp :each | puntajeResp + each miCalificacionTotal ]).
	^ puntaje