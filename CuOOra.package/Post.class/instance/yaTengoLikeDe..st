boolean
yaTengoLikeDe: unUsuario
	likes
		detect: [ :each | each esMiCreador: unUsuario ]
		ifFound: [ ^ true ].
	^ false