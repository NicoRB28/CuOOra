tests
testCrearRespuestaUsuarioPregunta

respuesta1 :=sistema crearRespuesta: 'blaaa' usuario: usuario2  pregunta: pregunta2.

self assert:(respuesta1 texto) equals:'blaaa'.