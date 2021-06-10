% Identificador del genero de un videojuego

% Alumno: Alcaraz Domínguez, Guillermo Augusto
% Código: 217294148
% Carrera: Ingeniería en informática

% Materia: Sistemas Basados en Conocimiento
% Ciclo: 2021-A


% Evitar warnings por Singletons (Desactiva warnings del principio)
:- style_check(-singleton).

% Proceso de identificación por casos...
identifica(X) :- assert(videojuego(pendiente)), id_videojuego(X), limpiar.


id_videojuego(V) :- nl, write("* Intentado con Beat them up..."), nl, beat_them_up(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Lucha..."), nl, lucha(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con FPS..."), nl, fps(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Accion en Tercera Persona..."), nl, accion_tercera_persona(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Infiltracion..."), nl, infiltracion(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Plataformas..."), nl, plataformas(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Simulacion de Combate..."), nl, simulacion_combate(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Arcade..."), nl, arcade(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Deportes..."), nl, deportes(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Carreras..."), nl, carreras(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Agilidad Mental..."), nl, agilidad_mental(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Educacion..."), nl, educacion(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Aventura Clasica..."), nl, aventura_clasica(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Aventura Grafica..."), nl, aventura_grafica(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Musicales..."), nl, musicales(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Party Game..."), nl, party_game(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.
id_videojuego(V) :- nl, write("* Intentado con Online..."), nl, online(V), nl, write("*** GENERO ENCONTRADO :D ***"), nl, !.

id_videojuego(V) :- nl, write("*** GENERO NO ENCONTRADO >:( ***"), nl, limpiar, fail.



% Base de Conocimiento

% Reglas Objetivo:

beat_them_up(V) :- peleas(V), multiples_enemigos(V), enemigos_ia(V), niveles(V), vista_lateral(V).
lucha(V) :- peleas(V), basado_en_tecnicas(V), enemigo_jugador(V), enemigos_ia(V), vista_lateral(V).
fps(V) :- disparos_armas(V), reflejos_precision(V), primera_persona(V), single_player(V), multiplayer(V).
accion_tercera_persona(V) :- disparos_armas(V), peleas(V), interraccion_con_entorno(V), vista_desde_atras(V), libertad_de_movimiento(V).
infiltracion(V) :- sigilo(V), estrategia(V), confrontacion_directa(V).
plataformas(V) :- obstaculos_fisicos(V), saltar_escalar_agacharse(V), ataques(V).
simulacion_combate(V) :- disparos_armas(V), tematica_guerra(V), realismo(V).
arcade(V) :- jugabilidad_simple(V), sin_historia(V), largo_repetitivo(V).
deportes(V) :- simula_deportes(V).
carreras(V) :- vehiculos(V), competir_ganar(V).
agilidad_mental(V) :- pensar(V), ejercicios_de_dificultad(V), habilidad_mental(V).
educacion(V) :- informacion(V), conceptos(V).
aventura_clasica(V) :- acertijos(V), textual(V), ordenes_del_teclado(V).
aventura_grafica(V) :- acertijos(V), click_and_point(V), mouse(V).
musicales(V) :- tematica_musical(V), karaoke_instrumentos_musicales_baile(V).
party_game(V) :- multiplayer(V), turnos(V), tablero_virtual(V), pruebas(V), competir_ganar(V).
online(V) :- relacionarse(V), chat(V), competir_ganar(V), multiplayer(V), internet(V).


% Reglas B?sicas:

% Explicacion de para que se usa el simbolo !
% https://programacion.net/articulo/curso_intermedio_de_programacion_en_prolog_88/4#:~:text=El%20corte%20es%20un%20predicado,signo%20de%20admiración%20(!).


% Los siguientes comentarios me ayuda a saber en cual genero voy, 
% por eso no estaran las reglas completas en cada genero ya que puede
% que ya las haya agregado anteriormente

% ### BEAT THEM UP ###

peleas(V) :- videojuego(peleas), !.
peleas(V) :- videojuego(no_peleas), !, fail.
peleas(V) :- write("?"), write(V), write(" tiene peleas? (s/n) "), read(R), R=s, assert(videojuego(peleas)).
peleas(V) :- assert(videojuego(no_peleas)), fail.

multiples_enemigos(V) :- videojuego(multiples_enemigos), !.
multiples_enemigos(V) :- videojuego(no_multiples_enemigos), !, fail.
multiples_enemigos(V) :- write("?"), write(V), write(" tiene multiples enemigos al mismo tiempo? (s/n) "), read(R), R=s, assert(videojuego(multiples_enemigos)).
multiples_enemigos(V) :- assert(videojuego(no_multiples_enemigos)), fail.

enemigos_ia(V) :- videojuego(enemigos_ia), !.
enemigos_ia(V) :- videojuego(no_enemigos_ia), !, fail.
enemigos_ia(V) :- write("?"), write(V), write("  tiene enemigos controlados por IA? (s/n) "), read(R), R=s, assert(videojuego(enemigos_ia)).
enemigos_ia(V) :- assert(videojuego(no_enemigos_ia)), fail.

niveles(V) :- videojuego(niveles), !.
niveles(V) :- videojuego(no_niveles), !, fail.
niveles(V) :- write("?"), write(V), write(" se avanza en el juego mediante niveles? (s/n) "), read(R), R=s, assert(videojuego(niveles)).
niveles(V) :- assert(videojuego(no_niveles)), fail.

vista_lateral(V) :- videojuego(vista_lateral), !.
vista_lateral(V) :- videojuego(no_vista_lateral), !, fail.
vista_lateral(V) :- write("?"), write(V), write(" tiene una vista lateral? (s/n) "), read(R), R=s, assert(videojuego(vista_lateral)).
vista_lateral(V) :- assert(videojuego(no_vista_lateral)), fail.

% ### LUCHA ###

basado_en_tecnicas(V) :- videojuego(basado_en_tecnicas), !.
basado_en_tecnicas(V) :- videojuego(no_basado_en_tecnicas), !, fail.
basado_en_tecnicas(V) :- write("?"), write(V), write(" esta basado en tecnicas de lucha? (s/n) "), read(R), R=s, assert(videojuego(basado_en_tecnicas)).
basado_en_tecnicas(V) :- assert(videojuego(no_basado_en_tecnicas)), fail.

enemigo_jugador(V) :- videojuego(enemigo_jugador), !.
enemigo_jugador(V) :- videojuego(no_enemigo_jugador), !, fail.
enemigo_jugador(V) :- write("?"), write(V), write("  tiene la posibilidad de que el enemigo sea un jugador humano? (s/n) "), read(R), R=s, assert(videojuego(enemigo_jugador)).
enemigo_jugador(V) :- assert(videojuego(no_enemigo_jugador)), fail.

% ### FPS ###

disparos_armas(V) :- videojuego(disparos_armas), !.
disparos_armas(V) :- videojuego(no_disparos_armas), !, fail.
disparos_armas(V) :- write("?"), write(V), write(" tiene disparos o armas? (s/n) "), read(R), R=s, assert(videojuego(disparos_armas)).
disparos_armas(V) :- assert(videojuego(no_disparos_armas)), fail.

reflejos_precision(V) :- videojuego(reflejos_precision), !.
reflejos_precision(V) :- videojuego(no_reflejos_precision), !, fail.
reflejos_precision(V) :- write("?"), write(V), write(" requiere reflejos y precision? (s/n) "), read(R), R=s, assert(videojuego(reflejos_precision)).
reflejos_precision(V) :- assert(videojuego(no_reflejos_precision)), fail.

primera_persona(V) :- videojuego(primera_persona), !.
primera_persona(V) :- videojuego(no_primera_persona), !, fail.
primera_persona(V) :- write("?"), write(V), write(" tiene vista en primera persona? (s/n) "), read(R), R=s, assert(videojuego(primera_persona)).
primera_persona(V) :- assert(videojuego(no_primera_persona)), fail.

single_player(V) :- videojuego(single_player), !.
single_player(V) :- videojuego(no_single_player), !, fail.
single_player(V) :- write("?"), write(V), write(" tiene single player? (s/n) "), read(R), R=s, assert(videojuego(single_player)).
single_player(V) :- assert(videojuego(no_single_player)), fail.

multiplayer(V) :- videojuego(multiplayer), !.
multiplayer(V) :- videojuego(no_multiplayer), !, fail.
multiplayer(V) :- write("?"), write(V), write(" tiene multiplayer? (s/n) "), read(R), R=s, assert(videojuego(multiplayer)).
multiplayer(V) :- assert(videojuego(no_multiplayer)), fail.

% ### ACCION EN TERCERA PERSONA ###

interraccion_con_entorno(V) :- videojuego(interraccion_con_entorno), !.
interraccion_con_entorno(V) :- videojuego(no_interraccion_con_entorno), !, fail.
interraccion_con_entorno(V) :- write("?"), write(V), write(" tiene el personaje interaccion con el entorno? (s/n) "), read(R), R=s, assert(videojuego(interraccion_con_entorno)).
interraccion_con_entorno(V) :- assert(videojuego(no_interraccion_con_entorno)), fail.

vista_desde_atras(V) :- videojuego(vista_desde_atras), !.
vista_desde_atras(V) :- videojuego(no_vista_desde_atras), !, fail.
vista_desde_atras(V) :- write("?"), write(V), write(" tiene la vista desde la parte de atras del personaje? (s/n) "), read(R), R=s, assert(videojuego(vista_desde_atras)).
vista_desde_atras(V) :- assert(videojuego(no_vista_desde_atras)), fail.

libertad_de_movimiento(V) :- videojuego(libertad_de_movimiento), !.
libertad_de_movimiento(V) :- videojuego(no_libertad_de_movimiento), !, fail.
libertad_de_movimiento(V) :- write("?"), write(V), write(" tiene libertad de movimiento para explorar? (s/n) "), read(R), R=s, assert(videojuego(libertad_de_movimiento)).
libertad_de_movimiento(V) :- assert(videojuego(no_libertad_de_movimiento)), fail.

% ### INFILTRACION ###

sigilo(V) :- videojuego(sigilo), !.
sigilo(V) :- videojuego(no_sigilo), !, fail.
sigilo(V) :- write("?"), write(V), write(" se basa en el sigilo? (s/n) "), read(R), R=s, assert(videojuego(sigilo)).
sigilo(V) :- assert(videojuego(no_sigilo)), fail.

estrategia(V) :- videojuego(estrategia), !.
estrategia(V) :- videojuego(no_estrategia), !, fail.
estrategia(V) :- write("?"), write(V), write(" requiere una estrategia para ganar? (s/n) "), read(R), R=s, assert(videojuego(estrategia)).
estrategia(V) :- assert(videojuego(no_estrategia)), fail.

confrontacion_directa(V) :- videojuego(confrontacion_directa), !.
confrontacion_directa(V) :- videojuego(no_confrontacion_directa), !, fail.
confrontacion_directa(V) :- write("?"), write(V), write(" busca evitar la confrontacion directa? (s/n) "), read(R), R=s, assert(videojuego(confrontacion_directa)).
confrontacion_directa(V) :- assert(videojuego(no_confrontacion_directa)), fail.

% ### PLATAFORMAS ###

obstaculos_fisicos(V) :- videojuego(obstaculos_fisicos), !.
obstaculos_fisicos(V) :- videojuego(no_obstaculos_fisicos), !, fail.
obstaculos_fisicos(V) :- write("?"), write(V), write(" tiene escenarios con obstaculos fisicos? (s/n) "), read(R), R=s, assert(videojuego(obstaculos_fisicos)).
obstaculos_fisicos(V) :- assert(videojuego(no_obstaculos_fisicos)), fail.

saltar_escalar_agacharse(V) :- videojuego(saltar_escalar_agacharse), !.
saltar_escalar_agacharse(V) :- videojuego(no_saltar_escalar_agacharse), !, fail.
saltar_escalar_agacharse(V) :- write("?"), write(V), write(" tiene el personaje que saltar, escalar, agacharse? (s/n) "), read(R), R=s, assert(videojuego(saltar_escalar_agacharse)).
saltar_escalar_agacharse(V) :- assert(videojuego(no_saltar_escalar_agacharse)), fail.

ataques(V) :- videojuego(ataques), !.
ataques(V) :- videojuego(no_ataques), !, fail.
ataques(V) :- write("?"), write(V), write(" tiene el personaje ataques especiales? (s/n) "), read(R), R=s, assert(videojuego(ataques)).
ataques(V) :- assert(videojuego(no_ataques)), fail.

% ### SIMULACION DE COMBATE ###

tematica_guerra(V) :- videojuego(tematica_guerra), !.
tematica_guerra(V) :- videojuego(no_tematica_guerra), !, fail.
tematica_guerra(V) :- write("?"), write(V), write(" tiene tematica de guerra? (s/n) "), read(R), R=s, assert(videojuego(tematica_guerra)).
tematica_guerra(V) :- assert(videojuego(no_tematica_guerra)), fail.

realismo(V) :- videojuego(realismo), !.
realismo(V) :- videojuego(no_realismo), !, fail.
realismo(V) :- write("?"), write(V), write(" trata de ser muy realista? (s/n) "), read(R), R=s, assert(videojuego(realismo)).
realismo(V) :- assert(videojuego(no_realismo), fail.

% ### ARCADE ###

jugabilidad_simple(V) :- videojuego(jugabilidad_simple), !.
jugabilidad_simple(V) :- videojuego(no_jugabilidad_simple), !, fail.
jugabilidad_simple(V) :- write("?"), write(V), write(" tiene una jugabilidad simple? (s/n) "), read(R), R=s, assert(videojuego(jugabilidad_simple)).
jugabilidad_simple(V) :- assert(videojuego(no_jugabilidad_simple)), fail.

sin_historia(V) :- videojuego(sin_historia), !.
sin_historia(V) :- videojuego(no_sin_historia), !, fail.
sin_historia(V) :- write("?"), write(V), write(" no tiene historia? (s/n) "), read(R), R=s, assert(videojuego(sin_historia)).
sin_historia(V) :- assert(videojuego(no_sin_historia)), fail.

largo_repetitivo(V) :- videojuego(largo_repetitivo), !.
largo_repetitivo(V) :- videojuego(no_largo_repetitivo), !, fail.
largo_repetitivo(V) :- write("?"), write(V), write(" es largo o repetitivo ? (s/n) "), read(R), R=s, assert(videojuego(largo_repetitivo)).
largo_repetitivo(V) :- assert(videojuego(no_largo_repetitivo)), fail.

% ### DEPORTES ###

simula_deportes(V) :- videojuego(simula_deportes), !.
simula_deportes(V) :- videojuego(no_simula_deportes), !, fail.
simula_deportes(V) :- write("?"), write(V), write(" trata de simular deportes ? (s/n) "), read(R), R=s, assert(videojuego(simula_deportes)).
simula_deportes(V) :- assert(videojuego(no_simula_deportes)), fail.

% ### CARRERAS ###

vehiculos(V) :- videojuego(vehiculos), !.
vehiculos(V) :- videojuego(no_vehiculos), !, fail.
vehiculos(V) :- write("?"), write(V), write(" tiene vehiculos? (s/n) "), read(R), R=s, assert(videojuego(vehiculos)).
vehiculos(V) :- assert(videojuego(no_vehiculos)), fail.

competir_ganar(V) :- videojuego(competir_ganar), !.
competir_ganar(V) :- videojuego(no_competir_ganar), !, fail.
competir_ganar(V) :- write("?"), write(V), write(" se basa en competir y ganar? (s/n) "), read(R), R=s, assert(videojuego(competir_ganar)).
competir_ganar(V) :- assert(videojuego(no_competir_ganar)), fail.

% ### AGILIDAD MENTAL ###

pensar(V) :- videojuego(pensar), !.
pensar(V) :- videojuego(no_pensar), !, fail.
pensar(V) :- write("?"), write(V), write(" requiere pensar? (s/n) "), read(R), R=s, assert(videojuego(pensar)).
pensar(V) :- assert(videojuego(no_pensar)), fail.

ejercicios_de_dificultad(V) :- videojuego(multipejercicios_de_dificultadlayer), !.
ejercicios_de_dificultad(V) :- videojuego(no_ejercicios_de_dificultad), !, fail.
ejercicios_de_dificultad(V) :- write("?"), write(V), write(" tiene ejercicios de dificultad? (s/n) "), read(R), R=s, assert(videojuego(ejercicios_de_dificultad)).
ejercicios_de_dificultad(V) :- assert(videojuego(no_ejercicios_de_dificultad)), fail.

habilidad_mental(V) :- videojuego(habilidad_mental), !.
habilidad_mental(V) :- videojuego(no_habilidad_mental), !, fail.
habilidad_mental(V) :- write("?"), write(V), write(" desarrolla la habilidad mental ? (s/n) "), read(R), R=s, assert(videojuego(habilidad_mental)).
habilidad_mental(V) :- assert(videojuego(no_habilidad_mental)), fail.

% ### EDUCACION ###

informacion(V) :- videojuego(informacion), !.
informacion(V) :- videojuego(no_informacion), !, fail.
informacion(V) :- write("?"), write(V), write(" muestra informacion? (s/n) "), read(R), R=s, assert(videojuego(informacion)).
informacion(V) :- assert(videojuego(no_informacion)), fail.

conceptos(V) :- videojuego(conceptos), !.
conceptos(V) :- videojuego(no_conceptos), !, fail.
conceptos(V) :- write("?"), write(V), write(" muestra conceptos? (s/n) "), read(R), R=s, assert(videojuego(conceptos)).
conceptos(V) :- assert(videojuego(no_conceptos)), fail.

% ### AVENTURA CLASICA ###

acertijos(V) :- videojuego(acertijos), !.
acertijos(V) :- videojuego(no_acertijos), !, fail.
acertijos(V) :- write("?"), write(V), write(" tiene acertijos? (s/n) "), read(R), R=s, assert(videojuego(acertijos)).
acertijos(V) :- assert(videojuego(no_acertijos)), fail.

textual(V) :- videojuego(textual), !.
textual(V) :- videojuego(no_textual), !, fail.
textual(V) :- write("?"), write(V), write(" ocurre de manera textual? (s/n) "), read(R), R=s, assert(videojuego(textual)).
textual(V) :- assert(videojuego(no_textual)), fail.

ordenes_del_teclado(V) :- videojuego(ordenes_del_teclado), !.
ordenes_del_teclado(V) :- videojuego(no_ordenes_del_teclado), !, fail.
ordenes_del_teclado(V) :- write("?"), write(V), write(" se juega usando ordenes del teclado? (s/n) "), read(R), R=s, assert(videojuego(ordenes_del_teclado)).
ordenes_del_teclado(V) :- assert(videojuego(no_ordenes_del_teclado)), fail.

% ### AVENTURA GRAFICA ###

click_and_point(V) :- videojuego(click_and_point), !.
click_and_point(V) :- videojuego(no_click_and_point), !, fail.
click_and_point(V) :- write("?"), write(V), write(" es de tipo click and point? (s/n) "), read(R), R=s, assert(videojuego(click_and_point)).
click_and_point(V) :- assert(videojuego(no_click_and_point)), fail.

mouse(V) :- videojuego(mouse), !.
mouse(V) :- videojuego(no_mouse), !, fail.
mouse(V) :- write("?"), write(V), write(" se juega usando el mouse? (s/n) "), read(R), R=s, assert(videojuego(mouse)).
mouse(V) :- assert(videojuego(no_mouse)), fail.

% ### MUSICALES ###

tematica_musical(V) :- videojuego(tematica_musical), !.
tematica_musical(V) :- videojuego(no_tematica_musical), !, fail.
tematica_musical(V) :- write("?"), write(V), write(" tiene tematica musical? (s/n) "), read(R), R=s, assert(videojuego(tematica_musical)).
tematica_musical(V) :- assert(videojuego(no_tematica_musical)), fail.

karaoke_instrumentos_musicales_baile(V) :- videojuego(karaoke_instrumentos_musicales_baile), !.
karaoke_instrumentos_musicales_baile(V) :- videojuego(no_karaoke_instrumentos_musicales_baile), !, fail.
karaoke_instrumentos_musicales_baile(V) :- write("?"), write(V), write(" tiene karaoke, instrumentos musicales o baile? (s/n) "), read(R), R=s, assert(videojuego(karaoke_instrumentos_musicales_baile)).
karaoke_instrumentos_musicales_baile(V) :- assert(videojuego(no_karaoke_instrumentos_musicales_baile)), fail.

% ### PARTY GAME ###

turnos(V) :- videojuego(turnos), !.
turnos(V) :- videojuego(no_turnos), !, fail.
turnos(V) :- write("?"), write(V), write(" tiene turnos para cada jugador? (s/n) "), read(R), R=s, assert(videojuego(turnos)).
turnos(V) :- assert(videojuego(no_turnos)), fail.

tablero_virtual(V) :- videojuego(tablero_virtual), !.
tablero_virtual(V) :- videojuego(no_tablero_virtual), !, fail.
tablero_virtual(V) :- write("?"), write(V), write(" tiene un tablero virtual? (s/n) "), read(R), R=s, assert(videojuego(tablero_virtual)).
tablero_virtual(V) :- assert(videojuego(no_tablero_virtual)), fail.

pruebas(V) :- videojuego(pruebas), !.
pruebas(V) :- videojuego(no_pruebas), !, fail.
pruebas(V) :- write("?"), write(V), write(" tiene pruebas? (s/n) "), read(R), R=s, assert(videojuego(pruebas)).
pruebas(V) :- assert(videojuego(no_pruebas)), fail.

% ### ONLINE ###

relacionarse(V) :- videojuego(relacionarse), !.
relacionarse(V) :- videojuego(no_relacionarse), !, fail.
relacionarse(V) :- write("?"), write(V), write(" permite relacionarse? (s/n) "), read(R), R=s, assert(videojuego(relacionarse)).
relacionarse(V) :- assert(videojuego(no_relacionarse)), fail.

chat(V) :- videojuego(chat), !.
chat(V) :- videojuego(no_chat), !, fail.
chat(V) :- write("?"), write(V), write(" tiene chat? (s/n) "), read(R), R=s, assert(videojuego(chat)).
chat(V) :- assert(videojuego(no_chat)), fail.

internet(V) :- videojuego(internet), !.
internet(V) :- videojuego(no_internet), !, fail.
internet(V) :- write("?"), write(V), write(" requiere internet? (s/n) "), read(R), R=s, assert(videojuego(internet)).
internet(V) :- assert(videojuego(no_internet)), fail.

% Limpieza de Memoria de Trabajo entre inferencias..

limpiar :- nl, write("..:: Limpiando memoria de trabajo ::.."), nl, nl, retractall(videojuego(_)), write(".: Memoria limpia :."), nl, nl.