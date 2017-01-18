:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V1, V3, V2)), []).
trans_preds(p(_, data(V1, V3, V2)), p(_, data(V1p, V3p, V2p)), []).
var2names(p(pc(_), data(V1, V3, V2)), [(V1, 'x'), (V3, 'tmp'), (V2, 'n')]).
globals(p(pc(_), data(V1, V3, V2)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V1, V3, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 20 transitions
r(p(pc(main-0-5), data(V1, V3, V2)), p(pc(main-2-5), data(V1p, V3p, V2p)), [(V1 = 0)], [V1p = V1, V3p = V3, V2p = V2], 1). % x == 0
stmtsrc(1, 'assume(x == 0);').
transition_access( 1, [r, _, _] ).
r(p(pc(main-2-5), data(V1, V3, V2)), p(pc(main-4-5), data(V1p, V3p, V2p)), [(V2 >= 1+ 0)], [V1p = V1, V3p = V3, V2p = V2], 2). % n > 0
stmtsrc(2, 'assume(n > 0);').
transition_access( 2, [_, _, r] ).
r(p(pc(main-4-5), data(V1, V3, V2)), p(pc(main-1-5), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = 1, V2p = V2], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [_, w, _] ).
r(p(pc(main-2-5), data(V1, V3, V2)), p(pc(main-5-5), data(V1p, V3p, V2p)), [(V2 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 4). % n <= 0
stmtsrc(4, 'assume(n <= 0);').
transition_access( 4, [_, _, r] ).
r(p(pc(main-5-5), data(V1, V3, V2)), p(pc(main-1-5), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = 0, V2p = V2], 5). % tmp := 0
stmtsrc(5, 'tmp=0;').
transition_access( 5, [_, w, _] ).
r(p(pc(main-0-5), data(V1, V3, V2)), p(pc(main-3-5), data(V1p, V3p, V2p)), [(V1 +1 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 6). % x < 0
stmtsrc(6, 'assume(x < 0);').
transition_access( 6, [r, _, _] ).
r(p(pc(main-0-5), data(V1, V3, V2)), p(pc(main-3-5), data(V1p, V3p, V2p)), [(V1 >= 1+ 0)], [V1p = V1, V3p = V3, V2p = V2], 7). % x > 0
stmtsrc(7, 'assume(x > 0);').
transition_access( 7, [r, _, _] ).
r(p(pc(main-3-5), data(V1, V3, V2)), p(pc(main-1-5), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = 0, V2p = V2], 8). % tmp := 0
stmtsrc(8, 'tmp=0;').
transition_access( 8, [_, w, _] ).
r(p(pc(main-1-5), data(V1, V3, V2)), p(pc(main-6-6), data(V1p, V3p, V2p)), [(V3 +1 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 9). % tmp < 0
stmtsrc(9, 'assume(tmp < 0);').
transition_access( 9, [_, r, _] ).
r(p(pc(main-1-5), data(V1, V3, V2)), p(pc(main-6-6), data(V1p, V3p, V2p)), [(V3 >= 1+ 0)], [V1p = V1, V3p = V3, V2p = V2], 10). % tmp > 0
stmtsrc(10, 'assume(tmp > 0);').
transition_access( 10, [_, r, _] ).
r(p(pc(main-6-6), data(V1, V3, V2)), p(pc(main-9-6), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 11). % 
stmtsrc(11, 'skip;').
transition_access( 11, [_, _, _] ).
r(p(pc(main-9-6), data(V1, V3, V2)), p(pc(main-10-7), data(V1p, V3p, V2p)), [(V1 +1 =< V2)], [V1p = V1, V3p = V3, V2p = V2], 12). % x < n
stmtsrc(12, 'assume(x < n);').
transition_access( 12, [r, _, r] ).
r(p(pc(main-9-6), data(V1, V3, V2)), p(pc(main-11-6), data(V1p, V3p, V2p)), [(V1 >= V2)], [V1p = V1, V3p = V3, V2p = V2], 13). % x >= n
stmtsrc(13, 'assume(x >= n);').
transition_access( 13, [r, _, r] ).
r(p(pc(main-10-7), data(V1, V3, V2)), p(pc(main-6-6), data(V1p, V3p, V2p)), [], [V1p = (V1 + 1), V3p = V3, V2p = V2], 14). % x := x + 1
stmtsrc(14, 'x=x + 1;').
transition_access( 14, [w, _, _] ).
r(p(pc(main-8-0), data(V1, V3, V2)), p(pc(main-7-9), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 15). % 
stmtsrc(15, 'skip;').
transition_access( 15, [_, _, _] ).
r(p(pc(main-7-9), data(V1, V3, V2)), p(pc(main-err-0), data(V1p, V3p, V2p)), [(V1 +1 =< V2)], [V1p = V1, V3p = V3, V2p = V2], 16). % x < n
stmtsrc(16, 'assume(x < n);').
transition_access( 16, [r, _, r] ).
r(p(pc(main-7-9), data(V1, V3, V2)), p(pc(main-err-0), data(V1p, V3p, V2p)), [(V1 >= 1+ V2)], [V1p = V1, V3p = V3, V2p = V2], 17). % x > n
stmtsrc(17, 'assume(x > n);').
transition_access( 17, [r, _, r] ).
r(p(pc(main-7-9), data(V1, V3, V2)), p(pc(main-12-10), data(V1p, V3p, V2p)), [(V1 = V2)], [V1p = V1, V3p = V3, V2p = V2], 18). % x == n
stmtsrc(18, 'assume(x == n);').
transition_access( 18, [r, _, r] ).
r(p(pc(main-12-10), data(V1, V3, V2)), p(pc(main-ret-0), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 19). % 
stmtsrc(19, 'skip;').
transition_access( 19, [_, _, _] ).
r(p(pc(main-11-6), data(V1, V3, V2)), p(pc(main-8-0), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 20). % 
stmtsrc(20, 'skip;').
transition_access( 20, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-6), data(V1, V3, V2)), [( 1)*V3 +( -1) = 0,( 1)*V3 +( -1) >= 0, ( -1)*V3 +( 1) >= 0,( 0)*V1+( 1)*V3+( 0)*V2 +( -1) = 0]).
