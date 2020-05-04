accessing
misDislikes
	"^dislikes."
	^votos select: [ :each | (each isLike) not ].