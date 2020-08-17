1. How to run
	step1: Load in the project.pl file.
	step2: Open BProlog terminal and type in the location of the file ['\......\project.pl']
	step3: To completely know which two rules conflict with each other just type "run."
	step4: To particularly find out if we have any conflict with the first rule, we have to type "conflict(1,X)." (X can be any capital Alphabet.)
	step5: To add other rules, we modify in the program by modifying the first statements.

	3. Vinay Mohan Behara 

3. Description
	The execution goes on in two parts. The first part is the Facts of the system.
	Facts: Here, we have the facts as the rules for the firewall, (If a message comes from a particular source and destined to another port, using a protocol and its corresponding action.)
	Rules: We design a method to find if two rules conflict each other, i.e. coming from the same source range and reaching the same destination range, same protocol but a different action to perform(this defines a conflict).
			It lets the user know the conflict between any two rules defined in the above program.

4. Output
	B-Prolog Version 8.1, All rights reserved, (C) Afany Software 1994-2014.
	| ?- ['/Users/swapn/Desktop/project.pl']
	consulting::/Users/swapn/Desktop/project.pl	
	| ?- conflict(1,2).

	yes
	| ?- conflict(1,X).
	X = 2 ?2
	yes
	| ?- run.
	Trying with the first rule

	conflict(1,2)
	Trying with the second rule
	no (no more conflicts.)

5. To take the input from the User
	proceed(P,N):-
	( N > 0 -> 
	write('give src_low'),nl,
	read(A),nl,
	write(source_lower(P,A)),nl,
	write('give src_upp'),nl,
	read(B),nl,
	write(source_upper(P,B)),nl,
	write('give destination_low'),nl,
	read(C),nl,
	write(destination_lower(P,C)),nl,
	write('give destination_upp'),nl,
	read(D),nl,
	write(destination_upper(P,D)),nl,
	write('give protocol'),nl,
	read(E),nl,
	write(protocol(P,E)),nl,
	write('give action'),nl,
	read(F),nl,
	write(action(P,F)),nl,
	M is N-1,nl,
	Q is P+1,nl,
	write(Q),nl,
	write(M),nl,
	proceed(Q,M);
	conflict(X,Y)
	).
	