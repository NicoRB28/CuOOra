rendering
renderRespuesta: unaRespuesta on: aCanvas

		aCanvas emphasis:'Respuesta de ', unaRespuesta usuario miNombre.
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
		