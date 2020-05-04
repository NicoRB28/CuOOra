as yet unclassified
testyaTengoLikeDe
	
	rta2 registrarLike:(Calificacion likeConUsuario: usuario ).
	
	self assert: (rta2 yaTengoLikeDe: usuario) equals: true.
	self assert: (rta2  yaTengoLikeDe: usuario2) equals: false.