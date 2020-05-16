as yet unclassified
crearPregunta
	"|topicosParaAgregar |"
	
	 ((titulo isEmpty) & (desarrollo isEmpty ) & (topicos isEmpty))
		ifFalse:[
			
			"topicosParaAgregar := sistema topicosMatchingNamePart: topicos.	"
				
										
"			sistema crearPregunta: titulo descripcion: desarrollo  topico: topicosParaAgregar usuario: usuario ]."
			sistema agregarPregunta: (Pregunta conTitulo: titulo descripcion: desarrollo  topico: (sistema topicosMatchingNamePart: topicos)  usuario: usuario )].
		self answer.
	