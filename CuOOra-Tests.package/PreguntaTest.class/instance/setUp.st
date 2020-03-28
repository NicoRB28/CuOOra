running
setUp
	"Hooks that subclasses may override to define the fixture of test."
	
	
	usuario := Usuario nombreUsuario: 'Nicolas' contraseña: '2222'.
	usuario2 := Usuario nombreUsuario: 'Homero' contraseña:'3333'. 
	topico := Topico conNombre: 'Peliculas' descripcion:'topic donde compartimos todo lo relacionado con las peliculas'. 
