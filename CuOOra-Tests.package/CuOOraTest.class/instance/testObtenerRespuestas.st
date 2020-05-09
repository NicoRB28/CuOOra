tests
testObtenerRespuestas


sistema agregarTopico: topico1.
sistema agregarTopico: topico2.

sistema agregarUsuario: usuario1.
sistema agregarUsuario: usuario2.

sistema agregarPregunta: pregunta1.
sistema agregarPregunta: pregunta2.

pregunta1 registrarRespuesta: respuesta1.
pregunta1 registrarRespuesta: respuesta2.


self assert: ((sistema obtenerRespuestas: pregunta1)includes:respuesta1) equals: true.
self assert: ((sistema obtenerRespuestas: pregunta2)includes:respuesta2) equals: false.
self assert: ((sistema obtenerRespuestas: pregunta1)includes:respuesta2) equals: true.
self assert: ((sistema obtenerRespuestas: pregunta2)includes:respuesta2) equals: false.

  