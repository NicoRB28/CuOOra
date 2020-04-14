deleting
borrarPregunta: unaPregunta
	| rtas rSist likesP dislikesP |
	likesP := unaPregunta misLikes.
	likesP removeAll.
	dislikesP := unaPregunta misDislikes.
	dislikesP removeAll.
	rtas := self obtenerRespuestas: unaPregunta.
	rtas do: [ :r | r misLikes removeAll ].
	rtas do: [ :r | r misDislikes removeAll ].
	rtas do: [ :r | respuestas remove: r ].
	rtas removeAll.
	preguntas remove: unaPregunta