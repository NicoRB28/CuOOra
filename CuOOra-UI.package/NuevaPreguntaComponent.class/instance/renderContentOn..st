rendering
renderContentOn: aCanvas

	aCanvas 
		heading 
		level: 2;
		with: 'CuOOra'.
	aCanvas 
		strong: usuario miNombre;
		text: ' Log out'.
	aCanvas break.
	aCanvas horizontalRule.
	aCanvas 
		heading 
		level:4;
		with:'Nueva Pregunta'.
	aCanvas	horizontalRule.
	aCanvas
		form: [ aCanvas label:'Titulo'.
			
				(aCanvas textArea on: #titulo of: self)
					columns: 80;
					rows: 5;
					value:'Escriba aquí el titulo de su pregunta'.
			aCanvas break.
			aCanvas label:'Desarrollo'.
				(aCanvas textArea on:#desarrollo of: self)
				columns:80;
				rows:5;
				value:'Escriba aquí el desarrollo de su pregunta'.
			aCanvas break.
			aCanvas label:'Topicos'.
				(aCanvas textArea on:#topicos of:self)
				columns:80;
				rows:5;
				value: 'Ingrese los tópicos separados por coma'.
			aCanvas break.
			aCanvas button 
					callback: [ self cancelar ];
					with: [ aCanvas text:'Cancelar'].
			aCanvas space.
			aCanvas submitButton
					callback: [ self crearPregunta ]; 
					with: 'Guardar'
			].