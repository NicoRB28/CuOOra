rendering
renderContentOn: aCanvas
	aCanvas div with: navBar.
	aCanvas heading
		level: 4;
		with: 'Preguntas de ' , usuarioPerfil miNombre , ' '.
	self renderFollowOn: aCanvas.
	aCanvas
		unorderedList: [ (sistema preguntasDeUsuario: usuarioPerfil )
				do: [ :each | self renderPregunta: each on: aCanvas ] ]