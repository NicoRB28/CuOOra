rendering
renderContentOn: aCanvas
	self renderPregunta: pregunta on: aCanvas.
	aCanvas
		unorderedList: [ (sistema obtenerRespuestas: pregunta)
				do: [ :each | self renderRespuesta: each on: aCanvas ] ].
	
	aCanvas text: 'No hay mas respuestas'.