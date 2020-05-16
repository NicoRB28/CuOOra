Acceso a la aplicación
Para registrar la aplicación se debe ejecutar en el playground la siguiente sentencia:
WAAdmin register: LoginComponent  asApplicationAt: 'CuOOra' 
Es importante destacar que el nombre debe ser CuOOra para que la aplicación funcione correctamente.
A su vez, se deja escrita la instrucción antes mencionada en el comentario de la clase LoginComponent.
La aplicación cuenta con una precarga de los usuarios, preguntas y respuestas solicitadas por la cátedra, esta carga se hace automáticamente, a los efectos de probar la aplicación sólo debe ejecutar la sentencia antes mencionada en playground e ingresar en el navegador la URL.

Otro aspecto a remarcar es el hecho de que, la clase CuOOra cuenta con una variable de clase soleInstance, en caso de ser necesario borrar la instancia almacenada en dicha variable la clase cuenta con un método de clase clearSoleInstance

La URL para acceder a la aplicación es:
http://localhost:8080/CuOOra
