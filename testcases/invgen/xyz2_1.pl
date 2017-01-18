:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V3, V2, V1, V5, V4)), []).
trans_preds(p(_, data(V3, V2, V1, V5, V4)), p(_, data(V3p, V2p, V1p, V5p, V4p)), []).
var2names(p(pc(_), data(V3, V2, V1, V5, V4)), [(V3, 'z'), (V2, 'y'), (V1, 'x'), (V5, 'tmp___0'), (V4, 'tmp')]).
globals(p(pc(_), data(V3, V2, V1, V5, V4)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V3, V2, V1, V5, V4), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 36 transitions
r(p(pc(main-0-6), data(V3, V2, V1, V5, V4)), p(pc(main-2-6), data(V3p, V2p, V1p, V5p, V4p)), [(V1 = V2)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 1). % x == y
stmtsrc(1, 'assume(x == y);').
transition_access( 1, [_, r, r, _, _] ).
r(p(pc(main-2-6), data(V3, V2, V1, V5, V4)), p(pc(main-4-6), data(V3p, V2p, V1p, V5p, V4p)), [(V2 = 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 2). % y == 0
stmtsrc(2, 'assume(y == 0);').
transition_access( 2, [_, r, _, _, _] ).
r(p(pc(main-4-6), data(V3, V2, V1, V5, V4)), p(pc(main-6-6), data(V3p, V2p, V1p, V5p, V4p)), [(V3 = 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 3). % z == 0
stmtsrc(3, 'assume(z == 0);').
transition_access( 3, [r, _, _, _, _] ).
r(p(pc(main-6-6), data(V3, V2, V1, V5, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = 1], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [_, _, _, _, w] ).
r(p(pc(main-4-6), data(V3, V2, V1, V5, V4)), p(pc(main-7-6), data(V3p, V2p, V1p, V5p, V4p)), [(V3 +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 5). % z < 0
stmtsrc(5, 'assume(z < 0);').
transition_access( 5, [r, _, _, _, _] ).
r(p(pc(main-4-6), data(V3, V2, V1, V5, V4)), p(pc(main-7-6), data(V3p, V2p, V1p, V5p, V4p)), [(V3 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 6). % z > 0
stmtsrc(6, 'assume(z > 0);').
transition_access( 6, [r, _, _, _, _] ).
r(p(pc(main-7-6), data(V3, V2, V1, V5, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = 0], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, _, _, _, w] ).
r(p(pc(main-2-6), data(V3, V2, V1, V5, V4)), p(pc(main-5-6), data(V3p, V2p, V1p, V5p, V4p)), [(V2 +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 8). % y < 0
stmtsrc(8, 'assume(y < 0);').
transition_access( 8, [_, r, _, _, _] ).
r(p(pc(main-2-6), data(V3, V2, V1, V5, V4)), p(pc(main-5-6), data(V3p, V2p, V1p, V5p, V4p)), [(V2 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 9). % y > 0
stmtsrc(9, 'assume(y > 0);').
transition_access( 9, [_, r, _, _, _] ).
r(p(pc(main-5-6), data(V3, V2, V1, V5, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = 0], 10). % tmp := 0
stmtsrc(10, 'tmp=0;').
transition_access( 10, [_, _, _, _, w] ).
r(p(pc(main-0-6), data(V3, V2, V1, V5, V4)), p(pc(main-3-6), data(V3p, V2p, V1p, V5p, V4p)), [(V1 +1 =< V2)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 11). % x < y
stmtsrc(11, 'assume(x < y);').
transition_access( 11, [_, r, r, _, _] ).
r(p(pc(main-0-6), data(V3, V2, V1, V5, V4)), p(pc(main-3-6), data(V3p, V2p, V1p, V5p, V4p)), [(V1 >= 1+ V2)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 12). % x > y
stmtsrc(12, 'assume(x > y);').
transition_access( 12, [_, r, r, _, _] ).
r(p(pc(main-3-6), data(V3, V2, V1, V5, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = 0], 13). % tmp := 0
stmtsrc(13, 'tmp=0;').
transition_access( 13, [_, _, _, _, w] ).
r(p(pc(main-1-6), data(V3, V2, V1, V5, V4)), p(pc(main-8-7), data(V3p, V2p, V1p, V5p, V4p)), [(V4 +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 14). % tmp < 0
stmtsrc(14, 'assume(tmp < 0);').
transition_access( 14, [_, _, _, _, r] ).
r(p(pc(main-1-6), data(V3, V2, V1, V5, V4)), p(pc(main-8-7), data(V3p, V2p, V1p, V5p, V4p)), [(V4 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 15). % tmp > 0
stmtsrc(15, 'assume(tmp > 0);').
transition_access( 15, [_, _, _, _, r] ).
r(p(pc(main-8-7), data(V3, V2, V1, V5, V4)), p(pc(main-11-8), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 16). % 
stmtsrc(16, 'skip;').
transition_access( 16, [_, _, _, _, _] ).
r(p(pc(main-11-8), data(V3, V2, V1, V5, V4)), p(pc(main-13-0), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = (V1 + 1), V5p = V5, V4p = V4], 17). % x := x + 1
stmtsrc(17, 'x=x + 1;').
transition_access( 17, [_, _, w, _, _] ).
r(p(pc(main-13-0), data(V3, V2, V1, V5, V4)), p(pc(main-14-0), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = (V2 + 1), V1p = V1, V5p = V5, V4p = V4], 18). % y := y + 1
stmtsrc(18, 'y=y + 1;').
transition_access( 18, [_, w, _, _, _] ).
r(p(pc(main-14-0), data(V3, V2, V1, V5, V4)), p(pc(main-12-9), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = (V3 - 2), V2p = V2, V1p = V1, V5p = V5, V4p = V4], 19). % z := z - 2
stmtsrc(19, 'z=z - 2;').
transition_access( 19, [w, _, _, _, _] ).
r(p(pc(main-12-9), data(V3, V2, V1, V5, V4)), p(pc(main-16-9), data(V3p, V2p, V1p, V5p, V4p)), [(V1 = V2)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 20). % x == y
stmtsrc(20, 'assume(x == y);').
transition_access( 20, [_, r, r, _, _] ).
r(p(pc(main-16-9), data(V3, V2, V1, V5, V4)), p(pc(main-18-9), data(V3p, V2p, V1p, V5p, V4p)), [(V1 >= 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 21). % x >= 0
stmtsrc(21, 'assume(x >= 0);').
transition_access( 21, [_, _, r, _, _] ).
r(p(pc(main-18-9), data(V3, V2, V1, V5, V4)), p(pc(main-20-9), data(V3p, V2p, V1p, V5p, V4p)), [(((V1 + V2) + V3) = 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 22). % (x + y) + z == 0
stmtsrc(22, 'assume((x + y) + z == 0);').
transition_access( 22, [r, r, r, _, _] ).
r(p(pc(main-20-9), data(V3, V2, V1, V5, V4)), p(pc(main-15-9), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = 1, V4p = V4], 23). % tmp___0 := 1
stmtsrc(23, 'tmp___0=1;').
transition_access( 23, [_, _, _, w, _] ).
r(p(pc(main-18-9), data(V3, V2, V1, V5, V4)), p(pc(main-21-9), data(V3p, V2p, V1p, V5p, V4p)), [(((V1 + V2) + V3) +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 24). % (x + y) + z < 0
stmtsrc(24, 'assume((x + y) + z < 0);').
transition_access( 24, [r, r, r, _, _] ).
r(p(pc(main-18-9), data(V3, V2, V1, V5, V4)), p(pc(main-21-9), data(V3p, V2p, V1p, V5p, V4p)), [(((V1 + V2) + V3) >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 25). % (x + y) + z > 0
stmtsrc(25, 'assume((x + y) + z > 0);').
transition_access( 25, [r, r, r, _, _] ).
r(p(pc(main-21-9), data(V3, V2, V1, V5, V4)), p(pc(main-15-9), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = 0, V4p = V4], 26). % tmp___0 := 0
stmtsrc(26, 'tmp___0=0;').
transition_access( 26, [_, _, _, w, _] ).
r(p(pc(main-16-9), data(V3, V2, V1, V5, V4)), p(pc(main-19-9), data(V3p, V2p, V1p, V5p, V4p)), [(V1 +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 27). % x < 0
stmtsrc(27, 'assume(x < 0);').
transition_access( 27, [_, _, r, _, _] ).
r(p(pc(main-19-9), data(V3, V2, V1, V5, V4)), p(pc(main-15-9), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = 0, V4p = V4], 28). % tmp___0 := 0
stmtsrc(28, 'tmp___0=0;').
transition_access( 28, [_, _, _, w, _] ).
r(p(pc(main-12-9), data(V3, V2, V1, V5, V4)), p(pc(main-17-9), data(V3p, V2p, V1p, V5p, V4p)), [(V1 +1 =< V2)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 29). % x < y
stmtsrc(29, 'assume(x < y);').
transition_access( 29, [_, r, r, _, _] ).
r(p(pc(main-12-9), data(V3, V2, V1, V5, V4)), p(pc(main-17-9), data(V3p, V2p, V1p, V5p, V4p)), [(V1 >= 1+ V2)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 30). % x > y
stmtsrc(30, 'assume(x > y);').
transition_access( 30, [_, r, r, _, _] ).
r(p(pc(main-17-9), data(V3, V2, V1, V5, V4)), p(pc(main-15-9), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = 0, V4p = V4], 31). % tmp___0 := 0
stmtsrc(31, 'tmp___0=0;').
transition_access( 31, [_, _, _, w, _] ).
r(p(pc(main-15-9), data(V3, V2, V1, V5, V4)), p(pc(main-err-0), data(V3p, V2p, V1p, V5p, V4p)), [(V5 = 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 32). % tmp___0 == 0
stmtsrc(32, 'assume(tmp___0 == 0);').
transition_access( 32, [_, _, _, r, _] ).
r(p(pc(main-15-9), data(V3, V2, V1, V5, V4)), p(pc(main-8-7), data(V3p, V2p, V1p, V5p, V4p)), [(V5 +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 33). % tmp___0 < 0
stmtsrc(33, 'assume(tmp___0 < 0);').
transition_access( 33, [_, _, _, r, _] ).
r(p(pc(main-15-9), data(V3, V2, V1, V5, V4)), p(pc(main-8-7), data(V3p, V2p, V1p, V5p, V4p)), [(V5 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 34). % tmp___0 > 0
stmtsrc(34, 'assume(tmp___0 > 0);').
transition_access( 34, [_, _, _, r, _] ).
r(p(pc(main-10-0), data(V3, V2, V1, V5, V4)), p(pc(main-9-11), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 35). % 
stmtsrc(35, 'skip;').
transition_access( 35, [_, _, _, _, _] ).
r(p(pc(main-9-11), data(V3, V2, V1, V5, V4)), p(pc(main-ret-0), data(V3p, V2p, V1p, V5p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V5p = V5, V4p = V4], 36). % 
stmtsrc(36, 'skip;').
transition_access( 36, [_, _, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V3, V2, V1, V5, V4)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 0)*V3+( 0)*V2+( 0)*V1+( 0)*V5+( 1)*V4 +( -1) = 0]).
