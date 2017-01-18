:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1, V3)), []).
trans_preds(p(_, data(V2, V1, V3)), p(_, data(V2p, V1p, V3p)), []).
var2names(p(pc(_), data(V2, V1, V3)), [(V2, 'y'), (V1, 'x'), (V3, 'tmp')]).
globals(p(pc(_), data(V2, V1, V3)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1, V3), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 18 transitions
r(p(pc(main-0-5), data(V2, V1, V3)), p(pc(main-2-5), data(V2p, V1p, V3p)), [(V1 = 1)], [V2p = V2, V1p = V1, V3p = V3], 1). % x == 1
stmtsrc(1, 'assume(x == 1);').
transition_access( 1, [_, r, _] ).
r(p(pc(main-2-5), data(V2, V1, V3)), p(pc(main-4-5), data(V2p, V1p, V3p)), [(V2 = 0)], [V2p = V2, V1p = V1, V3p = V3], 2). % y == 0
stmtsrc(2, 'assume(y == 0);').
transition_access( 2, [r, _, _] ).
r(p(pc(main-4-5), data(V2, V1, V3)), p(pc(main-1-5), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [_, _, w] ).
r(p(pc(main-2-5), data(V2, V1, V3)), p(pc(main-5-5), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 4). % y < 0
stmtsrc(4, 'assume(y < 0);').
transition_access( 4, [r, _, _] ).
r(p(pc(main-2-5), data(V2, V1, V3)), p(pc(main-5-5), data(V2p, V1p, V3p)), [(V2 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 5). % y > 0
stmtsrc(5, 'assume(y > 0);').
transition_access( 5, [r, _, _] ).
r(p(pc(main-5-5), data(V2, V1, V3)), p(pc(main-1-5), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 6). % tmp := 0
stmtsrc(6, 'tmp=0;').
transition_access( 6, [_, _, w] ).
r(p(pc(main-0-5), data(V2, V1, V3)), p(pc(main-3-5), data(V2p, V1p, V3p)), [(V1 +1 =< 1)], [V2p = V2, V1p = V1, V3p = V3], 7). % x < 1
stmtsrc(7, 'assume(x < 1);').
transition_access( 7, [_, r, _] ).
r(p(pc(main-0-5), data(V2, V1, V3)), p(pc(main-3-5), data(V2p, V1p, V3p)), [(V1 >= 1+ 1)], [V2p = V2, V1p = V1, V3p = V3], 8). % x > 1
stmtsrc(8, 'assume(x > 1);').
transition_access( 8, [_, r, _] ).
r(p(pc(main-3-5), data(V2, V1, V3)), p(pc(main-1-5), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, _, w] ).
r(p(pc(main-1-5), data(V2, V1, V3)), p(pc(main-6-6), data(V2p, V1p, V3p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 10). % tmp < 0
stmtsrc(10, 'assume(tmp < 0);').
transition_access( 10, [_, _, r] ).
r(p(pc(main-1-5), data(V2, V1, V3)), p(pc(main-6-6), data(V2p, V1p, V3p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 11). % tmp > 0
stmtsrc(11, 'assume(tmp > 0);').
transition_access( 11, [_, _, r] ).
r(p(pc(main-6-6), data(V2, V1, V3)), p(pc(main-9-8), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 12). % 
stmtsrc(12, 'skip;').
transition_access( 12, [_, _, _] ).
r(p(pc(main-9-8), data(V2, V1, V3)), p(pc(main-10-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + V2), V3p = V3], 13). % x := x + y
stmtsrc(13, 'x=x + y;').
transition_access( 13, [r, w, _] ).
r(p(pc(main-10-0), data(V2, V1, V3)), p(pc(main-11-0), data(V2p, V1p, V3p)), [], [V2p = (V2 + 1), V1p = V1, V3p = V3], 14). % y := y + 1
stmtsrc(14, 'y=y + 1;').
transition_access( 14, [w, _, _] ).
r(p(pc(main-11-0), data(V2, V1, V3)), p(pc(main-err-0), data(V2p, V1p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V3p = V3], 15). % x < y
stmtsrc(15, 'assume(x < y);').
transition_access( 15, [r, r, _] ).
r(p(pc(main-11-0), data(V2, V1, V3)), p(pc(main-6-6), data(V2p, V1p, V3p)), [(V1 >= V2)], [V2p = V2, V1p = V1, V3p = V3], 16). % x >= y
stmtsrc(16, 'assume(x >= y);').
transition_access( 16, [r, r, _] ).
r(p(pc(main-8-0), data(V2, V1, V3)), p(pc(main-7-10), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 17). % 
stmtsrc(17, 'skip;').
transition_access( 17, [_, _, _] ).
r(p(pc(main-7-10), data(V2, V1, V3)), p(pc(main-ret-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 18). % 
stmtsrc(18, 'skip;').
transition_access( 18, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-6), data(V2, V1, V3)), [( 1)*V3 +( -1) = 0,( 1)*V3 +( -1) >= 0, ( -1)*V3 +( 1) >= 0,( 0)*V2+( 0)*V1+( 1)*V3 +( -1) = 0]).
