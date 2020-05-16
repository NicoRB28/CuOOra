behavior
registrarLike: unLike
	
	(self yaTengoLikeDe: unLike miCreadorEs)
	ifTrue:[^self]
		ifFalse: [ votos add: unLike.
			(self yaTengoDisLikeDe: unLike miCreadorEs)
				ifTrue: [ votos
						remove: (votos detect: [ :each | each esMiCreador: unLike miCreadorEs ]) ] ]