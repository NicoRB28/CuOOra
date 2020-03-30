tests
testObtenerPreguntasRelevantes

| topicosParaTestear |

sistemaParaTestear := CuOOra new.

topicoSimpsons := sistemaParaTestear agregarTopico: 'actividades' descripcion: 'recomendaciones de actividades'.
topicosParaTestear  := OrderedCollection with:topicoSimpsons .

bart := sistemaParaTestear crearUsuario: 'Bart' contraseña: '1234'.
homero := sistemaParaTestear crearUsuario: 'Homero' contraseña:'1234'.
apu := sistemaParaTestear crearUsuario: 'Apu' contraseña:  '1234'.

preguntaBart := sistemaParaTestear crearPregunta: 'que hago en cuarentena?' descripcion:'me aburro'  topico: topicosParaTestear    usuario: bart.
respuestaApu := sistemaParaTestear crearRespuesta: 'pontes a leer un libros' usuario:apu  pregunta: preguntaBart .
respuestaHomero := sistemaParaTestear crearRespuesta: 'estudia' usuario:homero  pregunta:preguntaBart.
self assert: ((sistemaParaTestear obtenerPreguntasRelevantes: bart)size ) equals:0. 
self assert:((sistemaParaTestear obtenerPreguntasRelevantes: homero)size) equals:0.
sistemaParaTestear RegistrarTopico: topicoSimpsons  paraUsuario: homero.
self assert: ((sistemaParaTestear obtenerPreguntasRelevantes: homero)size) equals: 1.
self assert: ((sistemaParaTestear obtenerPreguntasRelevantes: homero)includes: preguntaBart) equals: true.
self deny: ((sistemaParaTestear obtenerPreguntasRelevantes: bart)includes: pregunta1) equals: true.
self assert:((sistemaParaTestear obtenerPreguntasRelevantes: apu) size) equals: 0.


