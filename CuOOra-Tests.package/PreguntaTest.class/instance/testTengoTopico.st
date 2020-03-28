tests
testTengoTopico

	|topicoQueNotiene pregunta|
	
	
	topicoQueNotiene := Topico conNombre: 'Libros' descripcion:'topico para discutir sobre libros'.  
	pregunta := Pregunta conTitulo: '¿que pelicula recomiendan?' 
	descripcion: 'estoy en cuarentena y quiero ver algooooo'
	topico: topico usuario: usuario.
	
	self assert: ((pregunta misTopicos) includes: topico ) equals: true. 
	self deny: ((pregunta misTopicos)includes:topicoQueNotiene) equals: true. 
	
	