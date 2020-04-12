as yet unclassified
renderFollowOn: aCanvas
	(usuario seguidos includes: usuarioPerfil)
		ifFalse: [ aCanvas anchor
				callback: [ self follow ];
				with: [ aCanvas text: 'follow' ] ]