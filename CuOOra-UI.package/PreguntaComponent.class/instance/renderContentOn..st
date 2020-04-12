rendering
renderContentOn: aCanvas
	aCanvas
						emphasis: pregunta titulo;
						break;
						text: 'Realizada por ';
						strong: pregunta quienMeCreo miNombre;
						text: ' | ';
						text: pregunta misRespuestas size;
						text: ' respuestas';
						break;
						text: pregunta misLikes size;
						text: ' likes | ';
						text: pregunta misDislikes size;
						text: ' dislikes';						
						horizontalRule.