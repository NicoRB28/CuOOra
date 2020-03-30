tests
testObtenerRespuestas
| topicosParaTestear|

sistemaParaTestear := CuOOra new.

topicoSimpsons := sistemaParaTestear agregarTopico: 'actividades' descripcion: 'recomendaciones de actividades'.
topicosParaTestear  := OrderedCollection with:topicoSimpsons .

bart := sistemaParaTestear crearUsuario: 'Bart' contraseña: '1234'.
homero := sistemaParaTestear crearUsuario: 'Homero' contraseña:'1234'.
apu := sistemaParaTestear crearUsuario: 'Apu' contraseña:  '1234'.

preguntaBart := sistemaParaTestear crearPregunta: 'que hago en cuarentena?' descripcion:'me aburro'  topico: topicosParaTestear    usuario: bart.
respuestaApu := sistemaParaTestear crearRespuesta: 'pontes a leer un libros' usuario:apu  pregunta: preguntaBart .
respuestaHomero := sistemaParaTestear crearRespuesta: 'estudia' usuario:homero  pregunta:preguntaBart.


self assert: ((sistemaParaTestear obtenerRespuestas: preguntaBart)includes:respuestaApu) equals: true.
self assert: ((sistemaParaTestear obtenerRespuestas:preguntaBart)includes:respuestaHomero) equals: true.  