# Correciones del ayudante durante todas las prácticas:

## Práctica 03. Modelo Entidad-Relación Extendido Parte 1. 

Hola!

Con respecto al diagrama:

Trabajar:
1. Como tienen la relación la cardinalidad significa: En un bazar trabaja muchos personas del personal organizador, pero un personal organizador solamente puede trabajar en un bazar. Si es cierto este caso?, el bazar lo estamos tomando no como si fueran otros bazares, si no como un mismo bazar que ocurre en diferentes fechas, entonces imaginemos que Claudia viene a trabajar en el bazar que ocurrio del 17 de febrero al 21 de febrero, como lo tienen Claudia ya no seria capaz de trabajar en otra fecha como por ejemplo del 18 al 24 de marzo. Entonces esta relación deberia ser de muchos a muchos.
2. Por su participación: Hay Bazares en donde no trabajan algun personal organizador. La idea es que si ocurre un evento, siempre se tenga a gente que este cuidando, limpiando y curando a la gente que visita el bazar, entonces deberia ser total.

Tener entre negocio y emprendedor:
1. Por participación: Hay negocios que no tienen algun emprendedor. Como el caso de uso menciona que por cada negocio se tiene que tener 2 emprendedores, entonces no puede pasar que un negocio no tenga emprendedores encargados de este.

Tener servicio, y producto:
1.Estos al ser entidades debiles, deberian marcar su relación con negocio ambas, como relaciones debiles.

Tener producto:
1. Stock dependera el como ustede vayan a manejar sus productos, por ejemplo. Si una tienda tiene 10 tarros de miel, entonces si lo guardan 1 por 1, solo cambiandole el id, o numSerie, van a tener 10 veces el tarro de miel con diferentes numeros de serie, entonces el atributo stock es un atributo calculado. Pero en cambio si ustedes solo registran 1 vez la miel para representar a los 10 tarros de miel, esto debe ser un atributo simple. Pero si es un atributo simple, y debemos de tener un control en el stock, entonces faltaria agregar un nuevo atributo llamado stock disponible, el cual se calcularia, con stock inicial menos la cantidad de productos que se compren, para asi tener el control del stock.

Pagar:
1. Por participación tiene: Hay bazares que no pagan algun ticket, creo que se refieren que hay bazares que justamente en los cuales ningun cliente haya comprado algun producto, pero idealmente esta pensado que al menos se genero 1 compra. Entonces en este caso ustedes pueden suponer que al menos un cliente genero un ticket. Vi su reporte, y justo consideraron el peor de los casos, asi que si lo quieren manejar asi, no hay problema.

2. Comision no deberia ser un atributo calculado, ya que justamente siempre se estara cobrando un 20%.

Ticket:
1. Faltaria tener una relación entre productos y servicios, para tener justo el control del stock. Esta relación podria ser indicar, poseer, el cual tenga un atributo en la relación llamado cantidad, para poder hacer esta parte del stock, y justo dependiendo de como guarden sus productos, sera un atributo simple, o un atributo calculado. En el caso de servicio, justamente podrian poner duración en la relación.

Agenda:
1. Probablemente Agenda les meta ruido más adelante, mas que nada por su relación tener, no esta mal un bazar tiene una agenda y una agenda lo tiene un bazar, pero ustedes hicieron entidad debil a agenda, entonces la idea de agenda es guardar en una fecha especifica un negocio, para que aparte el dia. Entonces al pasar la relacion tener a relacional, este generara una tabla con los atributos de bazar y los atributos de agenda, entonces supongamos para la fecha 12 de junio, van a tener 20 veces la misma información del bazar, pero esas 20 veces corresponde a los 20 negocios que quedaron en esa fecha. Entonces mas bien agenda no se comporta como 1 agenda le corresponde a 1 bazar, si no mas bien a un bazar tiene varios negocios en su agenda ya que por ser entidad debil, se tendra varios para la misma fecha. Entonces la relación seria de 1 a muchos.

Registrar:
1.Por participación: Hay negocios que no se registran en alguna agenda, quizas si, cuando es venta por internet, hay agendas que no se registran algun negocio,en este caso por ser entidad debil, no puede existir agendas que no se haya registrado algun negocio. Entonces deberia ser una participación total.

Con respecto al reporte:
1. Bastante bien, solo cuiden en utilizar el verbo que escogieron para la relación para estar traduciendo, ya que si utilizan otro verbo, pues se puede cambiar el acción.


