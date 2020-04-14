example
example 

|juan pedro diego oo1 testDeUnidad smalltalk  example topicosPreguntaPedro topicosPreguntaDiego preguntaPedro preguntaDiego |

example := self new.

oo1 := example agregarTopico: 'OO1' descripcion: 'temas relacionados con los objetos en la programación'.
smalltalk := example agregarTopico: 'Smalltalk' descripcion: 'temas relacionados con el lenguaje de programación Smalltalk'.
testDeUnidad := example agregarTopico: 'Test de unidad' descripcion: 'temas relacionados a los test de unidad'.


topicosPreguntaPedro := OrderedCollection with:oo1 with:testDeUnidad.
topicosPreguntaDiego := OrderedCollection with:oo1 with: smalltalk .

pedro := example crearUsuario: 'pedro@cuoora.com' contraseña:'pedro@cuoora.com'. 
diego := example crearUsuario: 'diego@cuoora.com' contraseña:'diego@cuoora.com'.
juan := example crearUsuario: 'juan@cuoora.com' contraseña: 'juan@cuoora.com'.

juan seguirA: diego.
pedro seguirA: juan.

preguntaPedro := example crearPregunta:'¿Para qué sirve el método SetUp?'  descripcion: '' topico: topicosPreguntaPedro   usuario: pedro.
example crearRespuesta: 'Sirve para instanciar los objetos que son evaluados por el test en un único método y que se ejecute siempre antes de cada test' usuario: diego  pregunta: preguntaPedro.

preguntaDiego := example crearPregunta: '¿Qué significa #messageNotUnderstood?' descripcion: ''  topico: topicosPreguntaDiego   usuario: diego.
example crearRespuesta: 'Significa que el objeto que recibió el mensaje no encontró ningún metodo para ejecutar en respuesta' usuario:pedro  pregunta: preguntaDiego.

^example. 