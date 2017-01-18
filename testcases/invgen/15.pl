:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V4, V1, V2, V3)), []).
trans_preds(p(_, data(V4, V1, V2, V3)), p(_, data(V4p, V1p, V2p, V3p)), []).
var2names(p(pc(_), data(V4, V1, V2, V3)), [(V4, 'tmp'), (V1, 'n'), (V2, 'k'), (V3, 'j')]).
globals(p(pc(_), data(V4, V1, V2, V3)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V4, V1, V2, V3), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 23 transitions
r(p(pc(main-0-6), data(V4, V1, V2, V3)), p(pc(main-2-6), data(V4p, V1p, V2p, V3p)), [(V1 >= 1)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 1). % n >= 1
stmtsrc(1, 'assume(n >= 1);').
transition_access( 1, [_, r, _, _] ).
r(p(pc(main-2-6), data(V4, V1, V2, V3)), p(pc(main-4-6), data(V4p, V1p, V2p, V3p)), [(V2 >= V1)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 2). % k >= n
stmtsrc(2, 'assume(k >= n);').
transition_access( 2, [_, r, r, _] ).
r(p(pc(main-4-6), data(V4, V1, V2, V3)), p(pc(main-6-6), data(V4p, V1p, V2p, V3p)), [(V3 = 0)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 3). % j == 0
stmtsrc(3, 'assume(j == 0);').
transition_access( 3, [_, _, _, r] ).
r(p(pc(main-6-6), data(V4, V1, V2, V3)), p(pc(main-1-6), data(V4p, V1p, V2p, V3p)), [], [V4p = 1, V1p = V1, V2p = V2, V3p = V3], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [w, _, _, _] ).
r(p(pc(main-4-6), data(V4, V1, V2, V3)), p(pc(main-7-6), data(V4p, V1p, V2p, V3p)), [(V3 +1 =< 0)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 5). % j < 0
stmtsrc(5, 'assume(j < 0);').
transition_access( 5, [_, _, _, r] ).
r(p(pc(main-4-6), data(V4, V1, V2, V3)), p(pc(main-7-6), data(V4p, V1p, V2p, V3p)), [(V3 >= 1+ 0)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 6). % j > 0
stmtsrc(6, 'assume(j > 0);').
transition_access( 6, [_, _, _, r] ).
r(p(pc(main-7-6), data(V4, V1, V2, V3)), p(pc(main-1-6), data(V4p, V1p, V2p, V3p)), [], [V4p = 0, V1p = V1, V2p = V2, V3p = V3], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [w, _, _, _] ).
r(p(pc(main-2-6), data(V4, V1, V2, V3)), p(pc(main-5-6), data(V4p, V1p, V2p, V3p)), [(V2 +1 =< V1)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 8). % k < n
stmtsrc(8, 'assume(k < n);').
transition_access( 8, [_, r, r, _] ).
r(p(pc(main-5-6), data(V4, V1, V2, V3)), p(pc(main-1-6), data(V4p, V1p, V2p, V3p)), [], [V4p = 0, V1p = V1, V2p = V2, V3p = V3], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [w, _, _, _] ).
r(p(pc(main-0-6), data(V4, V1, V2, V3)), p(pc(main-3-6), data(V4p, V1p, V2p, V3p)), [(V1 +1 =< 1)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 10). % n < 1
stmtsrc(10, 'assume(n < 1);').
transition_access( 10, [_, r, _, _] ).
r(p(pc(main-3-6), data(V4, V1, V2, V3)), p(pc(main-1-6), data(V4p, V1p, V2p, V3p)), [], [V4p = 0, V1p = V1, V2p = V2, V3p = V3], 11). % tmp := 0
stmtsrc(11, 'tmp=0;').
transition_access( 11, [w, _, _, _] ).
r(p(pc(main-1-6), data(V4, V1, V2, V3)), p(pc(main-8-7), data(V4p, V1p, V2p, V3p)), [(V4 +1 =< 0)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 12). % tmp < 0
stmtsrc(12, 'assume(tmp < 0);').
transition_access( 12, [r, _, _, _] ).
r(p(pc(main-1-6), data(V4, V1, V2, V3)), p(pc(main-8-7), data(V4p, V1p, V2p, V3p)), [(V4 >= 1+ 0)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 13). % tmp > 0
stmtsrc(13, 'assume(tmp > 0);').
transition_access( 13, [r, _, _, _] ).
r(p(pc(main-8-7), data(V4, V1, V2, V3)), p(pc(main-11-7), data(V4p, V1p, V2p, V3p)), [], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 14). % 
stmtsrc(14, 'skip;').
transition_access( 14, [_, _, _, _] ).
r(p(pc(main-11-7), data(V4, V1, V2, V3)), p(pc(main-12-8), data(V4p, V1p, V2p, V3p)), [(V3 =< (V1 - 1))], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 15). % j <= n - 1
stmtsrc(15, 'assume(j <= n - 1);').
transition_access( 15, [_, r, _, r] ).
r(p(pc(main-11-7), data(V4, V1, V2, V3)), p(pc(main-13-7), data(V4p, V1p, V2p, V3p)), [(V3 >= 1+ (V1 - 1))], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 16). % j > n - 1
stmtsrc(16, 'assume(j > n - 1);').
transition_access( 16, [_, r, _, r] ).
r(p(pc(main-12-8), data(V4, V1, V2, V3)), p(pc(main-14-0), data(V4p, V1p, V2p, V3p)), [], [V4p = V4, V1p = V1, V2p = V2, V3p = (V3 + 1)], 17). % j := j + 1
stmtsrc(17, 'j=j + 1;').
transition_access( 17, [_, _, _, w] ).
r(p(pc(main-14-0), data(V4, V1, V2, V3)), p(pc(main-8-7), data(V4p, V1p, V2p, V3p)), [], [V4p = V4, V1p = V1, V2p = (V2 - 1), V3p = V3], 18). % k := k - 1
stmtsrc(18, 'k=k - 1;').
transition_access( 18, [_, _, w, _] ).
r(p(pc(main-10-0), data(V4, V1, V2, V3)), p(pc(main-9-10), data(V4p, V1p, V2p, V3p)), [], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 19). % 
stmtsrc(19, 'skip;').
transition_access( 19, [_, _, _, _] ).
r(p(pc(main-9-10), data(V4, V1, V2, V3)), p(pc(main-err-0), data(V4p, V1p, V2p, V3p)), [(V2 +1 =< 0)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 20). % k < 0
stmtsrc(20, 'assume(k < 0);').
transition_access( 20, [_, _, r, _] ).
r(p(pc(main-9-10), data(V4, V1, V2, V3)), p(pc(main-15-11), data(V4p, V1p, V2p, V3p)), [(V2 >= 0)], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 21). % k >= 0
stmtsrc(21, 'assume(k >= 0);').
transition_access( 21, [_, _, r, _] ).
r(p(pc(main-15-11), data(V4, V1, V2, V3)), p(pc(main-ret-0), data(V4p, V1p, V2p, V3p)), [], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 22). % 
stmtsrc(22, 'skip;').
transition_access( 22, [_, _, _, _] ).
r(p(pc(main-13-7), data(V4, V1, V2, V3)), p(pc(main-10-0), data(V4p, V1p, V2p, V3p)), [], [V4p = V4, V1p = V1, V2p = V2, V3p = V3], 23). % 
stmtsrc(23, 'skip;').
transition_access( 23, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V4, V1, V2, V3)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 1)*V4+( 0)*V1+( 0)*V2+( 0)*V3 +( -1) = 0]).
