accessing
misDislikes
	^ votos reject: [ :each | each isLike ]