as yet unclassified
registrarDisLike: unDisLike
	(self yaTengoDisLikeDe: unDisLike miCreadorEs)
		ifFalse: [ dislikes add: unDisLike.
			(self yaTengoLikeDe: unDisLike miCreadorEs)
				ifTrue: [ likes remove: [ :each | each meCreo: unDisLike miCreadorEs ] ] ]