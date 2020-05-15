behavior
registrarDisLike: unDisLike

		(self yaTengoDisLikeDe: unDisLike miCreadorEs)
		ifTrue: [ ^ self ].
	votos add: unDisLike.
	(self yaTengoLikeDe: unDisLike miCreadorEs)
		ifTrue: [ votos
				remove: (votos detect: [ :each | each esMiCreador: unDisLike miCreadorEs ]) ].