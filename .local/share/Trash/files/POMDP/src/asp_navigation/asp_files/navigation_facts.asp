
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
door(d1_shiqi_corr).
door(d1_madhu_corr).
door(d1_ta_2).
door(d1_ta_1).
door(d1_vince_corr).
door(d1_lander_corr).
door(d1_main_corr).
door(d1_exit_corr).
door(d1_elevator_corr).




hasdoor(n09, d1_n09_1).
hasdoor(ta_1, d1_n09_1).
hasdoor(shiqi_corr, d1_shiqi_corr).
hasdoor(madhu_corr, d1_madhu_corr).
hasdoor(ta_2, d1_ta_2).
hasdoor(ta_1, d1_ta_1).
hasdoor(vince_corr, d1_vince_corr).
hasdoor(lander_corr, d1_lander_corr).
hasdoor(main_corr, d1_main_corr).
hasdoor(exit_corr, d1_exit_corr).
hasdoor(elevator_corr, d1_elevator_corr).



acc(ta_1, madhu_corr).
acc(madhu_corr,ta_1).
acc(shiqi_corr, ta_2).
acc(shiqi_corr, ta_1).
acc(ta_2, vince_corr).
acc(vince_corr, exit_corr).
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
square(s3).
square(s4).
square(s5).
object(O) :- ball(O).
object(O) :- square(O).
