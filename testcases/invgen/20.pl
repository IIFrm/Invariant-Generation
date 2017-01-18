:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V3, V2, V4, V1, V5)), []).
trans_preds(p(_, data(V3, V2, V4, V1, V5)), p(_, data(V3p, V2p, V4p, V1p, V5p)), []).
var2names(p(pc(_), data(V3, V2, V4, V1, V5)), [(V3, 'y'), (V2, 'x'), (V4, 'k'), (V1, 'j'), (V5, 'i')]).
globals(p(pc(_), data(V3, V2, V4, V1, V5)), [], []).
% start location
start(pc(main-0-8)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-1-9)). % line 9
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V3, V2, V4, V1, V5), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 16 transitions
r(p(pc(main-0-8), data(V3, V2, V4, V1, V5)), p(pc(main-2-0), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = V3, V2p = V2, V4p = V4, V1p = 0, V5p = V5], 1). % j := 0
stmtsrc(1, 'j=0;').
transition_access( 1, [_, _, _, w, _] ).
r(p(pc(main-2-0), data(V3, V2, V4, V1, V5)), p(pc(main-1-9), data(V3p, V2p, V4p, V1p, V5p)), [((V2 + V3) = V4)], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 2). % x + y == k
stmtsrc(2, 'assume(x + y == k);').
transition_access( 2, [r, r, r, _, _] ).
r(p(pc(main-1-9), data(V3, V2, V4, V1, V5)), p(pc(main-5-10), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 3). % 
stmtsrc(3, 'skip;').
transition_access( 3, [_, _, _, _, _] ).
r(p(pc(main-5-10), data(V3, V2, V4, V1, V5)), p(pc(main-7-10), data(V3p, V2p, V4p, V1p, V5p)), [(V1 = V5)], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 4). % j == i
stmtsrc(4, 'assume(j == i);').
transition_access( 4, [_, _, _, r, r] ).
r(p(pc(main-7-10), data(V3, V2, V4, V1, V5)), p(pc(main-9-0), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = V3, V2p = (V2 + 1), V4p = V4, V1p = V1, V5p = V5], 5). % x := x + 1
stmtsrc(5, 'x=x + 1;').
transition_access( 5, [_, w, _, _, _] ).
r(p(pc(main-9-0), data(V3, V2, V4, V1, V5)), p(pc(main-6-11), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = (V3 - 1), V2p = V2, V4p = V4, V1p = V1, V5p = V5], 6). % y := y - 1
stmtsrc(6, 'y=y - 1;').
transition_access( 6, [w, _, _, _, _] ).
r(p(pc(main-5-10), data(V3, V2, V4, V1, V5)), p(pc(main-8-10), data(V3p, V2p, V4p, V1p, V5p)), [(V1 +1 =< V5)], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 7). % j < i
stmtsrc(7, 'assume(j < i);').
transition_access( 7, [_, _, _, r, r] ).
r(p(pc(main-5-10), data(V3, V2, V4, V1, V5)), p(pc(main-8-10), data(V3p, V2p, V4p, V1p, V5p)), [(V1 >= 1+ V5)], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 8). % j > i
stmtsrc(8, 'assume(j > i);').
transition_access( 8, [_, _, _, r, r] ).
r(p(pc(main-8-10), data(V3, V2, V4, V1, V5)), p(pc(main-10-0), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = (V3 + 1), V2p = V2, V4p = V4, V1p = V1, V5p = V5], 9). % y := y + 1
stmtsrc(9, 'y=y + 1;').
transition_access( 9, [w, _, _, _, _] ).
r(p(pc(main-10-0), data(V3, V2, V4, V1, V5)), p(pc(main-6-11), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = V3, V2p = (V2 - 1), V4p = V4, V1p = V1, V5p = V5], 10). % x := x - 1
stmtsrc(10, 'x=x - 1;').
transition_access( 10, [_, w, _, _, _] ).
r(p(pc(main-6-11), data(V3, V2, V4, V1, V5)), p(pc(main-11-0), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = V3, V2p = V2, V4p = V4, V1p = (V1 + 1), V5p = V5], 11). % j := j + 1
stmtsrc(11, 'j=j + 1;').
transition_access( 11, [_, _, _, w, _] ).
r(p(pc(main-11-0), data(V3, V2, V4, V1, V5)), p(pc(main-err-0), data(V3p, V2p, V4p, V1p, V5p)), [((V2 + V3) +1 =< V4)], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 12). % x + y < k
stmtsrc(12, 'assume(x + y < k);').
transition_access( 12, [r, r, r, _, _] ).
r(p(pc(main-11-0), data(V3, V2, V4, V1, V5)), p(pc(main-err-0), data(V3p, V2p, V4p, V1p, V5p)), [((V2 + V3) >= 1+ V4)], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 13). % x + y > k
stmtsrc(13, 'assume(x + y > k);').
transition_access( 13, [r, r, r, _, _] ).
r(p(pc(main-11-0), data(V3, V2, V4, V1, V5)), p(pc(main-1-9), data(V3p, V2p, V4p, V1p, V5p)), [((V2 + V3) = V4)], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 14). % x + y == k
stmtsrc(14, 'assume(x + y == k);').
transition_access( 14, [r, r, r, _, _] ).
r(p(pc(main-4-0), data(V3, V2, V4, V1, V5)), p(pc(main-3-13), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 15). % 
stmtsrc(15, 'skip;').
transition_access( 15, [_, _, _, _, _] ).
r(p(pc(main-3-13), data(V3, V2, V4, V1, V5)), p(pc(main-ret-0), data(V3p, V2p, V4p, V1p, V5p)), [], [V3p = V3, V2p = V2, V4p = V4, V1p = V1, V5p = V5], 16). % 
stmtsrc(16, 'skip;').
transition_access( 16, [_, _, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-1-9), data(V3, V2, V4, V1, V5)), [( 1)*V1 +( 0) >= 0,( 1)*V1 +( 0) >= 0,( -1)*V3+( -1)*V2+( 1)*V4+( 0)*V1+( 0)*V5 +( 0) = 0, ( 0)*V3+( 0)*V2+( 0)*V4+( 1)*V1+( 0)*V5 +( 0) >= 0]).
