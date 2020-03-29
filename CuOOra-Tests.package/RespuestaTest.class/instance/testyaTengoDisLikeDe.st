as yet unclassified
testyaTengoDisLikeDe
	usuario dislikePregunta: rta2.
	
	self assert: (rta2 yaTengoDisLikeDe: usuario) equals: true.
	self assert: (rta2  yaTengoDisLikeDe: usuario2) equals: false.