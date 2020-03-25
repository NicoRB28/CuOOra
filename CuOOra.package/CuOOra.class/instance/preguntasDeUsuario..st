as yet unclassified
preguntasDeUsuario: unUsuario

	(usuarios includes: unUsuario)ifTrue:[^preguntas select: [:each | each meCreo: unUsuario ]]
	ifFalse:[^nil].