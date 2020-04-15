tests
testRespuestasUsuario

|usuario3 r1|

usuario3 := sistema crearUsuario: 'Usuario3' contraseña: '123'.

r1 := sistema crearRespuesta: 'El juego de los abalorios' usuario: usuario3 pregunta: pregunta2.

self assert: (sistema respuestasUsuario: usuario3)size equals: 1.
self assert: ((sistema respuestasUsuario: usuario3) includes: r1) equals: true.
self assert: (sistema respuestasUsuario: usuario2)size equals: 0.