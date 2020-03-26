as yet unclassified
registrarLike: unLike
	(self yaTengoLikeDe: unLike miCreadorEs)
		ifFalse: [ likes add: unLike.
			(self yaTengoDisLikeDe: unLike miCreadorEs)
				ifTrue: [ dislikes remove: [ :each | each meCreo: unLike miCreadorEs ] ] ]