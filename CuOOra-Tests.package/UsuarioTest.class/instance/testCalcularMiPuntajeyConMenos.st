tests
testCalcularMiPuntajeyConMenos
	|resp respuestasTotales  respuestasAMiMismo preguntasHechas puntajePregResp calificacionPregResp |
	respuestasTotales := OrderedCollection new.
	respuestasAMiMismo := OrderedCollection new.
	preguntasHechas := OrderedCollection new.
	respuestasTotales add: respuesta.
	resp := Respuesta conTexto: 'me respondo' yUsuario: usuario.
	respuestasAMiMismo add: resp.
	respuestasTotales add: resp.
	preguntasHechas add: pregunta.
	preguntasHechas add: pregunta2.
	calificacionPregResp := pregunta miCalificacionTotal + pregunta2 miCalificacionTotal  + respuesta miCalificacionTotal + resp miCalificacionTotal.
	puntajePregResp := (pregunta puntaje + pregunta2 puntaje) +  (respuesta puntaje).
	self assert: (usuario calcularMiPuntaje: preguntasHechas ycon: respuestasTotales menos: respuestasAMiMismo) equals: calificacionPregResp + puntajePregResp.