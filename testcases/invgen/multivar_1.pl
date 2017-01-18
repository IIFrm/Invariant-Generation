:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V1, V2)), []).
trans_preds(p(_, data(V1, V2)), p(_, data(V1p, V2p)), []).
var2names(p(pc(_), data(V1, V2)), [(V1, 'y'), (V2, 'x')]).
globals(p(pc(_), data(V1, V2)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-1-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V1, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 9 transitions
r(p(pc(main-0-5), data(V1, V2)), p(pc(main-1-6), data(V1p, V2p)), [(V1 = V2)], [V1p = V1, V2p = V2], 1). % y == x
stmtsrc(1, 'assume(y == x);').
transition_access( 1, [r, r] ).
r(p(pc(main-1-6), data(V1, V2)), p(pc(main-4-8), data(V1p, V2p)), [], [V1p = V1, V2p = V2], 2). % 
stmtsrc(2, 'skip;').
transition_access( 2, [_, _] ).
r(p(pc(main-4-8), data(V1, V2)), p(pc(main-5-0), data(V1p, V2p)), [], [V1p = V1, V2p = (V2 + 1)], 3). % x := x + 1
stmtsrc(3, 'x=x + 1;').
transition_access( 3, [_, w] ).
r(p(pc(main-5-0), data(V1, V2)), p(pc(main-6-0), data(V1p, V2p)), [], [V1p = (V1 + 1), V2p = V2], 4). % y := y + 1
stmtsrc(4, 'y=y + 1;').
transition_access( 4, [w, _] ).
r(p(pc(main-6-0), data(V1, V2)), p(pc(main-err-0), data(V1p, V2p)), [(V2 +1 =< V1)], [V1p = V1, V2p = V2], 5). % x < y
stmtsrc(5, 'assume(x < y);').
transition_access( 5, [r, r] ).
r(p(pc(main-6-0), data(V1, V2)), p(pc(main-err-0), data(V1p, V2p)), [(V2 >= 1+ V1)], [V1p = V1, V2p = V2], 6). % x > y
stmtsrc(6, 'assume(x > y);').
transition_access( 6, [r, r] ).
r(p(pc(main-6-0), data(V1, V2)), p(pc(main-1-6), data(V1p, V2p)), [(V2 = V1)], [V1p = V1, V2p = V2], 7). % x == y
stmtsrc(7, 'assume(x == y);').
transition_access( 7, [r, r] ).
r(p(pc(main-3-0), data(V1, V2)), p(pc(main-2-10), data(V1p, V2p)), [], [V1p = V1, V2p = V2], 8). % 
stmtsrc(8, 'skip;').
transition_access( 8, [_, _] ).
r(p(pc(main-2-10), data(V1, V2)), p(pc(main-ret-0), data(V1p, V2p)), [], [V1p = V1, V2p = V2], 9). % 
stmtsrc(9, 'skip;').
transition_access( 9, [_, _] ).
% Atomic blocks
strengthening(p(pc(main-1-6), data(V1, V2)), [1>=0,( 1)*V1+( -1)*V2 +( 0) >= 0, ( -1)*V1+( 1)*V2 +( 0) >= 0,( -1)*V1+( 1)*V2 +( 0) = 0]).
