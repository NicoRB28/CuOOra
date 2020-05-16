boolean
yaTengoLikeDe: unUsuario
	

	(self misLikes) detect: [ :each | each esMiCreador: unUsuario ]
	ifFound: [ ^true ].
	^false.
	