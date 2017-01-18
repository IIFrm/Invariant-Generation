:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V4, V3, V2, V1)), []).
trans_preds(p(_, data(V4, V3, V2, V1)), p(_, data(V4p, V3p, V2p, V1p)), []).
var2names(p(pc(_), data(V4, V3, V2, V1)), [(V4, 'tmp'), (V3, 'k'), (V2, 'j'), (V1, 'i')]).
globals(p(pc(_), data(V4, V3, V2, V1)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V4, V3, V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 19 transitions
r(p(pc(main-0-6), data(V4, V3, V2, V1)), p(pc(main-2-6), data(V4p, V3p, V2p, V1p)), [(V1 +1 =< V2)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 1). % i < j
stmtsrc(1, 'assume(i < j);').
transition_access( 1, [_, _, r, r] ).
r(p(pc(main-2-6), data(V4, V3, V2, V1)), p(pc(main-4-6), data(V4p, V3p, V2p, V1p)), [(V3 >= 1+ (V1 - V2))], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 2). % k > i - j
stmtsrc(2, 'assume(k > i - j);').
transition_access( 2, [_, r, r, r] ).
r(p(pc(main-4-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 1, V3p = V3, V2p = V2, V1p = V1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [w, _, _, _] ).
r(p(pc(main-2-6), data(V4, V3, V2, V1)), p(pc(main-5-6), data(V4p, V3p, V2p, V1p)), [(V3 =< (V1 - V2))], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 4). % k <= i - j
stmtsrc(4, 'assume(k <= i - j);').
transition_access( 4, [_, r, r, r] ).
r(p(pc(main-5-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 0, V3p = V3, V2p = V2, V1p = V1], 5). % tmp := 0
stmtsrc(5, 'tmp=0;').
transition_access( 5, [w, _, _, _] ).
r(p(pc(main-0-6), data(V4, V3, V2, V1)), p(pc(main-3-6), data(V4p, V3p, V2p, V1p)), [(V1 >= V2)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 6). % i >= j
stmtsrc(6, 'assume(i >= j);').
transition_access( 6, [_, _, r, r] ).
r(p(pc(main-3-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 0, V3p = V3, V2p = V2, V1p = V1], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [w, _, _, _] ).
r(p(pc(main-1-6), data(V4, V3, V2, V1)), p(pc(main-6-7), data(V4p, V3p, V2p, V1p)), [(V4 +1 =< 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 8). % tmp < 0
stmtsrc(8, 'assume(tmp < 0);').
transition_access( 8, [r, _, _, _] ).
r(p(pc(main-1-6), data(V4, V3, V2, V1)), p(pc(main-6-7), data(V4p, V3p, V2p, V1p)), [(V4 >= 1+ 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 9). % tmp > 0
stmtsrc(9, 'assume(tmp > 0);').
transition_access( 9, [r, _, _, _] ).
r(p(pc(main-6-7), data(V4, V3, V2, V1)), p(pc(main-9-7), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_, _, _, _] ).
r(p(pc(main-9-7), data(V4, V3, V2, V1)), p(pc(main-10-8), data(V4p, V3p, V2p, V1p)), [(V1 +1 =< V2)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 11). % i < j
stmtsrc(11, 'assume(i < j);').
transition_access( 11, [_, _, r, r] ).
r(p(pc(main-9-7), data(V4, V3, V2, V1)), p(pc(main-11-7), data(V4p, V3p, V2p, V1p)), [(V1 >= V2)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 12). % i >= j
stmtsrc(12, 'assume(i >= j);').
transition_access( 12, [_, _, r, r] ).
r(p(pc(main-10-8), data(V4, V3, V2, V1)), p(pc(main-12-0), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = (V3 + 1), V2p = V2, V1p = V1], 13). % k := k + 1
stmtsrc(13, 'k=k + 1;').
transition_access( 13, [_, w, _, _] ).
r(p(pc(main-12-0), data(V4, V3, V2, V1)), p(pc(main-6-7), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = (V1 + 1)], 14). % i := i + 1
stmtsrc(14, 'i=i + 1;').
transition_access( 14, [_, _, _, w] ).
r(p(pc(main-8-0), data(V4, V3, V2, V1)), p(pc(main-7-10), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 15). % 
stmtsrc(15, 'skip;').
transition_access( 15, [_, _, _, _] ).
r(p(pc(main-7-10), data(V4, V3, V2, V1)), p(pc(main-err-0), data(V4p, V3p, V2p, V1p)), [(V3 =< 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 16). % k <= 0
stmtsrc(16, 'assume(k <= 0);').
transition_access( 16, [_, r, _, _] ).
r(p(pc(main-7-10), data(V4, V3, V2, V1)), p(pc(main-13-11), data(V4p, V3p, V2p, V1p)), [(V3 >= 1+ 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 17). % k > 0
stmtsrc(17, 'assume(k > 0);').
transition_access( 17, [_, r, _, _] ).
r(p(pc(main-13-11), data(V4, V3, V2, V1)), p(pc(main-ret-0), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 18). % 
stmtsrc(18, 'skip;').
transition_access( 18, [_, _, _, _] ).
r(p(pc(main-11-7), data(V4, V3, V2, V1)), p(pc(main-8-0), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 19). % 
stmtsrc(19, 'skip;').
transition_access( 19, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-7), data(V4, V3, V2, V1)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 1)*V4+( 0)*V3+( 0)*V2+( 0)*V1 +( -1) = 0]).
