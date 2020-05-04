accessing
misDislikes
	"^dislikes."
	
	^votos reject: [ :each | each isLike].
	