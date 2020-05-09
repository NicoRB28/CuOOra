tests
testObtenerPreguntasRelevantes



sistema agregarTopico: topico1.

sistema agregarUsuario: usuario1.
sistema agregarUsuario: usuario2.

sistema agregarPregunta: pregunta1.
sistema agregarPregunta: pregunta2.

pregunta1 registrarRespuesta: respuesta1.
pregunta1 registrarRespuesta: respuesta2.


self assert: ((sistema obtenerPreguntasRelevantes: usuario1)size ) equals:0. 
self assert:((sistema obtenerPreguntasRelevantes: usuario2)size) equals:0.

usuario2 registrarTopico: topico1.
self assert: ((sistema obtenerPreguntasRelevantes: usuario2)size) equals: 1.
self assert: ((sistema obtenerPreguntasRelevantes: usuario2)includes: pregunta1) equals: true.
self deny: ((sistema obtenerPreguntasRelevantes: usuario1)includes: pregunta1) equals: true.
self assert:((sistema obtenerPreguntasRelevantes: usuario1) size) equals: 0.


