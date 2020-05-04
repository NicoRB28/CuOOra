tests
testMeCreo
	

	self assert: (rta meCreo: usuario) equals: true.
	self deny: (rta meCreo: usuario2) equals: true. 