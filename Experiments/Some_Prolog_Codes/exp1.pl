person(john_fitzgerald_kennedy).
male(john_fitzgerald_kennedy).
nationality(john_fitzgerald_kennedy, american).

born(john_fitzgerald_kennedy, may-29-1917).
died(john_fitzgerald_kennedy, november-22-1963).
referred_to(john_fitzgerald_kennedy, jfk).

profession(john_fitzgerald_kennedy, politician).
profession(john_fitzgerald_kennedy, president).
president_number(john_fitzgerald_kennedy, thirty_fifth).
assassinated(john_fitzgerald_kennedy, in_office).
presidency_duration(john_fitzgerald_kennedy, three_years).

served_at(john_fitzgerald_kennedy, cold_war).
work_concern(john_fitzgerald_kennedy, soviet_union).
work_concern(john_fitzgerald_kennedy, cuba).

member(john_fitzgerald_kennedy, kennedy_family).
member(john_fitzgerald_kennedy, democrat).
represent(john_fitzgerald_kennedy, massachusetts).
represent_in(john_fitzgerald_kennedy, houses_of_us_congress).

born_in(john_fitzgerald_kennedy, wealthy_family).
born_in(john_fitzgerald_kennedy, political_family).
born_in(john_fitzgerald_kennedy, brookline_massachusetts).

graduated_from(john_fitzgerald_kennedy, harvard_university).
graduated_in(john_fitzgerald_kennedy, 1940).
joined(john_fitzgerald_kennedy, us_naval_reserve).


who_is_jfk(X):-person(X), write("35th american president").
birthdate_of_jfk(Y):-person(X), born(X,Y).
deathdate_of_jfk(Y):-person(X), died(X,Y).
american_president(X):-person(X), nationality(X,american), profession(X, president).
duration_of_president(Y):- person(X), presidency_duration(X, Y).
majority_work_concern(Y):- person(X), work_concern(X, Y).
represented_city(Y):- person(X), represent(X,Y).
represented_in(Y) :- person(X), represent_in(X,Y).
born_into(X,Y):- person(X), born_in(X,Y).
where_jfk_joined_after_graduation(Y):- person(X), joined(X, Y).
when_jfk_joined_us_naval_reserve(Y):- person(X), graduated_in(X, Y).


























