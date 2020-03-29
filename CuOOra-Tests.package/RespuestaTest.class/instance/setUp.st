running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	usuario := Usuario nombreUsuario: 'Pepe' contraseña: '1234'.
	usuario2 := Usuario nombreUsuario: 'Pepa' contraseña: '321'.
 	rta := Respuesta new.
	rta2 := Respuesta conTexto: 'bla bla bla' yUsuario: usuario2. 