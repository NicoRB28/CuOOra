boolean
yaTengoDisLikeDe: unUsuario

	
	(self misDislikes) detect: [ :each | each esMiCreador: unUsuario ]
	ifFound: [ ^true ].
	^false.
	
	