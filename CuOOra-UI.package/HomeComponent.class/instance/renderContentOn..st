rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'CuOOra'.
	aCanvas 
		strong: usuario miNombre;
		text: ' Log out';
		horizontalRule.
	aCanvas 
		anchor 
		callback: [ self nuevaPregunta ];
		with: [ aCanvas text:'Hacer una nueva pregunta'].
	self renderPreguntasOn: aCanvas.