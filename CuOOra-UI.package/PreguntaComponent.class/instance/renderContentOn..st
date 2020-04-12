rendering
renderContentOn: aCanvas
	aCanvas
		emphasis: pregunta titulo;
		break;
		emphasis:
			(pregunta topicos
				inject: 'Topicos: '
				into: [ :text :each | text , each nombre , ', ' ]);
		break;
		text: 'Realizada por '.
	aCanvas anchor
		callback: [ self
				call:
					(PerfilComponent
						conUsuarioLog: usuario
						conUsuarioPerfil: pregunta quienMeCreo) ];
		with: [ aCanvas strong: pregunta quienMeCreo miNombre ].
	aCanvas
		text: ' | ';
		text: pregunta misRespuestas size;
		text: ' respuestas';
		break;
		text: pregunta misLikes size;
		text: ' likes | ';
		text: pregunta misDislikes size;
		text: ' dislikes';
		horizontalRule