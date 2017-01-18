:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V4, V2, V3, V1)), []).
trans_preds(p(_, data(V4, V2, V3, V1)), p(_, data(V4p, V2p, V3p, V1p)), []).
var2names(p(pc(_), data(V4, V2, V3, V1)), [(V4, 'tmp'), (V2, 'n'), (V3, 'k'), (V1, 'j')]).
globals(p(pc(_), data(V4, V2, V3, V1)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V4, V2, V3, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 28 transitions
r(p(pc(main-0-6), data(V4, V2, V3, V1)), p(pc(main-2-6), data(V4p, V2p, V3p, V1p)), [(V1 = V2)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 1). % j == n
stmtsrc(1, 'assume(j == n);').
transition_access( 1, [_, r, _, r] ).
r(p(pc(main-2-6), data(V4, V2, V3, V1)), p(pc(main-4-6), data(V4p, V2p, V3p, V1p)), [(V3 = V2)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 2). % k == n
stmtsrc(2, 'assume(k == n);').
transition_access( 2, [_, r, r, _] ).
r(p(pc(main-4-6), data(V4, V2, V3, V1)), p(pc(main-6-6), data(V4p, V2p, V3p, V1p)), [(V2 >= 1+ 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 3). % n > 0
stmtsrc(3, 'assume(n > 0);').
transition_access( 3, [_, r, _, _] ).
r(p(pc(main-6-6), data(V4, V2, V3, V1)), p(pc(main-1-6), data(V4p, V2p, V3p, V1p)), [], [V4p = 1, V2p = V2, V3p = V3, V1p = V1], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [w, _, _, _] ).
r(p(pc(main-4-6), data(V4, V2, V3, V1)), p(pc(main-7-6), data(V4p, V2p, V3p, V1p)), [(V2 =< 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 5). % n <= 0
stmtsrc(5, 'assume(n <= 0);').
transition_access( 5, [_, r, _, _] ).
r(p(pc(main-7-6), data(V4, V2, V3, V1)), p(pc(main-1-6), data(V4p, V2p, V3p, V1p)), [], [V4p = 0, V2p = V2, V3p = V3, V1p = V1], 6). % tmp := 0
stmtsrc(6, 'tmp=0;').
transition_access( 6, [w, _, _, _] ).
r(p(pc(main-2-6), data(V4, V2, V3, V1)), p(pc(main-5-6), data(V4p, V2p, V3p, V1p)), [(V3 +1 =< V2)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 7). % k < n
stmtsrc(7, 'assume(k < n);').
transition_access( 7, [_, r, r, _] ).
r(p(pc(main-2-6), data(V4, V2, V3, V1)), p(pc(main-5-6), data(V4p, V2p, V3p, V1p)), [(V3 >= 1+ V2)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 8). % k > n
stmtsrc(8, 'assume(k > n);').
transition_access( 8, [_, r, r, _] ).
r(p(pc(main-5-6), data(V4, V2, V3, V1)), p(pc(main-1-6), data(V4p, V2p, V3p, V1p)), [], [V4p = 0, V2p = V2, V3p = V3, V1p = V1], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [w, _, _, _] ).
r(p(pc(main-0-6), data(V4, V2, V3, V1)), p(pc(main-3-6), data(V4p, V2p, V3p, V1p)), [(V1 +1 =< V2)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 10). % j < n
stmtsrc(10, 'assume(j < n);').
transition_access( 10, [_, r, _, r] ).
r(p(pc(main-0-6), data(V4, V2, V3, V1)), p(pc(main-3-6), data(V4p, V2p, V3p, V1p)), [(V1 >= 1+ V2)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 11). % j > n
stmtsrc(11, 'assume(j > n);').
transition_access( 11, [_, r, _, r] ).
r(p(pc(main-3-6), data(V4, V2, V3, V1)), p(pc(main-1-6), data(V4p, V2p, V3p, V1p)), [], [V4p = 0, V2p = V2, V3p = V3, V1p = V1], 12). % tmp := 0
stmtsrc(12, 'tmp=0;').
transition_access( 12, [w, _, _, _] ).
r(p(pc(main-1-6), data(V4, V2, V3, V1)), p(pc(main-8-7), data(V4p, V2p, V3p, V1p)), [(V4 +1 =< 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 13). % tmp < 0
stmtsrc(13, 'assume(tmp < 0);').
transition_access( 13, [r, _, _, _] ).
r(p(pc(main-1-6), data(V4, V2, V3, V1)), p(pc(main-8-7), data(V4p, V2p, V3p, V1p)), [(V4 >= 1+ 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 14). % tmp > 0
stmtsrc(14, 'assume(tmp > 0);').
transition_access( 14, [r, _, _, _] ).
r(p(pc(main-8-7), data(V4, V2, V3, V1)), p(pc(main-11-7), data(V4p, V2p, V3p, V1p)), [], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 15). % 
stmtsrc(15, 'skip;').
transition_access( 15, [_, _, _, _] ).
r(p(pc(main-11-7), data(V4, V2, V3, V1)), p(pc(main-13-7), data(V4p, V2p, V3p, V1p)), [(V1 >= 1+ 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 16). % j > 0
stmtsrc(16, 'assume(j > 0);').
transition_access( 16, [_, _, _, r] ).
r(p(pc(main-13-7), data(V4, V2, V3, V1)), p(pc(main-12-8), data(V4p, V2p, V3p, V1p)), [(V2 >= 1+ 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 17). % n > 0
stmtsrc(17, 'assume(n > 0);').
transition_access( 17, [_, r, _, _] ).
r(p(pc(main-13-7), data(V4, V2, V3, V1)), p(pc(main-15-7), data(V4p, V2p, V3p, V1p)), [(V2 =< 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 18). % n <= 0
stmtsrc(18, 'assume(n <= 0);').
transition_access( 18, [_, r, _, _] ).
r(p(pc(main-11-7), data(V4, V2, V3, V1)), p(pc(main-14-7), data(V4p, V2p, V3p, V1p)), [(V1 =< 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 19). % j <= 0
stmtsrc(19, 'assume(j <= 0);').
transition_access( 19, [_, _, _, r] ).
r(p(pc(main-12-8), data(V4, V2, V3, V1)), p(pc(main-16-0), data(V4p, V2p, V3p, V1p)), [], [V4p = V4, V2p = V2, V3p = V3, V1p = (V1 - 1)], 20). % j := j - 1
stmtsrc(20, 'j=j - 1;').
transition_access( 20, [_, _, _, w] ).
r(p(pc(main-16-0), data(V4, V2, V3, V1)), p(pc(main-8-7), data(V4p, V2p, V3p, V1p)), [], [V4p = V4, V2p = V2, V3p = (V3 - 1), V1p = V1], 21). % k := k - 1
stmtsrc(21, 'k=k - 1;').
transition_access( 21, [_, _, w, _] ).
r(p(pc(main-10-0), data(V4, V2, V3, V1)), p(pc(main-9-10), data(V4p, V2p, V3p, V1p)), [], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 22). % 
stmtsrc(22, 'skip;').
transition_access( 22, [_, _, _, _] ).
r(p(pc(main-9-10), data(V4, V2, V3, V1)), p(pc(main-err-0), data(V4p, V2p, V3p, V1p)), [(V3 +1 =< 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 23). % k < 0
stmtsrc(23, 'assume(k < 0);').
transition_access( 23, [_, _, r, _] ).
r(p(pc(main-9-10), data(V4, V2, V3, V1)), p(pc(main-err-0), data(V4p, V2p, V3p, V1p)), [(V3 >= 1+ 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 24). % k > 0
stmtsrc(24, 'assume(k > 0);').
transition_access( 24, [_, _, r, _] ).
r(p(pc(main-9-10), data(V4, V2, V3, V1)), p(pc(main-17-11), data(V4p, V2p, V3p, V1p)), [(V3 = 0)], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 25). % k == 0
stmtsrc(25, 'assume(k == 0);').
transition_access( 25, [_, _, r, _] ).
r(p(pc(main-17-11), data(V4, V2, V3, V1)), p(pc(main-ret-0), data(V4p, V2p, V3p, V1p)), [], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _, _] ).
r(p(pc(main-14-7), data(V4, V2, V3, V1)), p(pc(main-10-0), data(V4p, V2p, V3p, V1p)), [], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 27). % 
stmtsrc(27, 'skip;').
transition_access( 27, [_, _, _, _] ).
r(p(pc(main-15-7), data(V4, V2, V3, V1)), p(pc(main-10-0), data(V4p, V2p, V3p, V1p)), [], [V4p = V4, V2p = V2, V3p = V3, V1p = V1], 28). % 
stmtsrc(28, 'skip;').
transition_access( 28, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V4, V2, V3, V1)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 1)*V4+( 0)*V2+( 0)*V3+( 0)*V1 +( -1) = 0]).
