as yet unclassified
borrarRespuestasPregunta: unaPregunta
	| rtas |
	rtas := unaPregunta misRespuestas.
	rtas do: [ :r | r misLikes removeAll ].
	rtas do: [ :r | r misDislikes removeAll ].
	rtas do: [ :r | respuestas remove: r ].
	rtas removeAll