rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'CuOOra'.
	aCanvas 
		strong: usuario miNombre;
		text: ' Log out';
		horizontalRule.
	self renderPreguntasOn: aCanvas