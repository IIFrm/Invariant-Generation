:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V3, V4, V2, V1)), []).
trans_preds(p(_, data(V3, V4, V2, V1)), p(_, data(V3p, V4p, V2p, V1p)), []).
var2names(p(pc(_), data(V3, V4, V2, V1)), [(V3, 'x'), (V4, 'tmp'), (V2, 'n'), (V1, 'm')]).
globals(p(pc(_), data(V3, V4, V2, V1)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V3, V4, V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 25 transitions
r(p(pc(main-0-6), data(V3, V4, V2, V1)), p(pc(main-2-6), data(V3p, V4p, V2p, V1p)), [(V1 >= 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 1). % m >= 0
stmtsrc(1, 'assume(m >= 0);').
transition_access( 1, [_, _, _, r] ).
r(p(pc(main-2-6), data(V3, V4, V2, V1)), p(pc(main-4-6), data(V3p, V4p, V2p, V1p)), [(V1 =< (V2 - 1))], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 2). % m <= n - 1
stmtsrc(2, 'assume(m <= n - 1);').
transition_access( 2, [_, _, r, r] ).
r(p(pc(main-4-6), data(V3, V4, V2, V1)), p(pc(main-6-6), data(V3p, V4p, V2p, V1p)), [(V3 = 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 3). % x == 0
stmtsrc(3, 'assume(x == 0);').
transition_access( 3, [r, _, _, _] ).
r(p(pc(main-6-6), data(V3, V4, V2, V1)), p(pc(main-1-6), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = 1, V2p = V2, V1p = V1], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [_, w, _, _] ).
r(p(pc(main-4-6), data(V3, V4, V2, V1)), p(pc(main-7-6), data(V3p, V4p, V2p, V1p)), [(V3 +1 =< 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 5). % x < 0
stmtsrc(5, 'assume(x < 0);').
transition_access( 5, [r, _, _, _] ).
r(p(pc(main-4-6), data(V3, V4, V2, V1)), p(pc(main-7-6), data(V3p, V4p, V2p, V1p)), [(V3 >= 1+ 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 6). % x > 0
stmtsrc(6, 'assume(x > 0);').
transition_access( 6, [r, _, _, _] ).
r(p(pc(main-7-6), data(V3, V4, V2, V1)), p(pc(main-1-6), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = 0, V2p = V2, V1p = V1], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, w, _, _] ).
r(p(pc(main-2-6), data(V3, V4, V2, V1)), p(pc(main-5-6), data(V3p, V4p, V2p, V1p)), [(V1 >= 1+ (V2 - 1))], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 8). % m > n - 1
stmtsrc(8, 'assume(m > n - 1);').
transition_access( 8, [_, _, r, r] ).
r(p(pc(main-5-6), data(V3, V4, V2, V1)), p(pc(main-1-6), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = 0, V2p = V2, V1p = V1], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, w, _, _] ).
r(p(pc(main-0-6), data(V3, V4, V2, V1)), p(pc(main-3-6), data(V3p, V4p, V2p, V1p)), [(V1 +1 =< 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 10). % m < 0
stmtsrc(10, 'assume(m < 0);').
transition_access( 10, [_, _, _, r] ).
r(p(pc(main-3-6), data(V3, V4, V2, V1)), p(pc(main-1-6), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = 0, V2p = V2, V1p = V1], 11). % tmp := 0
stmtsrc(11, 'tmp=0;').
transition_access( 11, [_, w, _, _] ).
r(p(pc(main-1-6), data(V3, V4, V2, V1)), p(pc(main-8-7), data(V3p, V4p, V2p, V1p)), [(V4 +1 =< 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 12). % tmp < 0
stmtsrc(12, 'assume(tmp < 0);').
transition_access( 12, [_, r, _, _] ).
r(p(pc(main-1-6), data(V3, V4, V2, V1)), p(pc(main-8-7), data(V3p, V4p, V2p, V1p)), [(V4 >= 1+ 0)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 13). % tmp > 0
stmtsrc(13, 'assume(tmp > 0);').
transition_access( 13, [_, r, _, _] ).
r(p(pc(main-8-7), data(V3, V4, V2, V1)), p(pc(main-11-7), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 14). % 
stmtsrc(14, 'skip;').
transition_access( 14, [_, _, _, _] ).
r(p(pc(main-11-7), data(V3, V4, V2, V1)), p(pc(main-12-8), data(V3p, V4p, V2p, V1p)), [(V3 =< (V2 - 1))], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 15). % x <= n - 1
stmtsrc(15, 'assume(x <= n - 1);').
transition_access( 15, [r, _, r, _] ).
r(p(pc(main-11-7), data(V3, V4, V2, V1)), p(pc(main-13-7), data(V3p, V4p, V2p, V1p)), [(V3 >= 1+ (V2 - 1))], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 16). % x > n - 1
stmtsrc(16, 'assume(x > n - 1);').
transition_access( 16, [r, _, r, _] ).
r(p(pc(main-12-8), data(V3, V4, V2, V1)), p(pc(main-14-8), data(V3p, V4p, V2p, V1p)), [], [V3p = (V3 + 1), V4p = V4, V2p = V2, V1p = V1], 17). % x := x + 1
stmtsrc(17, 'x=x + 1;').
transition_access( 17, [w, _, _, _] ).
r(p(pc(main-14-8), data(V3, V4, V2, V1)), p(pc(main-15-8), data(V3p, V4p, V2p, V1p)), [(V3 >= 1+ V1)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 18). % x > m
stmtsrc(18, 'assume(x > m);').
transition_access( 18, [r, _, _, r] ).
r(p(pc(main-15-8), data(V3, V4, V2, V1)), p(pc(main-8-7), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = (V1 + 1)], 19). % m := m + 1
stmtsrc(19, 'm=m + 1;').
transition_access( 19, [_, _, _, w] ).
r(p(pc(main-14-8), data(V3, V4, V2, V1)), p(pc(main-8-7), data(V3p, V4p, V2p, V1p)), [(V3 =< V1)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 20). % x <= m
stmtsrc(20, 'assume(x <= m);').
transition_access( 20, [r, _, _, r] ).
r(p(pc(main-10-0), data(V3, V4, V2, V1)), p(pc(main-9-10), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 21). % 
stmtsrc(21, 'skip;').
transition_access( 21, [_, _, _, _] ).
r(p(pc(main-9-10), data(V3, V4, V2, V1)), p(pc(main-err-0), data(V3p, V4p, V2p, V1p)), [(V1 >= 1+ V2)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 22). % m > n
stmtsrc(22, 'assume(m > n);').
transition_access( 22, [_, _, r, r] ).
r(p(pc(main-9-10), data(V3, V4, V2, V1)), p(pc(main-16-11), data(V3p, V4p, V2p, V1p)), [(V1 =< V2)], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 23). % m <= n
stmtsrc(23, 'assume(m <= n);').
transition_access( 23, [_, _, r, r] ).
r(p(pc(main-16-11), data(V3, V4, V2, V1)), p(pc(main-ret-0), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 24). % 
stmtsrc(24, 'skip;').
transition_access( 24, [_, _, _, _] ).
r(p(pc(main-13-7), data(V3, V4, V2, V1)), p(pc(main-10-0), data(V3p, V4p, V2p, V1p)), [], [V3p = V3, V4p = V4, V2p = V2, V1p = V1], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V3, V4, V2, V1)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 0)*V3+( 1)*V4+( 0)*V2+( 0)*V1 +( -1) = 0]).
