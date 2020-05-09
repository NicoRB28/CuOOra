tests
testEsMiCreador
	self assert: (like esMiCreador: usuario) equals: true.
	self assert: (dislike esMiCreador: usuario2 ) equals: true.