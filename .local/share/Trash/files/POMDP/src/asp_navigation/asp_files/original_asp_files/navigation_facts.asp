
% DO NOT use room(a ; b). Computation takes forever.
% naming r1 for room on level 1. room number is after underscore
room(n09).
room(shiqi_corr).
room(madhu_corr).
room(ta_2).
room(ta_1).
room(vince_corr).
room(lander_corr).
room(main_corr).
room(exit_corr).
room(elevator_corr).

% naming e1 for elevator on level 1. then room where elevator is
elevator(e1_corr_watson).

% naming d1 for door on level 1. room where this door can be found after underscore
door(d1_n09_1).
door(d1_n09_2).




hasdoor(n09, d1_n09_1).
hasdoor(ta_1, d1_n09_1).




acc(shiqi_corr, ta_2).
acc(ta_2, vince_corr).
acc(vince_corr, exit_corr).
acc(shiqi_corr, ta_1).
acc(ta_1, madhu_corr).
acc(madhu_corr, lander_corr).
acc(ta_1, main_corr).
acc(exit_corr, main_corr).

% UNDER THIS IS OLD WILL DELETE

%what is this saying?
location(R) :- room(R).


dooracc(R1,D,R2) :- hasdoor(R1,D), hasdoor(R2,D), R1 != R2, door(D), room(R1),
location(R2).
dooracc(R1,D,R2) :- dooracc(R2,D,R1).

acc(L1,L1) :- location(L1).
acc(L1,L2) :- acc(L2,L1), location(L1), location(L2).
acc(L1,L2) :- acc(L1,L3), acc(L2,L3), location(L1), location(L2), location(L3).


ball(b0).
ball(b1).
ball(b2).
square(s0).
square(s1).
square(s2).
object(O) :- ball(O).
object(O) :- square(O).
