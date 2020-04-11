initialization
initialize: unUsuario  
	super initialize.
	sistema := CuOOra soleInstance.
	self conUsuario: unUsuario.
	navBar := (NavBarComponent conUsuario: unUsuario).