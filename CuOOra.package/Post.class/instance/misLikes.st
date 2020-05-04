accessing
misLikes
	"^ likes"
	
	^votos select: [ :each | each isLike ].