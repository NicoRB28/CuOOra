as yet unclassified
testmiCalificacionTotal
	| dislike like dislike2 |
	like := Calificacion conUsuario: usuario.
	dislike := Calificacion conUsuario: usuario.
	dislike2 := Calificacion conUsuario: usuario2.
	rta2 registrarLike: like.
	rta2 registrarDisLike: dislike2.
	rta2 registrarDisLike: dislike.
	self assert: rta2 miCalificacionTotal equals: -2.
	self assert: rta miCalificacionTotal equals: 0.