source_lower(1,10).
source_upper(1,20).
destination_lower(1,30).
destination_upper(1,40).
protocol(1,0).
action(1,0).
source_lower(2,10).
source_upper(2,10).
destination_lower(2,30).
destination_upper(2,30).
protocol(2,0).
action(2,1).
source_lower(3,10).
source_upper(3,10).
destination_lower(3,30).
destination_upper(3,30).
protocol(3,1).
action(3,0).
source_lower(4,10).
source_upper(4,15).
destination_lower(4,20).
destination_upper(4,25).
protocol(4,0).
action(4,0).
source_lower(5,50).
source_upper(5,60).
destination_lower(5,70).
destination_upper(5,80).
protocol(5,0).
action(5,1).


conflict(X,Y):-
	source_lower(X,A),
	source_upper(X,B),
	destination_lower(X,C), 
	destination_upper(X,D), 
	protocol(X,E), 
	action(X,F),
	source_lower(Y,G), 
	source_upper(Y,H), 
	destination_lower(Y,I), 
	destination_upper(Y,J), 
	protocol(Y,K), 
	action(Y,L),
	(not (A>H ; G>B)),(not (C>J ; I>D)),E=K,F\=L.

run:-
	write('Trying with the first rule'),nl,
	conflict(1,P),nl,
	write(conflict(1,P)),nl,
	write('Trying with the second rule'),nl,
	conflict(2,P),nl,
	write(conflict(2,P)),nl,
	write('Trying with the third rule'),nl,
	conflict(3,P),nl,
	write(conflict(3,P)),nl,
	write('Trying with the fourth rule'),nl,
	conflict(4,P),nl,
	write(conflict(4,P)),nl,
	write('Trying with the fifth rule'),nl,
	conflict(5,P),nl,
	write(conflict(5,P)).
	
	
  

	