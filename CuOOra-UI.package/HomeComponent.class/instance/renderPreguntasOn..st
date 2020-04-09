rendering
renderPreguntasOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	aCanvas
		unorderedList: [ ((sistema obtenerPreguntasRelevantes: usuario) takeFirst: 5)
				do: [ :each | 
					aCanvas
						emphasis: each titulo;
						break;
						text: 'Realizada por ';
						strong: each quienMeCreo miNombre;
						text: ' | ';
						text: each misRespuestas size;
						text: ' respuestas';
						break;
						text: each misLikes size;
						text: ' likes | ';
						text: each misDislikes size;
						text: ' dislikes';						
						horizontalRule ] ]