Puede que se me escapara algunos detalles, pero los iremos corrigiendo en cada práctica que sigue. Si necesitan un poco más de tiempo, no se preocupen, lo checaremos el lunes.

Saludos

## Práctica 03. Modelo Entidad-Relación Extendido Parte 2. 


Con respecto a la práctica:
1. No les recomiendo que utilicen mucho las entidades debiles, como tal estan haciendo producto y servicio debiles en negocio,y a su vez estan haciendo ticket debil a producto y servicio y compra. Se les complicara bastante al hacer la traducción, yo les recomiendo que ticket no lo manejen como entidad debil. Y que producto y servicio solo sean entidades debiles con respecto a negocio. Para evitar muchas complicaciones.


Poseer entre ticket y producto:
1. Por participacion tienen: Hay productos que no lo posee algun ticket, si puede ser el caso, quizas sea un producto nuevo que a lo mejor alguien no ha comprado, pero todos los tickets deben de poseer algun producto?, que pasa si es un negocio que nada más tiene servicios, en el ticket, pues no va aparecer ningun producto, entonces debe ser parcial de lado de ticket.

Poseer entre ticket y servicio:
1. Por participación tienen: Hay servicios que no lo posee algun ticket, si mismo caso que el producto quizas no se han contradado, pero todos los tickets deben de poseer algun servicio? Pues no, que tal si el negocio nada más da productos, y no ofrecen ningun servicio, entonces debe ser participación parcial del lado de ticket.


Agendar:
1. No es muy conveniente tener relaciones 3-arias, ya que pierde un poco el contexto al pasarlo al relacional, en este caso si puede funcionar bastante bien, ya que la relación tendra a bazar, a estand, a negocio y a la fecha. Pero recuerden agendar no debe de tener llaves, es una relación no es una entidad, entonces en este caso fechaAsistencia seria simplemente un atributo. Se podria hacer, pero ya seria una consideración de diseño. Pero en la parte del modelo entidad relacion, no marquen fechaAsistencia con el discriminante, si quieren tomar una consideración de diseño ya seria en el modelo relacional.

2. Podrian hacer otra forma, podrian quitar a estand de la relación y hacer una relación con negocio, para que si se agenda pues ya se sepa que estand va a tener. Y asi evitan esta relación 3-arias. Claro esto seria si siente que se les esta complicando un poco.

Con respecto al reporte:
1. Bastante bien!

Van bastante bien, aun hay cositas que cambiar pero ahi la llevan. Con las siguientes entregas seguiremos puliendo el trabajo.

Saludos

## Práctica 04. Modelo Relacional

Hola!

Con respecto al modelo ER:
1. Con respecto a agendar, como les comente no marquen como llave primaria FechaAsistencia, que pasa si 20 negocios van al mismo dia, la llave FechaAsistencia se repetiria las 20 veces que corresponde al dia que ese negocio, por definición las llaves primarias no se pueden repetir. Entonces no lo marquen y tampoco lo tomen como consideración de diseño, ya vi que si van a tener este problema mas adelante en la implementación y cuando les di su retroalimentación anterior no lo habia considerado. Quizas si funcione, si hacen una llave primaria compuesta por la fecha, y el idNegocio. Entonces en ese caso solo deberan de representarlo en el modelo relacional.

Pero bueno fuera de este detalle, se aplicaron los demas cambios.

Con respecto al modelo relacional:
1. Se que les mencione que trabajador, lo pueden meter todo en una tabla por ser una consideración de diseño, pero hay ciertos problemas que van a tener. En primera como lo tienen como ven tienen idNegocio, pero como esta tabla representa a todos los trabajadores, puede darse el caso de que sea una persona que esta trabajando como medico, y que tenga un negocio pero este no sea emprendedor. O otra situación los valores null,no son tan recomendables, entonces las personas que sean medicos, o de seguridad, no van a tener idNegocio. Entonces como Emprendedor juega un papel diferente a los demas trabajadores, yo les recomiendo que si hagan su tabla correspondiente de Emprendedor, ya que este se va a relacionar con negocio y ticket, tanto seguridad,como limpieza y medico no se relacionan con esta parte.

2. Ustedes no pasaron a tablas fechadeAsistencia, que le corresponde al personal de seguridad, limpieza y medico. Eso tambien es un problema. Entonces si yo le sugiero que si hagan su consideración de diseño pero nada más con personal organizador, y a emprendedor si haganle su propia tabla.

