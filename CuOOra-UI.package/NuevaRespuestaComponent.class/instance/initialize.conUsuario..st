initialization
initialize: unaPregunta conUsuario: unUsuario 
	self initialize: unUsuario.
	self conPregunta: unaPregunta.
	pregComp := PreguntaComponent conPregunta: pregunta.