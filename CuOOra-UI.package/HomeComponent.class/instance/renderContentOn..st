rendering
renderContentOn: aCanvas
	aCanvas 
		heading 
		level: 2;
		with: 'CuOOra'.
	aCanvas 
	heading
	level: 3;
	with: usuario miNombre.
	aCanvas horizontalRule. 
	self renderPreguntasOn: aCanvas.