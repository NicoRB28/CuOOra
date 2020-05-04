behavior
puntajePreguntasHechas: unUsuario
	^ ((self preguntasDeUsuario: unUsuario) sumNumbers: [ :pregunta | pregunta puntaje ])