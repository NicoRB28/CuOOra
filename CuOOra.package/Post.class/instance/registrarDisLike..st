behavior
registrarDisLike: unDisLike
	(self yaTengoDisLikeDe: unDisLike miCreadorEs)
		ifTrue: [ ^ self ].
	dislikes add: unDisLike.
	(self yaTengoLikeDe: unDisLike miCreadorEs)
		ifTrue: [ likes
				remove: (likes detect: [ :each | each esMiCreador: unDisLike miCreadorEs ]) ]