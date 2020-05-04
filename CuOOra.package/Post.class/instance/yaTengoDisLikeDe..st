boolean
yaTengoDisLikeDe: unUsuario
"	dislikes
		detect: [ :each | each esMiCreador: unUsuario ]
		ifFound: [ ^ true ].
	^ false."
	
	(self misDislikes) detect: [ :each | each esMiCreador: unUsuario ]
	ifFound: [ ^true ].
	^false.
	
	