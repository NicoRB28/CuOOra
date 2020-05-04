boolean
yaTengoLikeDe: unUsuario
"	likes
		detect: [ :each | each esMiCreador: unUsuario ]
		ifFound: [ ^ true ].
	^ false"
	

	(self misLikes) detect: [ :each | each esMiCreador: unUsuario ]
	ifFound: [ ^true ].
	^false.
	