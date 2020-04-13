rendering
renderRespuesta: unaRespuesta on: aCanvas
		
		aCanvas text:'Respuesta de '.
		aCanvas anchor
		callback: [ self perfilDe: unaRespuesta quienMeCreo ];
		with: [ aCanvas strong: unaRespuesta  quienMeCreo miNombre ].
		aCanvas paragraph with: unaRespuesta texto.
		aCanvas
		text: unaRespuesta misLikes size;
		text: ' likes | ';
		text: unaRespuesta misDislikes size;
		text: ' dislikes';
		break.
		aCanvas anchor callback:[self darLike:unaRespuesta];
		with:[ aCanvas text: 'Like'].
		aCanvas anchor callback:[self darDislike:unaRespuesta];
		with:[ aCanvas text: ' | Dislike'].
		aCanvas horizontalRule.
		