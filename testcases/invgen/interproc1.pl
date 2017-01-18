:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V1)), []).
trans_preds(p(_, data(V1)), p(_, data(V1p)), []).
var2names(p(pc(_), data(V1)), [(V1, 'x')]).
globals(p(pc(_), data(V1)), [], []).
% start location
start(pc(main-0-4)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-1-5)). % line 5
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 11 transitions
r(p(pc(main-0-4), data(V1)), p(pc(main-1-5), data(V1p)), [(V1 +1 =< 0)], [V1p = V1], 1). % x < 0
stmtsrc(1, 'assume(x < 0);').
transition_access( 1, [r] ).
r(p(pc(main-1-5), data(V1)), p(pc(main-4-5), data(V1p)), [], [V1p = V1], 2). % 
stmtsrc(2, 'skip;').
transition_access( 2, [_] ).
r(p(pc(main-4-5), data(V1)), p(pc(main-5-6), data(V1p)), [(V1 +1 =< 10)], [V1p = V1], 3). % x < 10
stmtsrc(3, 'assume(x < 10);').
transition_access( 3, [r] ).
r(p(pc(main-4-5), data(V1)), p(pc(main-6-5), data(V1p)), [(V1 >= 10)], [V1p = V1], 4). % x >= 10
stmtsrc(4, 'assume(x >= 10);').
transition_access( 4, [r] ).
r(p(pc(main-5-6), data(V1)), p(pc(main-1-5), data(V1p)), [], [V1p = (V1 + 1)], 5). % x := x + 1
stmtsrc(5, 'x=x + 1;').
transition_access( 5, [w] ).
r(p(pc(main-3-0), data(V1)), p(pc(main-2-8), data(V1p)), [], [V1p = V1], 6). % 
stmtsrc(6, 'skip;').
transition_access( 6, [_] ).
r(p(pc(main-2-8), data(V1)), p(pc(main-err-0), data(V1p)), [(V1 +1 =< 10)], [V1p = V1], 7). % x < 10
stmtsrc(7, 'assume(x < 10);').
transition_access( 7, [r] ).
r(p(pc(main-2-8), data(V1)), p(pc(main-err-0), data(V1p)), [(V1 >= 1+ 10)], [V1p = V1], 8). % x > 10
stmtsrc(8, 'assume(x > 10);').
transition_access( 8, [r] ).
r(p(pc(main-2-8), data(V1)), p(pc(main-7-9), data(V1p)), [(V1 = 10)], [V1p = V1], 9). % x == 10
stmtsrc(9, 'assume(x == 10);').
transition_access( 9, [r] ).
r(p(pc(main-7-9), data(V1)), p(pc(main-ret-0), data(V1p)), [], [V1p = V1], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_] ).
r(p(pc(main-6-5), data(V1)), p(pc(main-3-0), data(V1p)), [], [V1p = V1], 11). % 
stmtsrc(11, 'skip;').
transition_access( 11, [_] ).
% Atomic blocks
strengthening(p(pc(main-1-5), data(V1)), [( -1)*V1 +( 10) >= 0,( -1)*V1 +( 10) >= 0,( -1)*V1 +( 10) >= 0]).
