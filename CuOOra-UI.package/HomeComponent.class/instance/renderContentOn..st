rendering
renderContentOn: aCanvas
	aCanvas div
	with: navBar.
	aCanvas 
		anchor 
		callback: [ self nuevaPregunta ];
		with: [ aCanvas text:'Hacer una nueva pregunta'].
	self renderPreguntasOn: aCanvas.