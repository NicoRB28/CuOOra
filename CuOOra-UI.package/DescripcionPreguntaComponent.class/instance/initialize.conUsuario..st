initialization
initialize: unaPregunta conUsuario: unUsuario 
	self initialize: unUsuario.
	pregunta := unaPregunta.
	pregComp := PreguntaComponent conPregunta: pregunta.