rendering
renderContentOn: aCanvas
	aCanvas
						anchor callback: [ self descripcion ];
						with:[ aCanvas emphasis: pregunta titulo].
						aCanvas break;
						emphasis: (pregunta topicos inject: 'Topicos: ' into: [:text :each | text,(each nombre),', '] );
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