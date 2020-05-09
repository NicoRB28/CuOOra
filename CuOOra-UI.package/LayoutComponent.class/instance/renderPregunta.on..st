rendering
renderPregunta: unaPregunta on: aCanvas
	aCanvas anchor
		callback: [ self descripcionDe: unaPregunta  ];
		with: [ aCanvas emphasis: unaPregunta  titulo ].
	aCanvas
		break;
		emphasis:
			(unaPregunta  topicos
				inject: 'Topicos: '
				into: [ :text :each | text , each nombre , ', ' ]);
		break;
		text: 'Realizada por '.
	aCanvas anchor
		callback: [ self perfilDe: unaPregunta  quienMeCreo ];
		with: [ aCanvas strong: unaPregunta  quienMeCreo miNombre ].
	aCanvas
		text: ' | ';
		text: unaPregunta  misRespuestas size;
		text: ' respuestas';
		break;
		text: unaPregunta  misLikes size;
		"deberia cambiar a misLikesTotales"
		text: ' likes | ';
		text: unaPregunta  misDislikes size;
				"deberia cambiar a misDisLikesTotales"
		text: ' dislikes';
		break.
		aCanvas anchor callback:[self darLike:unaPregunta];
		with:[ aCanvas text: 'Like'].
		aCanvas anchor callback:[self darDislike:unaPregunta];
		with:[ aCanvas text: ' | Dislike'].
		aCanvas horizontalRule.