as yet unclassified
crearRespuesta 
	(respuesta isEmpty)
	ifFalse: [
		pregunta registrarRespuesta: (Respuesta conTexto: respuesta yUsuario: usuario )].
"		sistema crearRespuesta: respuesta usuario: usuario pregunta: pregunta] "