callbacks
validar
	
	|usuario|
	
	usuario := (sistema usuarios detect: [ :each | each miNombre = self nombre] ifNone:[nil]).
	
	usuario ifNotNil: [ (usuario contraseña = self contraseña) ifTrue:[ self call: (HomeComponent conUsuario: usuario)]].