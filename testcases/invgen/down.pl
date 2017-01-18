:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V3, V4, V2, V1)), []).
trans_preds(p(_, data(V3, V4, V2, V1)), p(_, data(V3p, V4p, V2p, V1p)), []).
var2names(p(pc(_), data(V3, V4, V2, V1)), [(V3, 'tmp'), (V4, 'n'), (V2, 'k'), (V1, 'i')]).
globals(p(pc(_), data(V3, V4, V2, V1)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V3, V4, V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 21 transitions
r(p(pc(main-0-6), data(V3, V4, V2, V1)), p(pc(main-2-6), data(V3p, V4p, V2p, V1p)), [(V1 = 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 1). % i == 0
stmtsrc(1, 'assume(i == 0);').
transition_access( 1, [_, _, _, r] ).
r(p(pc(main-2-6), data(V3, V4, V2, V1)), p(pc(main-4-6), data(V3p, V4p, V2p, V1p)), [(V2 = 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 2). % k == 0
stmtsrc(2, 'assume(k == 0);').
transition_access( 2, [_, _, r, _] ).
r(p(pc(main-4-6), data(V3, V4, V2, V1)), p(pc(main-1-6), data(V3p, V4p, V2p, V1p)), [], [V3p = 1, V4p = V4, V2p = V2, V1p = V1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [w, _, _, _] ).
r(p(pc(main-2-6), data(V3, V4, V2, V1)), p(pc(main-5-6), data(V3p, V4p, V2p, V1p)), [(V2 +1 =< 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 4). % k < 0
stmtsrc(4, 'assume(k < 0);').
transition_access( 4, [_, _, r, _] ).
r(p(pc(main-2-6), data(V3, V4, V2, V1)), p(pc(main-5-6), data(V3p, V4p, V2p, V1p)), [(V2 >= 1+ 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 5). % k > 0
stmtsrc(5, 'assume(k > 0);').
transition_access( 5, [_, _, r, _] ).
r(p(pc(main-5-6), data(V3, V4, V2, V1)), p(pc(main-1-6), data(V3p, V4p, V2p, V1p)), [], [V3p = 0, V4p = V4, V2p = V2, V1p = V1], 6). % tmp := 0
stmtsrc(6, 'tmp=0;').
transition_access( 6, [w, _, _, _] ).
r(p(pc(main-0-6), data(V3, V4, V2, V1)), p(pc(main-3-6), data(V3p, V4p, V2p, V1p)), [(V1 +1 =< 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 7). % i < 0
stmtsrc(7, 'assume(i < 0);').
transition_access( 7, [_, _, _, r] ).
r(p(pc(main-0-6), data(V3, V4, V2, V1)), p(pc(main-3-6), data(V3p, V4p, V2p, V1p)), [(V1 >= 1+ 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 8). % i > 0
stmtsrc(8, 'assume(i > 0);').
transition_access( 8, [_, _, _, r] ).
r(p(pc(main-3-6), data(V3, V4, V2, V1)), p(pc(main-1-6), data(V3p, V4p, V2p, V1p)), [], [V3p = 0, V4p = V4, V2p = V2, V1p = V1], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [w, _, _, _] ).
r(p(pc(main-1-6), data(V3, V4, V2, V1)), p(pc(main-6-7), data(V3p, V4p, V2p, V1p)), [(V3 +1 =< 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 10). % tmp < 0
stmtsrc(10, 'assume(tmp < 0);').
transition_access( 10, [r, _, _, _] ).
r(p(pc(main-1-6), data(V3, V4, V2, V1)), p(pc(main-6-7), data(V3p, V4p, V2p, V1p)), [(V3 >= 1+ 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 11). % tmp > 0
stmtsrc(11, 'assume(tmp > 0);').
transition_access( 11, [r, _, _, _] ).
r(p(pc(main-6-7), data(V3, V4, V2, V1)), p(pc(main-9-7), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 12). % 
stmtsrc(12, 'skip;').
transition_access( 12, [_, _, _, _] ).
r(p(pc(main-9-7), data(V3, V4, V2, V1)), p(pc(main-10-8), data(V3p, V4p, V2p, V1p)), [(V1 +1 =< V4)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 13). % i < n
stmtsrc(13, 'assume(i < n);').
transition_access( 13, [_, r, _, r] ).
r(p(pc(main-9-7), data(V3, V4, V2, V1)), p(pc(main-11-7), data(V3p, V4p, V2p, V1p)), [(V1 >= V4)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 14). % i >= n
stmtsrc(14, 'assume(i >= n);').
transition_access( 14, [_, r, _, r] ).
r(p(pc(main-10-8), data(V3, V4, V2, V1)), p(pc(main-12-0), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = (V1 + 1)], 15). % i := i + 1
stmtsrc(15, 'i=i + 1;').
transition_access( 15, [_, _, _, w] ).
r(p(pc(main-12-0), data(V3, V4, V2, V1)), p(pc(main-6-7), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = (V2 + 1), V1p = V1], 16). % k := k + 1
stmtsrc(16, 'k=k + 1;').
transition_access( 16, [_, _, w, _] ).
r(p(pc(main-8-0), data(V3, V4, V2, V1)), p(pc(main-7-10), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 17). % 
stmtsrc(17, 'skip;').
transition_access( 17, [_, _, _, _] ).
r(p(pc(main-7-10), data(V3, V4, V2, V1)), p(pc(main-err-0), data(V3p, V4p, V2p, V1p)), [(V2 +1 =< V4)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 18). % k < n
stmtsrc(18, 'assume(k < n);').
transition_access( 18, [_, r, r, _] ).
r(p(pc(main-7-10), data(V3, V4, V2, V1)), p(pc(main-13-11), data(V3p, V4p, V2p, V1p)), [(V2 >= V4)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 19). % k >= n
stmtsrc(19, 'assume(k >= n);').
transition_access( 19, [_, r, r, _] ).
r(p(pc(main-13-11), data(V3, V4, V2, V1)), p(pc(main-ret-0), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 20). % 
stmtsrc(20, 'skip;').
transition_access( 20, [_, _, _, _] ).
r(p(pc(main-11-7), data(V3, V4, V2, V1)), p(pc(main-8-0), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 21). % 
stmtsrc(21, 'skip;').
transition_access( 21, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-7), data(V3, V4, V2, V1)), [( 1)*V3 +( -1) = 0,( 1)*V3 +( -1) >= 0, ( -1)*V3 +( 1) >= 0,( 1)*V3+( 0)*V4+( 0)*V2+( 0)*V1 +( -1) = 0]).
