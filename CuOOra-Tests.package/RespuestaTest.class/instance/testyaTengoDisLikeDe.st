as yet unclassified
testyaTengoDisLikeDe
	
	rta registrarDisLike: (Calificacion dislikeConUsuario: usuario).

	
	self assert: (rta yaTengoDisLikeDe: usuario) equals: true.
	self assert: (rta  yaTengoDisLikeDe: usuario2) equals: false.