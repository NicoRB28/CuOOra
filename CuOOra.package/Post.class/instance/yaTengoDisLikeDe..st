boolean
yaTengoDisLikeDe: unUsuario
	dislikes
		detect: [ :each | each esMiCreador: unUsuario ]
		ifFound: [ ^ true ].
	^ false