rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'CuOOra'.
	aCanvas strong: usuario miNombre.
	aCanvas anchor
		callback: [ self call: LoginComponent new ];
		with: [ aCanvas text: ' Log out' ].
	aCanvas horizontalRule