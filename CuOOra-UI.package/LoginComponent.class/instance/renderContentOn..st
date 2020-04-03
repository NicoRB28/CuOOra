rendering
renderContentOn: aCanvas

	aCanvas 
		heading 
		level: 2;
		with: 'CuOOra'.
	aCanvas break.
	aCanvas form: [ aCanvas 
						paragraph:[ aCanvas label: 'Nombre: '. 
							aCanvas textInput 
							callback:[ :nombreLogin | self nombre: nombreLogin ];
							with: self nombre]. 
						aCanvas 
						paragraph: [ aCanvas label:'Contraseña: '. 
							aCanvas textInput 
							callback:[:contraseñaLogin | self contraseña: contraseñaLogin];
							with: self contraseña].
						aCanvas anchor 
							callback: [ self validar ];
							with: [aCanvas button:'Iniciar Sesion'].
						]	
		