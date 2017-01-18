:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V1, V3, V2)), []).
trans_preds(p(_, data(V1, V3, V2)), p(_, data(V1p, V3p, V2p)), []).
var2names(p(pc(_), data(V1, V3, V2)), [(V1, 'r'), (V3, 'j'), (V2, 'i')]).
globals(p(pc(_), data(V1, V3, V2)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-1-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V1, V3, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 11 transitions
r(p(pc(main-0-6), data(V1, V3, V2)), p(pc(main-1-7), data(V1p, V3p, V2p)), [(V1 >= 1+ (V2 + V3))], [V1p = V1, V3p = V3, V2p = V2], 1). % r > i + j
stmtsrc(1, 'assume(r > i + j);').
transition_access( 1, [r, r, r] ).
r(p(pc(main-1-7), data(V1, V3, V2)), p(pc(main-4-7), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 2). % 
stmtsrc(2, 'skip;').
transition_access( 2, [_, _, _] ).
r(p(pc(main-4-7), data(V1, V3, V2)), p(pc(main-5-8), data(V1p, V3p, V2p)), [(V2 >= 1+ 0)], [V1p = V1, V3p = V3, V2p = V2], 3). % i > 0
stmtsrc(3, 'assume(i > 0);').
transition_access( 3, [_, _, r] ).
r(p(pc(main-4-7), data(V1, V3, V2)), p(pc(main-6-7), data(V1p, V3p, V2p)), [(V2 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 4). % i <= 0
stmtsrc(4, 'assume(i <= 0);').
transition_access( 4, [_, _, r] ).
r(p(pc(main-5-8), data(V1, V3, V2)), p(pc(main-7-0), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = (V2 - 1)], 5). % i := i - 1
stmtsrc(5, 'i=i - 1;').
transition_access( 5, [_, _, w] ).
r(p(pc(main-7-0), data(V1, V3, V2)), p(pc(main-1-7), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = (V3 + 1), V2p = V2], 6). % j := j + 1
stmtsrc(6, 'j=j + 1;').
transition_access( 6, [_, w, _] ).
r(p(pc(main-3-0), data(V1, V3, V2)), p(pc(main-2-10), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 7). % 
stmtsrc(7, 'skip;').
transition_access( 7, [_, _, _] ).
r(p(pc(main-2-10), data(V1, V3, V2)), p(pc(main-err-0), data(V1p, V3p, V2p)), [(V1 =< (V2 + V3))], [V1p = V1, V3p = V3, V2p = V2], 8). % r <= i + j
stmtsrc(8, 'assume(r <= i + j);').
transition_access( 8, [r, r, r] ).
r(p(pc(main-2-10), data(V1, V3, V2)), p(pc(main-8-11), data(V1p, V3p, V2p)), [(V1 >= 1+ (V2 + V3))], [V1p = V1, V3p = V3, V2p = V2], 9). % r > i + j
stmtsrc(9, 'assume(r > i + j);').
transition_access( 9, [r, r, r] ).
r(p(pc(main-8-11), data(V1, V3, V2)), p(pc(main-ret-0), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_, _, _] ).
r(p(pc(main-6-7), data(V1, V3, V2)), p(pc(main-3-0), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 11). % 
stmtsrc(11, 'skip;').
transition_access( 11, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-1-7), data(V1, V3, V2)), [1>=0,1>=0,( 1)*V1+( -1)*V3+( -1)*V2 +( 0) >= 0]).