3. Pusieron como PK a idNegocio, pero esto sale de la relación emprender, todas las llaves generadas por relacionas seran llaves foraneas.

4. Claro al separar a los trabajadores de los emprendedores, deberan generar aparte HorarioEmprendedor, telefonoEmprendedor, y correoEmprendedor, pero ya con esta modificación podran hacer su tabla fechaDeAsistenciaTrabajador.

5. En agendar hicieron una llave compuesta de 4 elementos, no les recomiendo que hagan esto, es mas complicado de mantener, se que fue una consideración de diseño, pero mejor no manejen llaves primarias en las relaciones que generan tabla,y menos en relaciones 3-arias, es un poco mas complejo de tratar. Ya cuando solamente la llave compuesta es de 2, es mas sencillo, que de 4, entonces si toman lo que les puse arriba, podrian manejarlo de esa forma. Pero insisto, hay ciertos detalles, mas que nada en la implementación que deberan de cuidar.

6. RegistrarProducto, solo debe de tener llaves foraneas, no son llaves primarias.
7. Misma situación que registrar servicio.

8. Trabajar: No debe de tener llaves primarias, ya que es una relación, tanto idBazar, como RFC, nada más seran llaves foraneas. Y nuevamente otro problema, realmente los emprendedores si van a trabajar en bazares, pero es de cierta forma aparte del bazar, por eso se tiene la agenda que ya maneja esta parte.

Entonces acuerdense de estas reglas, lo unico que genera llaves primarias, o son el identificador de una entidad fuerte, o el identificador con el discriminante de una entidad debil, o un atributo multivaluado que genera tabla, ya que esta tendra una llave compuesta. Estas seran las unicas que generaran llaves primarias. Tambien pueden meter las especializaciones, pero bueno normalmente son tratadas como entidades fuertes.

Todas las relaciones solamente generaran llaves foraneas.

Les faltaron conexiones, se que ya me lo mencionaron, pero si no se ve bien que se tengan tablas inconexas. Es preferible que entreguen un poco más tarde, a que entreguen incompleto, ya que al final de cuentas esto les resta presentación y calificacion. Por esta vez no les bajare por estas tablas inconexas, pero tengan cuidado.


Con respecto al reporte:
1. Esta perfecto! Explicaron correctamente todo lo que pusieron.

## Práctica 05. Lenguaje para Definición de Datos. DDL, (Data Definition Language).

Hola!
Con respecto a su modelo ER:
1. Excelente hicieron todos los cambios

Con respecto a su modelo relacional:
1. Es bastante complicado de checar, ya que el fondo me parece como gris, y los recuadros estan en transparente, por mientras escriben en blanco. Yo les sugiero que lo cambien, porque esto podria bajarles en la presentación del trabajo.
2. Bien hicieron todos los cambios pertinentes.

Con respecto al DDL:
1. Excelente su codigo se ejecuta correctamente.
2. En Emprendedor les falto fechaNacimiento.
3. En telefonoEmprendedor, debe ser una llave primaria compuesta por (RFC,telefonoEmprendedor)
4. En telefonoPersonalOrganizador, debe ser una llave primaria compuesta por (RFC, telefonoPersonalOrganizador)
5. En CorreoPersonalOrganizador, debe ser una llave primaria compuesta por (RFC, correoOrganizador), ahorita checando su modelo relacional, justamente se confundieron ya que no le pusieron PK, a esos atributos, cuando si deberia ser PK, justo por ser atributos multivaluados.
6. Pero bueno fuera de estos detalles, tienen todos sus atributos junto con todo sus restricciones de identidad, y de integridad referencial.
7. Les falto especificar restricciones de dominio para cada una de sus atributos de cada una de sus tablas, como lo pide la práctica.

Con respecto a su reporte:
1. Justo aqui tampoco definieron sus restricciones de dominio, entonces deberan escoger entre not null, check o default para cada una de sus atributos. Pero bueno, el reporte esta bien.


Saludos

## Práctica 06. Mantenimiento de Llaves Foráneas.

Hola!

Con respecto al DDL:
1. Excelente tienen documentación completa sobre todas sus tablas, sobre todas sus columnas, y sobre todas sus restricciones.
2. Excelente todas sus llaves foraneas, tiene sus politicas de mantenimiento ON UPDATE y ON DELETE.

Con respecto a la investigación:
1. Perfecto!

Saludos

## Práctica 07 
aún no hay retro. :( 