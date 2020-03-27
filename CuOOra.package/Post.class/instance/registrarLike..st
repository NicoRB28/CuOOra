behavior
registrarLike: unLike
	(self yaTengoLikeDe: unLike miCreadorEs)
		ifFalse: [ likes add: unLike.
			(self yaTengoDisLikeDe: unLike miCreadorEs)
				ifTrue: [ dislikes
						remove: (dislikes detect: [ :each | each esMiCreador: unLike miCreadorEs ]) ] ]