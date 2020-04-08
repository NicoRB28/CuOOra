rendering
renderPreguntasOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	
	aCanvas unorderedList: [((sistema obtenerPreguntasRelevantes: usuario) takeFirst: 5)
	do: [:each| aCanvas listItem: each titulo] ].