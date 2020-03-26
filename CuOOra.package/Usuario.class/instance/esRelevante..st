initialization
esRelevante: unaPregunta
	^ (topicos includesAny: unaPregunta misTopicos)
		or: (seguidos includes: unaPregunta quienMeCreo)