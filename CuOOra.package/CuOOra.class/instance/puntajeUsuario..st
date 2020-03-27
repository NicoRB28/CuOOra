behavior
puntajeUsuario: unUsuario 
	^ (self puntajeParticipaciones: unUsuario) + (self puntajePreguntasHechas: unUsuario) + (self puntajeRespuestasHechas: unUsuario)