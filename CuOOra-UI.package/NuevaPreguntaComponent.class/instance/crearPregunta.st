as yet unclassified
crearPregunta
	|topicosParaAgregar |
	
	 ((titulo isEmpty) & (desarrollo isEmpty ) & (topicos isEmpty))
		ifFalse:[
			
			topicosParaAgregar := sistema topicosMatchingNamePart: topicos.	
				
										
			sistema crearPregunta: titulo descripcion: desarrollo  topico: topicosParaAgregar usuario: usuario ].
		self answer.
	