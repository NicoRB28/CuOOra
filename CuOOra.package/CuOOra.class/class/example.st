example
example 

|example lisa bart apu homero marge tLibros coleccionTopicos preguntaHomero |

example := self new.

tLibros := example agregarTopico: 'libros' descripcion:'libros'.
example agregarTopico: 'peliculas' descripcion: 'peliculas'.
coleccionTopicos := OrderedCollection with: tLibros.

lisa := example crearUsuario: 'Lisa' contraseña:'1234'. 
bart := example crearUsuario: 'Bart' contraseña:'1234'.
apu := example crearUsuario: 'Apu' contraseña:'1234'.
homero := example crearUsuario: 'Homero' contraseña:'1234'.
marge:= example crearUsuario: 'Marge' contraseña:'1234'.

example registrarTopico: tLibros  paraUsuario: lisa.

example crearPregunta: 'libros para pasar la cuarentena' descripcion:'bla'  topico: coleccionTopicos   usuario: bart.
example crearPregunta: 'libros sobre peste' descripcion:'ble'  topico:coleccionTopicos   usuario: homero.
example crearPregunta: 'libros para pasar un buen rato' descripcion:'bli'  topico:coleccionTopicos   usuario:marge. 
 example crearPregunta: 'Recomienden libros' descripcion:'blo'  topico: coleccionTopicos   usuario:bart.
preguntaHomero := example crearPregunta: 'Vamos los libros' descripcion:'blu'  topico:coleccionTopicos   usuario: homero.
example crearPregunta: 'quiero libros' descripcion:'blx'  topico: coleccionTopicos   usuario:marge.
example crearRespuesta: 'muy buena pregunta Homero....' usuario: bart  pregunta: preguntaHomero.
example crearRespuesta: 'eso no es una pregunta....-.-' usuario: lisa pregunta: preguntaHomero.
^example. 