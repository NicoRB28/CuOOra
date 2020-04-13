rendering
renderContentOn: aCanvas
	aCanvas div with: navBar.
	self renderPregunta: pregunta on: aCanvas .
	aCanvas
		form: [ aCanvas label: 'Respuesta'.
			(aCanvas textArea on: #respuesta of: self)
				columns: 80;
				rows: 5;
				value: 'Escriba aquí su respuesta'.
			aCanvas break.
			aCanvas break.
			aCanvas button
				callback: [ self cancelar ];
				with: [ aCanvas text: 'Cancelar' ].
			aCanvas space.
			aCanvas submitButton
				callback: [ self crearRespuesta ];
				with: 'Guardar' ]