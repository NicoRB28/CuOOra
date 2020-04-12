rendering
renderContentOn: aCanvas
	aCanvas div with: navBar.
	aCanvas heading
		level: 4;
		with: 'Preguntas de ' , usuarioPerfil nombre, ' '.
	self renderFollowOn: aCanvas.
	aCanvas
		unorderedList: [ (sistema preguntasDeUsuario: usuarioPerfil)
				do:
					[ :each | aCanvas div with: (PreguntaComponent conPregunta: each) ] ]