rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'CuOOra'.
	aCanvas
		strong: usuario miNombre;
		text: ' '.
	aCanvas anchor
		url: 'CuOOra';
		with: [ aCanvas text: 'Log out' ].
	aCanvas horizontalRule