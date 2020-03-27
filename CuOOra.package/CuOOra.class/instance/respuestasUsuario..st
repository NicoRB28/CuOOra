accessing
respuestasUsuario: unUsuario
	(usuarios includes: unUsuario)
		ifTrue: [ ^ respuestas select: [ :each | each meCreo: unUsuario ] ]
		ifFalse: [ ^ nil ]