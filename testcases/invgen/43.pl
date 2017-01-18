:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1, V4, V3)), []).
trans_preds(p(_, data(V2, V1, V4, V3)), p(_, data(V2p, V1p, V4p, V3p)), []).
var2names(p(pc(_), data(V2, V1, V4, V3)), [(V2, 'y'), (V1, 'x'), (V4, 'tmp'), (V3, 't')]).
globals(p(pc(_), data(V2, V1, V4, V3)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1, V4, V3), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 19 transitions
r(p(pc(main-0-6), data(V2, V1, V4, V3)), p(pc(main-2-6), data(V2p, V1p, V4p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 1). % x < y
stmtsrc(1, 'assume(x < y);').
transition_access( 1, [r, r, _, _] ).
r(p(pc(main-0-6), data(V2, V1, V4, V3)), p(pc(main-2-6), data(V2p, V1p, V4p, V3p)), [(V1 >= 1+ V2)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 2). % x > y
stmtsrc(2, 'assume(x > y);').
transition_access( 2, [r, r, _, _] ).
r(p(pc(main-2-6), data(V2, V1, V4, V3)), p(pc(main-4-6), data(V2p, V1p, V4p, V3p)), [(V2 = V3)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 3). % y == t
stmtsrc(3, 'assume(y == t);').
transition_access( 3, [r, _, _, r] ).
r(p(pc(main-4-6), data(V2, V1, V4, V3)), p(pc(main-1-6), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 1, V3p = V3], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [_, _, w, _] ).
r(p(pc(main-2-6), data(V2, V1, V4, V3)), p(pc(main-5-6), data(V2p, V1p, V4p, V3p)), [(V2 +1 =< V3)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 5). % y < t
stmtsrc(5, 'assume(y < t);').
transition_access( 5, [r, _, _, r] ).
r(p(pc(main-2-6), data(V2, V1, V4, V3)), p(pc(main-5-6), data(V2p, V1p, V4p, V3p)), [(V2 >= 1+ V3)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 6). % y > t
stmtsrc(6, 'assume(y > t);').
transition_access( 6, [r, _, _, r] ).
r(p(pc(main-5-6), data(V2, V1, V4, V3)), p(pc(main-1-6), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 0, V3p = V3], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, _, w, _] ).
r(p(pc(main-0-6), data(V2, V1, V4, V3)), p(pc(main-3-6), data(V2p, V1p, V4p, V3p)), [(V1 = V2)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 8). % x == y
stmtsrc(8, 'assume(x == y);').
transition_access( 8, [r, r, _, _] ).
r(p(pc(main-3-6), data(V2, V1, V4, V3)), p(pc(main-1-6), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 0, V3p = V3], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, _, w, _] ).
r(p(pc(main-1-6), data(V2, V1, V4, V3)), p(pc(main-6-7), data(V2p, V1p, V4p, V3p)), [(V4 +1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 10). % tmp < 0
stmtsrc(10, 'assume(tmp < 0);').
transition_access( 10, [_, _, r, _] ).
r(p(pc(main-1-6), data(V2, V1, V4, V3)), p(pc(main-6-7), data(V2p, V1p, V4p, V3p)), [(V4 >= 1+ 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 11). % tmp > 0
stmtsrc(11, 'assume(tmp > 0);').
transition_access( 11, [_, _, r, _] ).
r(p(pc(main-6-7), data(V2, V1, V4, V3)), p(pc(main-9-8), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 12). % 
stmtsrc(12, 'skip;').
transition_access( 12, [_, _, _, _] ).
r(p(pc(main-9-8), data(V2, V1, V4, V3)), p(pc(main-11-8), data(V2p, V1p, V4p, V3p)), [(V1 >= 1+ 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 13). % x > 0
stmtsrc(13, 'assume(x > 0);').
transition_access( 13, [_, r, _, _] ).
r(p(pc(main-11-8), data(V2, V1, V4, V3)), p(pc(main-10-9), data(V2p, V1p, V4p, V3p)), [], [V2p = (V2 + V1), V1p = V1, V4p = V4, V3p = V3], 14). % y := y + x
stmtsrc(14, 'y=y + x;').
transition_access( 14, [w, r, _, _] ).
r(p(pc(main-9-8), data(V2, V1, V4, V3)), p(pc(main-10-9), data(V2p, V1p, V4p, V3p)), [(V1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 15). % x <= 0
stmtsrc(15, 'assume(x <= 0);').
transition_access( 15, [_, r, _, _] ).
r(p(pc(main-10-9), data(V2, V1, V4, V3)), p(pc(main-err-0), data(V2p, V1p, V4p, V3p)), [(V2 +1 =< V3)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 16). % y < t
stmtsrc(16, 'assume(y < t);').
transition_access( 16, [r, _, _, r] ).
r(p(pc(main-10-9), data(V2, V1, V4, V3)), p(pc(main-6-7), data(V2p, V1p, V4p, V3p)), [(V2 >= V3)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 17). % y >= t
stmtsrc(17, 'assume(y >= t);').
transition_access( 17, [r, _, _, r] ).
r(p(pc(main-8-0), data(V2, V1, V4, V3)), p(pc(main-7-11), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 18). % 
stmtsrc(18, 'skip;').
transition_access( 18, [_, _, _, _] ).
r(p(pc(main-7-11), data(V2, V1, V4, V3)), p(pc(main-ret-0), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 19). % 
stmtsrc(19, 'skip;').
transition_access( 19, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-7), data(V2, V1, V4, V3)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 0)*V2+( 0)*V1+( 1)*V4+( 0)*V3 +( -1) = 0]).
