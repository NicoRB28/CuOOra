as yet unclassified
testmisLikesTotales
	|like like2 |
	like := Calificacion likeConUsuario: usuario.
	like2 := Calificacion likeConUsuario: usuario2.
	
	rta2 registrarLike: like.
	rta2 registrarLike: like2.
	
	self assert: rta2 misLikesTotales equals: 2.
	self assert: rta misLikesTotales equals: 0.