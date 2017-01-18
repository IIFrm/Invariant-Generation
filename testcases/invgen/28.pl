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
% 28 transitions
r(p(pc(main-0-5), data(V2, V1, V3)), p(pc(main-2-5), data(V2p, V1p, V3p)), [(V1 = V2)], [V2p = V2, V1p = V1, V3p = V3], 1). % x == y
stmtsrc(1, 'assume(x == y);').
transition_access( 1, [r, r, _] ).
r(p(pc(main-2-5), data(V2, V1, V3)), p(pc(main-4-5), data(V2p, V1p, V3p)), [(V2 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 2). % y >= 0
stmtsrc(2, 'assume(y >= 0);').
transition_access( 2, [r, _, _] ).
r(p(pc(main-4-5), data(V2, V1, V3)), p(pc(main-1-5), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [_, _, w] ).
r(p(pc(main-2-5), data(V2, V1, V3)), p(pc(main-5-5), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 4). % y < 0
stmtsrc(4, 'assume(y < 0);').
transition_access( 4, [r, _, _] ).
r(p(pc(main-5-5), data(V2, V1, V3)), p(pc(main-1-5), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 5). % tmp := 0
stmtsrc(5, 'tmp=0;').
transition_access( 5, [_, _, w] ).
r(p(pc(main-0-5), data(V2, V1, V3)), p(pc(main-3-5), data(V2p, V1p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V3p = V3], 6). % x < y
stmtsrc(6, 'assume(x < y);').
transition_access( 6, [r, r, _] ).
r(p(pc(main-0-5), data(V2, V1, V3)), p(pc(main-3-5), data(V2p, V1p, V3p)), [(V1 >= 1+ V2)], [V2p = V2, V1p = V1, V3p = V3], 7). % x > y
stmtsrc(7, 'assume(x > y);').
transition_access( 7, [r, r, _] ).
r(p(pc(main-3-5), data(V2, V1, V3)), p(pc(main-1-5), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 8). % tmp := 0
stmtsrc(8, 'tmp=0;').
transition_access( 8, [_, _, w] ).
r(p(pc(main-1-5), data(V2, V1, V3)), p(pc(main-6-6), data(V2p, V1p, V3p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 9). % tmp < 0
stmtsrc(9, 'assume(tmp < 0);').
transition_access( 9, [_, _, r] ).
r(p(pc(main-1-5), data(V2, V1, V3)), p(pc(main-6-6), data(V2p, V1p, V3p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 10). % tmp > 0
stmtsrc(10, 'assume(tmp > 0);').
transition_access( 10, [_, _, r] ).
r(p(pc(main-6-6), data(V2, V1, V3)), p(pc(main-9-6), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 11). % 
stmtsrc(11, 'skip;').
transition_access( 11, [_, _, _] ).
r(p(pc(main-9-6), data(V2, V1, V3)), p(pc(main-10-7), data(V2p, V1p, V3p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 12). % x < 0
stmtsrc(12, 'assume(x < 0);').
transition_access( 12, [_, r, _] ).
r(p(pc(main-9-6), data(V2, V1, V3)), p(pc(main-10-7), data(V2p, V1p, V3p)), [(V1 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 13). % x > 0
stmtsrc(13, 'assume(x > 0);').
transition_access( 13, [_, r, _] ).
r(p(pc(main-9-6), data(V2, V1, V3)), p(pc(main-11-6), data(V2p, V1p, V3p)), [(V1 = 0)], [V2p = V2, V1p = V1, V3p = V3], 14). % x == 0
stmtsrc(14, 'assume(x == 0);').
transition_access( 14, [_, r, _] ).
r(p(pc(main-10-7), data(V2, V1, V3)), p(pc(main-13-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 - 1), V3p = V3], 15). % x := x - 1
stmtsrc(15, 'x=x - 1;').
transition_access( 15, [_, w, _] ).
r(p(pc(main-13-0), data(V2, V1, V3)), p(pc(main-12-7), data(V2p, V1p, V3p)), [], [V2p = (V2 - 1), V1p = V1, V3p = V3], 16). % y := y - 1
stmtsrc(16, 'y=y - 1;').
transition_access( 16, [w, _, _] ).
r(p(pc(main-12-7), data(V2, V1, V3)), p(pc(main-14-7), data(V2p, V1p, V3p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 17). % x < 0
stmtsrc(17, 'assume(x < 0);').
transition_access( 17, [_, r, _] ).
r(p(pc(main-12-7), data(V2, V1, V3)), p(pc(main-15-7), data(V2p, V1p, V3p)), [(V1 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 18). % x >= 0
stmtsrc(18, 'assume(x >= 0);').
transition_access( 18, [_, r, _] ).
r(p(pc(main-15-7), data(V2, V1, V3)), p(pc(main-16-7), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 19). % y < 0
stmtsrc(19, 'assume(y < 0);').
transition_access( 19, [r, _, _] ).
r(p(pc(main-15-7), data(V2, V1, V3)), p(pc(main-6-6), data(V2p, V1p, V3p)), [(V2 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 20). % y >= 0
stmtsrc(20, 'assume(y >= 0);').
transition_access( 20, [r, _, _] ).
r(p(pc(main-8-0), data(V2, V1, V3)), p(pc(main-7-9), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 21). % 
stmtsrc(21, 'skip;').
transition_access( 21, [_, _, _] ).
r(p(pc(main-7-9), data(V2, V1, V3)), p(pc(main-err-0), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 22). % y < 0
stmtsrc(22, 'assume(y < 0);').
transition_access( 22, [r, _, _] ).
r(p(pc(main-7-9), data(V2, V1, V3)), p(pc(main-err-0), data(V2p, V1p, V3p)), [(V2 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 23). % y > 0
stmtsrc(23, 'assume(y > 0);').
transition_access( 23, [r, _, _] ).
r(p(pc(main-7-9), data(V2, V1, V3)), p(pc(main-17-10), data(V2p, V1p, V3p)), [(V2 = 0)], [V2p = V2, V1p = V1, V3p = V3], 24). % y == 0
stmtsrc(24, 'assume(y == 0);').
transition_access( 24, [r, _, _] ).
r(p(pc(main-17-10), data(V2, V1, V3)), p(pc(main-ret-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _, _] ).
r(p(pc(main-16-7), data(V2, V1, V3)), p(pc(main-8-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _] ).
r(p(pc(main-14-7), data(V2, V1, V3)), p(pc(main-8-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 27). % 
stmtsrc(27, 'skip;').
transition_access( 27, [_, _, _] ).
r(p(pc(main-11-6), data(V2, V1, V3)), p(pc(main-8-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 28). % 
stmtsrc(28, 'skip;').
transition_access( 28, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-6), data(V2, V1, V3)), [( 1)*V3 +( -1) = 0,( 1)*V3 +( -1) >= 0, ( -1)*V3 +( 1) >= 0,( 0)*V2+( 0)*V1+( 1)*V3 +( -1) = 0]).
