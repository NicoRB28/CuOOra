rendering
renderPreguntasOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	aCanvas
		unorderedList: [ (sistema obtenerPreguntasRelevantes: usuario ) do: [ :each | self renderPregunta: each on: aCanvas ] ]