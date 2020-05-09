example
example 

|juan pedro diego oo1 testDeUnidad smalltalk  example topicosPreguntaPedro topicosPreguntaDiego preguntaPedro preguntaDiego respuestaDiego respuestaPedro|

example := self new.

oo1 := Topico conNombre: 'OO1' descripcion: 'temas relacionados con los objetos en la programación'.
example agregarTopico: oo1.
smalltalk := Topico conNombre: 'Smalltalk' descripcion: 'temas relacionados con el lenguaje de programación Smalltalk'.
example agregarTopico: smalltalk.
testDeUnidad := Topico conNombre: 'Test de unidad' descripcion: 'temas relacionados a los test de unidad'.
example agregarTopico: testDeUnidad.


topicosPreguntaPedro := OrderedCollection with:oo1 with:testDeUnidad.
topicosPreguntaDiego := OrderedCollection with:oo1 with: smalltalk .

pedro := Usuario nombreUsuario: 'pedro@cuoora.com' contraseña:'pedro@cuoora.com'. 
example agregarUsuario: pedro.
diego := Usuario nombreUsuario: 'diego@cuoora.com' contraseña:'diego@cuoora.com'.
example agregarUsuario: diego.
juan := Usuario nombreUsuario: 'juan@cuoora.com' contraseña: 'juan@cuoora.com'.
example agregarUsuario: juan.

juan seguirA: diego.
pedro seguirA: juan.

preguntaPedro := Pregunta conTitulo:'¿Para qué sirve el método SetUp?'  descripcion: '' topico: topicosPreguntaPedro   usuario: pedro.
example agregarPregunta: preguntaPedro.
respuestaDiego := Respuesta conTexto: 'Sirve para instanciar los objetos que son evaluados por el test en un único método y que se ejecute siempre antes de cada test' yUsuario: diego.
preguntaPedro registrarRespuesta: respuestaDiego. 
preguntaDiego := Pregunta conTitulo: '¿Qué significa #messageNotUnderstood?' descripcion: ''  topico: topicosPreguntaDiego   usuario: diego.
example agregarPregunta: preguntaDiego.
respuestaPedro := Respuesta conTexto: 'Significa que el objeto que recibió el mensaje no encontró ningún metodo para ejecutar en respuesta' yUsuario: pedro.
preguntaDiego registrarRespuesta: respuestaPedro.

^example. 