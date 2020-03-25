as yet unclassified
crearUsuario: nombreUsuario contraseña: unaContraseña
	
	|usr|
	usr := Usuario nombreUsuario: nombreUsuario  contraseña: unaContraseña . 
	usuarios add: usr.