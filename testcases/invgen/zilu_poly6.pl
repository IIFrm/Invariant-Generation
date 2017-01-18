:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1)), []).
trans_preds(p(_, data(V2, V1)), p(_, data(V2p, V1p)), []).
var2names(p(pc(_), data(V2, V1)), [(V2, 'y'), (V1, 'x')]).
globals(p(pc(_), data(V2, V1)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-1-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 17 transitions
r(p(pc(main-0-5), data(V2, V1)), p(pc(main-1-6), data(V2p, V1p)), [((V1 * V2) >= 0)], [V2p = V2, V1p = V1], 1). % x * y >= 0
stmtsrc(1, 'assume(x * y >= 0);').
transition_access( 1, [r, r] ).
r(p(pc(main-1-6), data(V2, V1)), p(pc(main-4-7), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 2). % 
stmtsrc(2, 'skip;').
transition_access( 2, [_, _] ).
r(p(pc(main-4-7), data(V2, V1)), p(pc(main-6-7), data(V2p, V1p)), [(V1 = 0)], [V2p = V2, V1p = V1], 3). % x == 0
stmtsrc(3, 'assume(x == 0);').
transition_access( 3, [_, r] ).
r(p(pc(main-6-7), data(V2, V1)), p(pc(main-7-7), data(V2p, V1p)), [(V2 >= 1+ 0)], [V2p = V2, V1p = V1], 4). % y > 0
stmtsrc(4, 'assume(y > 0);').
transition_access( 4, [r, _] ).
r(p(pc(main-7-7), data(V2, V1)), p(pc(main-5-7), data(V2p, V1p)), [], [V2p = V2, V1p = (V1 + 1)], 5). % x := x + 1
stmtsrc(5, 'x=x + 1;').
transition_access( 5, [_, w] ).
r(p(pc(main-6-7), data(V2, V1)), p(pc(main-8-7), data(V2p, V1p)), [(V2 =< 0)], [V2p = V2, V1p = V1], 6). % y <= 0
stmtsrc(6, 'assume(y <= 0);').
transition_access( 6, [r, _] ).
r(p(pc(main-8-7), data(V2, V1)), p(pc(main-5-7), data(V2p, V1p)), [], [V2p = V2, V1p = (V1 - 1)], 7). % x := x - 1
stmtsrc(7, 'x=x - 1;').
transition_access( 7, [_, w] ).
r(p(pc(main-4-7), data(V2, V1)), p(pc(main-5-7), data(V2p, V1p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1], 8). % x < 0
stmtsrc(8, 'assume(x < 0);').
transition_access( 8, [_, r] ).
r(p(pc(main-4-7), data(V2, V1)), p(pc(main-5-7), data(V2p, V1p)), [(V1 >= 1+ 0)], [V2p = V2, V1p = V1], 9). % x > 0
stmtsrc(9, 'assume(x > 0);').
transition_access( 9, [_, r] ).
r(p(pc(main-5-7), data(V2, V1)), p(pc(main-10-7), data(V2p, V1p)), [(V1 >= 1+ 0)], [V2p = V2, V1p = V1], 10). % x > 0
stmtsrc(10, 'assume(x > 0);').
transition_access( 10, [_, r] ).
r(p(pc(main-10-7), data(V2, V1)), p(pc(main-9-8), data(V2p, V1p)), [], [V2p = (V2 + 1), V1p = V1], 11). % y := y + 1
stmtsrc(11, 'y=y + 1;').
transition_access( 11, [w, _] ).
r(p(pc(main-5-7), data(V2, V1)), p(pc(main-11-7), data(V2p, V1p)), [(V1 =< 0)], [V2p = V2, V1p = V1], 12). % x <= 0
stmtsrc(12, 'assume(x <= 0);').
transition_access( 12, [_, r] ).
r(p(pc(main-11-7), data(V2, V1)), p(pc(main-9-8), data(V2p, V1p)), [], [V2p = V2, V1p = (V1 - 1)], 13). % x := x - 1
stmtsrc(13, 'x=x - 1;').
transition_access( 13, [_, w] ).
r(p(pc(main-9-8), data(V2, V1)), p(pc(main-err-0), data(V2p, V1p)), [((V1 * V2) +1 =< 0)], [V2p = V2, V1p = V1], 14). % x * y < 0
stmtsrc(14, 'assume(x * y < 0);').
transition_access( 14, [r, r] ).
r(p(pc(main-9-8), data(V2, V1)), p(pc(main-1-6), data(V2p, V1p)), [((V1 * V2) >= 0)], [V2p = V2, V1p = V1], 15). % x * y >= 0
stmtsrc(15, 'assume(x * y >= 0);').
transition_access( 15, [r, r] ).
r(p(pc(main-3-0), data(V2, V1)), p(pc(main-2-10), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 16). % 
stmtsrc(16, 'skip;').
transition_access( 16, [_, _] ).
r(p(pc(main-2-10), data(V2, V1)), p(pc(main-ret-0), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 17). % 
stmtsrc(17, 'skip;').
transition_access( 17, [_, _] ).
% Atomic blocks
strengthening(p(pc(main-1-6), data(V2, V1)), [1>=0,1>=0,1>=0]).
