as yet unclassified
calcularMiPuntaje: misPreguntas ycon: misRespuestas menos: misRespuestasAMiMismo
	^(self puntajePreguntas: misPreguntas Respuestas: misRespuestas) + (self puntajePreguntasHechas: misPreguntas) + (self puntajeRespuestasTotales: misRespuestas  Hechas: misRespuestasAMiMismo)