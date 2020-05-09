behavior
puntajeUsuario: unUsuario 
	^(unUsuario calcularMiPuntaje: (self preguntasDeUsuario: unUsuario) ycon:  (self respuestasUsuario: unUsuario) menos: (self respuestasASiMismo: unUsuario))