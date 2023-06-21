% Código visto en clase

% Hechos -> relacionan individuos concretos
% Propiedad ya que es solo de un individuo (aridad 1)
entrenador(ash). 
entrenador(misty).
entrenador(brock).

% Relación ya que es de más de un individuo
tieneA(ash, pikachu).
tieneA(ash, pidgeot).
tieneA(brock, pikachu).
tieneA(brock, charizard).
tieneA(brock, gyarados).
tieneA(misty, charizard).
tieneA(misty, carpincho).

/*
Consultas que podemos hacer con un solo predicado:
?- tieneA(ash, pikachu). %¿ash tiene a pikachu?
?- tieneA(ash, Pokemon). %¿qué pokemones tiene ash?
?- tieneA(Entrenador, pikachu). %¿qué entrenadores tienen a pikachu?
?- tieneA(Entrenador, Pokemon). %¿qué entrenador tiene a qué pokemon?
?- tieneA(Entrenador, _). %¿quienes tienen pokemones?
?- tieneA(_, Pokemon). %¿quienes son tenidos por un entrenador?
?- tieneA(ash, _). %¿tiene ash a algún pokemon?
?- tieneA(_, pikachu). %¿alguien tiene a pikachu?
?- tieneA(_,_). %¿alguien tiene a alguien?
*/

% Reglas -> infieren según las condiciones que les demos, usamos variables 

% Queremos saber quien es el mejor, decimos que todo entrenador quiere ser el mejor.
quiereSerElMejor(Tuki):-
    entrenador(Tuki).

% Ejemplo: un pokemon es bueno cuando su ataque es mayor a su defensa o bien su entrenador es poderoso.
esBuenPokemon(Pokemon):-
    pokemon(Pokemon, Ataque, Defensa),
    Ataque > Defensa.

esBuenPokemon(Pokemon):-
    tieneA(Entrenador, Pokemon),
    esPoderoso(Entrenador).

pokemon(pikachu, 100, 50).

% Un entrenador es poderoso cuando tiene tanto Pikachu como a Charizard, o bien es Ash.
esPoderoso(Entrenador):-
    tieneA(Entrenador, pikachu),
    tieneA(Entrenador, charizard).

esPoderoso(ash).

%soy un comentario :D

/*
Soy un comentario de varias lineas 
:D
*/
