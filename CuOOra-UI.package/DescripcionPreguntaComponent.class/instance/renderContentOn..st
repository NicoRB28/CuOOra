rendering
renderContentOn: aCanvas
	aCanvas div with:navBar.
	self renderPregunta: pregunta on: aCanvas.
	aCanvas
		unorderedList: [ (sistema obtenerRespuestas: pregunta)
				do: [ :each | self renderRespuesta: each on: aCanvas ] ].
	
	aCanvas text: 'No hay mas respuestas';
	break.
	aCanvas anchor callback:[self nuevaRespuesta]; 
	with:[aCanvas text:'Agregar Respuesta'].