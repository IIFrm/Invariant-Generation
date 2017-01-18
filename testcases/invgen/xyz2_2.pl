:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V3, V2, V1, V4)), []).
trans_preds(p(_, data(V3, V2, V1, V4)), p(_, data(V3p, V2p, V1p, V4p)), []).
var2names(p(pc(_), data(V3, V2, V1, V4)), [(V3, 'z'), (V2, 'y'), (V1, 'x'), (V4, 'tmp')]).
globals(p(pc(_), data(V3, V2, V1, V4)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V3, V2, V1, V4), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 26 transitions
r(p(pc(main-0-6), data(V3, V2, V1, V4)), p(pc(main-2-6), data(V3p, V2p, V1p, V4p)), [(V1 = V2)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 1). % x == y
stmtsrc(1, 'assume(x == y);').
transition_access( 1, [_, r, r, _] ).
r(p(pc(main-2-6), data(V3, V2, V1, V4)), p(pc(main-4-6), data(V3p, V2p, V1p, V4p)), [(V1 >= 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 2). % x >= 0
stmtsrc(2, 'assume(x >= 0);').
transition_access( 2, [_, _, r, _] ).
r(p(pc(main-4-6), data(V3, V2, V1, V4)), p(pc(main-6-6), data(V3p, V2p, V1p, V4p)), [(((V1 + V2) + V3) = 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 3). % (x + y) + z == 0
stmtsrc(3, 'assume((x + y) + z == 0);').
transition_access( 3, [r, r, r, _] ).
r(p(pc(main-6-6), data(V3, V2, V1, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = 1], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [_, _, _, w] ).
r(p(pc(main-4-6), data(V3, V2, V1, V4)), p(pc(main-7-6), data(V3p, V2p, V1p, V4p)), [(((V1 + V2) + V3) +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 5). % (x + y) + z < 0
stmtsrc(5, 'assume((x + y) + z < 0);').
transition_access( 5, [r, r, r, _] ).
r(p(pc(main-4-6), data(V3, V2, V1, V4)), p(pc(main-7-6), data(V3p, V2p, V1p, V4p)), [(((V1 + V2) + V3) >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 6). % (x + y) + z > 0
stmtsrc(6, 'assume((x + y) + z > 0);').
transition_access( 6, [r, r, r, _] ).
r(p(pc(main-7-6), data(V3, V2, V1, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = 0], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, _, _, w] ).
r(p(pc(main-2-6), data(V3, V2, V1, V4)), p(pc(main-5-6), data(V3p, V2p, V1p, V4p)), [(V1 +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 8). % x < 0
stmtsrc(8, 'assume(x < 0);').
transition_access( 8, [_, _, r, _] ).
r(p(pc(main-5-6), data(V3, V2, V1, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = 0], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, _, _, w] ).
r(p(pc(main-0-6), data(V3, V2, V1, V4)), p(pc(main-3-6), data(V3p, V2p, V1p, V4p)), [(V1 +1 =< V2)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 10). % x < y
stmtsrc(10, 'assume(x < y);').
transition_access( 10, [_, r, r, _] ).
r(p(pc(main-0-6), data(V3, V2, V1, V4)), p(pc(main-3-6), data(V3p, V2p, V1p, V4p)), [(V1 >= 1+ V2)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 11). % x > y
stmtsrc(11, 'assume(x > y);').
transition_access( 11, [_, r, r, _] ).
r(p(pc(main-3-6), data(V3, V2, V1, V4)), p(pc(main-1-6), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = 0], 12). % tmp := 0
stmtsrc(12, 'tmp=0;').
transition_access( 12, [_, _, _, w] ).
r(p(pc(main-1-6), data(V3, V2, V1, V4)), p(pc(main-8-7), data(V3p, V2p, V1p, V4p)), [(V4 +1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 13). % tmp < 0
stmtsrc(13, 'assume(tmp < 0);').
transition_access( 13, [_, _, _, r] ).
r(p(pc(main-1-6), data(V3, V2, V1, V4)), p(pc(main-8-7), data(V3p, V2p, V1p, V4p)), [(V4 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 14). % tmp > 0
stmtsrc(14, 'assume(tmp > 0);').
transition_access( 14, [_, _, _, r] ).
r(p(pc(main-8-7), data(V3, V2, V1, V4)), p(pc(main-11-7), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 15). % 
stmtsrc(15, 'skip;').
transition_access( 15, [_, _, _, _] ).
r(p(pc(main-11-7), data(V3, V2, V1, V4)), p(pc(main-12-8), data(V3p, V2p, V1p, V4p)), [(V1 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 16). % x > 0
stmtsrc(16, 'assume(x > 0);').
transition_access( 16, [_, _, r, _] ).
r(p(pc(main-11-7), data(V3, V2, V1, V4)), p(pc(main-13-7), data(V3p, V2p, V1p, V4p)), [(V1 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 17). % x <= 0
stmtsrc(17, 'assume(x <= 0);').
transition_access( 17, [_, _, r, _] ).
r(p(pc(main-12-8), data(V3, V2, V1, V4)), p(pc(main-14-0), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = (V1 - 1), V4p = V4], 18). % x := x - 1
stmtsrc(18, 'x=x - 1;').
transition_access( 18, [_, _, w, _] ).
r(p(pc(main-14-0), data(V3, V2, V1, V4)), p(pc(main-15-0), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = (V2 - 1), V1p = V1, V4p = V4], 19). % y := y - 1
stmtsrc(19, 'y=y - 1;').
transition_access( 19, [_, w, _, _] ).
r(p(pc(main-15-0), data(V3, V2, V1, V4)), p(pc(main-16-0), data(V3p, V2p, V1p, V4p)), [], [V3p = (V3 + 1), V2p = V2, V1p = V1, V4p = V4], 20). % z := z + 1
stmtsrc(20, 'z=z + 1;').
transition_access( 20, [w, _, _, _] ).
r(p(pc(main-16-0), data(V3, V2, V1, V4)), p(pc(main-8-7), data(V3p, V2p, V1p, V4p)), [], [V3p = (V3 + 1), V2p = V2, V1p = V1, V4p = V4], 21). % z := z + 1
stmtsrc(21, 'z=z + 1;').
transition_access( 21, [w, _, _, _] ).
r(p(pc(main-10-0), data(V3, V2, V1, V4)), p(pc(main-9-10), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 22). % 
stmtsrc(22, 'skip;').
transition_access( 22, [_, _, _, _] ).
r(p(pc(main-9-10), data(V3, V2, V1, V4)), p(pc(main-err-0), data(V3p, V2p, V1p, V4p)), [(V3 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 23). % z > 0
stmtsrc(23, 'assume(z > 0);').
transition_access( 23, [r, _, _, _] ).
r(p(pc(main-9-10), data(V3, V2, V1, V4)), p(pc(main-17-11), data(V3p, V2p, V1p, V4p)), [(V3 =< 0)], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 24). % z <= 0
stmtsrc(24, 'assume(z <= 0);').
transition_access( 24, [r, _, _, _] ).
r(p(pc(main-17-11), data(V3, V2, V1, V4)), p(pc(main-ret-0), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _, _, _] ).
r(p(pc(main-13-7), data(V3, V2, V1, V4)), p(pc(main-10-0), data(V3p, V2p, V1p, V4p)), [], [V3p = V3, V2p = V2, V1p = V1, V4p = V4], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V3, V2, V1, V4)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 0)*V3+( 0)*V2+( 0)*V1+( 1)*V4 +( -1) = 0]).
