:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V3, V2, V1)), []).
trans_preds(p(_, data(V3, V2, V1)), p(_, data(V3p, V2p, V1p)), []).
var2names(p(pc(_), data(V3, V2, V1)), [(V3, 'n'), (V2, 'l'), (V1, 'i')]).
globals(p(pc(_), data(V3, V2, V1)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-1-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V3, V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 11 transitions
r(p(pc(main-0-6), data(V3, V2, V1)), p(pc(main-2-0), data(V3p, V2p, V1p)), [], [V3p = V3, V2p = V2, V1p = V2], 1). % i := l
stmtsrc(1, 'i=l;').
transition_access( 1, [_, r, w] ).
r(p(pc(main-2-0), data(V3, V2, V1)), p(pc(main-1-7), data(V3p, V2p, V1p)), [(V2 >= 1+ 0)], [V3p = V3, V2p = V2, V1p = V1], 2). % l > 0
stmtsrc(2, 'assume(l > 0);').
transition_access( 2, [_, r, _] ).
r(p(pc(main-1-7), data(V3, V2, V1)), p(pc(main-5-7), data(V3p, V2p, V1p)), [], [V3p = V3, V2p = V2, V1p = V1], 3). % 
stmtsrc(3, 'skip;').
transition_access( 3, [_, _, _] ).
r(p(pc(main-5-7), data(V3, V2, V1)), p(pc(main-6-8), data(V3p, V2p, V1p)), [(V1 +1 =< V3)], [V3p = V3, V2p = V2, V1p = V1], 4). % i < n
stmtsrc(4, 'assume(i < n);').
transition_access( 4, [r, _, r] ).
r(p(pc(main-5-7), data(V3, V2, V1)), p(pc(main-7-7), data(V3p, V2p, V1p)), [(V1 >= V3)], [V3p = V3, V2p = V2, V1p = V1], 5). % i >= n
stmtsrc(5, 'assume(i >= n);').
transition_access( 5, [r, _, r] ).
r(p(pc(main-6-8), data(V3, V2, V1)), p(pc(main-1-7), data(V3p, V2p, V1p)), [], [V3p = V3, V2p = V2, V1p = (V1 + 1)], 6). % i := i + 1
stmtsrc(6, 'i=i + 1;').
transition_access( 6, [_, _, w] ).
r(p(pc(main-4-0), data(V3, V2, V1)), p(pc(main-3-10), data(V3p, V2p, V1p)), [], [V3p = V3, V2p = V2, V1p = V1], 7). % 
stmtsrc(7, 'skip;').
transition_access( 7, [_, _, _] ).
r(p(pc(main-3-10), data(V3, V2, V1)), p(pc(main-err-0), data(V3p, V2p, V1p)), [(V2 +1 =< 1)], [V3p = V3, V2p = V2, V1p = V1], 8). % l < 1
stmtsrc(8, 'assume(l < 1);').
transition_access( 8, [_, r, _] ).
r(p(pc(main-3-10), data(V3, V2, V1)), p(pc(main-8-11), data(V3p, V2p, V1p)), [(V2 >= 1)], [V3p = V3, V2p = V2, V1p = V1], 9). % l >= 1
stmtsrc(9, 'assume(l >= 1);').
transition_access( 9, [_, r, _] ).
r(p(pc(main-8-11), data(V3, V2, V1)), p(pc(main-ret-0), data(V3p, V2p, V1p)), [], [V3p = V3, V2p = V2, V1p = V1], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_, _, _] ).
r(p(pc(main-7-7), data(V3, V2, V1)), p(pc(main-4-0), data(V3p, V2p, V1p)), [], [V3p = V3, V2p = V2, V1p = V1], 11). % 
stmtsrc(11, 'skip;').
transition_access( 11, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-1-7), data(V3, V2, V1)), [( 1)*V2 +( -1) >= 0,( 1)*V1 +( -1) >= 0, ( 1)*V2+( 1)*V1 +( -2) >= 0, ( 1)*V2 +( -1) >= 0, ( -1)*V2+( 1)*V1 +( 0) >= 0,( 0)*V3+( 1)*V2+( 0)*V1 +( -1) >= 0, ( 0)*V3+( -1)*V2+( 1)*V1 +( 0) >= 0]).
