running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	usuario := Usuario nombreUsuario: 'Pepe' contraseña: '1234'.
	
	rta := Respuesta conTexto: 'una respuesta a una pregunta' yUsuario: usuario.