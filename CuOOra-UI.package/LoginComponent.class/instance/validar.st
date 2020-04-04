callbacks
validar
	
	|usuario|
	usuario := Usuario nombreUsuario: 'Lisa' contraseña: '1234'.
	"usuario := sistema usuarios detect: [ :each | each miNombre = 'Lisa' ]."
	"usuario := (sistema usuarios detect: [ :each | each miNombre = self nombre] ifNone:[nil])."
	self call: (HomeComponent conUsuario: usuario).
	"usuario ifNotNil: [ (usuario contraseña = self contraseña) ifTrue:[ self call: (HomeComponent conUsuario: usuario)]]."