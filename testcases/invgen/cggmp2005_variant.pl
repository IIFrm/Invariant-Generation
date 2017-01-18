:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V4, V2, V1, V3)), []).
trans_preds(p(_, data(V4, V2, V1, V3)), p(_, data(V4p, V2p, V1p, V3p)), []).
var2names(p(pc(_), data(V4, V2, V1, V3)), [(V4, 'tmp'), (V2, 'mid'), (V1, 'low'), (V3, 'high')]).
globals(p(pc(_), data(V4, V2, V1, V3)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V4, V2, V1, V3), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 26 transitions
r(p(pc(main-0-6), data(V4, V2, V1, V3)), p(pc(main-2-6), data(V4p, V2p, V1p, V3p)), [(V1 = 0)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 1). % low == 0
stmtsrc(1, 'assume(low == 0);').
transition_access( 1, [_, _, r, _] ).
r(p(pc(main-2-6), data(V4, V2, V1, V3)), p(pc(main-4-6), data(V4p, V2p, V1p, V3p)), [(V2 >= 1)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 2). % mid >= 1
stmtsrc(2, 'assume(mid >= 1);').
transition_access( 2, [_, r, _, _] ).
r(p(pc(main-4-6), data(V4, V2, V1, V3)), p(pc(main-6-6), data(V4p, V2p, V1p, V3p)), [(V3 = (2 * V2))], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 3). % high == 2 * mid
stmtsrc(3, 'assume(high == 2 * mid);').
transition_access( 3, [_, r, _, r] ).
r(p(pc(main-6-6), data(V4, V2, V1, V3)), p(pc(main-1-6), data(V4p, V2p, V1p, V3p)), [], [V4p = 1, V2p = V2, V1p = V1, V3p = V3], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [w, _, _, _] ).
r(p(pc(main-4-6), data(V4, V2, V1, V3)), p(pc(main-7-6), data(V4p, V2p, V1p, V3p)), [(V3 +1 =< (2 * V2))], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 5). % high < 2 * mid
stmtsrc(5, 'assume(high < 2 * mid);').
transition_access( 5, [_, r, _, r] ).
r(p(pc(main-4-6), data(V4, V2, V1, V3)), p(pc(main-7-6), data(V4p, V2p, V1p, V3p)), [(V3 >= 1+ (2 * V2))], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 6). % high > 2 * mid
stmtsrc(6, 'assume(high > 2 * mid);').
transition_access( 6, [_, r, _, r] ).
r(p(pc(main-7-6), data(V4, V2, V1, V3)), p(pc(main-1-6), data(V4p, V2p, V1p, V3p)), [], [V4p = 0, V2p = V2, V1p = V1, V3p = V3], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [w, _, _, _] ).
r(p(pc(main-2-6), data(V4, V2, V1, V3)), p(pc(main-5-6), data(V4p, V2p, V1p, V3p)), [(V2 +1 =< 1)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 8). % mid < 1
stmtsrc(8, 'assume(mid < 1);').
transition_access( 8, [_, r, _, _] ).
r(p(pc(main-5-6), data(V4, V2, V1, V3)), p(pc(main-1-6), data(V4p, V2p, V1p, V3p)), [], [V4p = 0, V2p = V2, V1p = V1, V3p = V3], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [w, _, _, _] ).
r(p(pc(main-0-6), data(V4, V2, V1, V3)), p(pc(main-3-6), data(V4p, V2p, V1p, V3p)), [(V1 +1 =< 0)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 10). % low < 0
stmtsrc(10, 'assume(low < 0);').
transition_access( 10, [_, _, r, _] ).
r(p(pc(main-0-6), data(V4, V2, V1, V3)), p(pc(main-3-6), data(V4p, V2p, V1p, V3p)), [(V1 >= 1+ 0)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 11). % low > 0
stmtsrc(11, 'assume(low > 0);').
transition_access( 11, [_, _, r, _] ).
r(p(pc(main-3-6), data(V4, V2, V1, V3)), p(pc(main-1-6), data(V4p, V2p, V1p, V3p)), [], [V4p = 0, V2p = V2, V1p = V1, V3p = V3], 12). % tmp := 0
stmtsrc(12, 'tmp=0;').
transition_access( 12, [w, _, _, _] ).
r(p(pc(main-1-6), data(V4, V2, V1, V3)), p(pc(main-8-7), data(V4p, V2p, V1p, V3p)), [(V4 +1 =< 0)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 13). % tmp < 0
stmtsrc(13, 'assume(tmp < 0);').
transition_access( 13, [r, _, _, _] ).
r(p(pc(main-1-6), data(V4, V2, V1, V3)), p(pc(main-8-7), data(V4p, V2p, V1p, V3p)), [(V4 >= 1+ 0)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 14). % tmp > 0
stmtsrc(14, 'assume(tmp > 0);').
transition_access( 14, [r, _, _, _] ).
r(p(pc(main-8-7), data(V4, V2, V1, V3)), p(pc(main-11-7), data(V4p, V2p, V1p, V3p)), [], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 15). % 
stmtsrc(15, 'skip;').
transition_access( 15, [_, _, _, _] ).
r(p(pc(main-11-7), data(V4, V2, V1, V3)), p(pc(main-12-8), data(V4p, V2p, V1p, V3p)), [(V2 >= 1+ 0)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 16). % mid > 0
stmtsrc(16, 'assume(mid > 0);').
transition_access( 16, [_, r, _, _] ).
r(p(pc(main-11-7), data(V4, V2, V1, V3)), p(pc(main-13-7), data(V4p, V2p, V1p, V3p)), [(V2 =< 0)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 17). % mid <= 0
stmtsrc(17, 'assume(mid <= 0);').
transition_access( 17, [_, r, _, _] ).
r(p(pc(main-12-8), data(V4, V2, V1, V3)), p(pc(main-14-0), data(V4p, V2p, V1p, V3p)), [], [V4p = V4, V2p = V2, V1p = (V1 + 1), V3p = V3], 18). % low := low + 1
stmtsrc(18, 'low=low + 1;').
transition_access( 18, [_, _, w, _] ).
r(p(pc(main-14-0), data(V4, V2, V1, V3)), p(pc(main-15-0), data(V4p, V2p, V1p, V3p)), [], [V4p = V4, V2p = V2, V1p = V1, V3p = (V3 - 1)], 19). % high := high - 1
stmtsrc(19, 'high=high - 1;').
transition_access( 19, [_, _, _, w] ).
r(p(pc(main-15-0), data(V4, V2, V1, V3)), p(pc(main-8-7), data(V4p, V2p, V1p, V3p)), [], [V4p = V4, V2p = (V2 - 1), V1p = V1, V3p = V3], 20). % mid := mid - 1
stmtsrc(20, 'mid=mid - 1;').
transition_access( 20, [_, w, _, _] ).
r(p(pc(main-10-0), data(V4, V2, V1, V3)), p(pc(main-9-10), data(V4p, V2p, V1p, V3p)), [], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 21). % 
stmtsrc(21, 'skip;').
transition_access( 21, [_, _, _, _] ).
r(p(pc(main-9-10), data(V4, V2, V1, V3)), p(pc(main-err-0), data(V4p, V2p, V1p, V3p)), [(V1 +1 =< V3)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 22). % low < high
stmtsrc(22, 'assume(low < high);').
transition_access( 22, [_, _, r, r] ).
r(p(pc(main-9-10), data(V4, V2, V1, V3)), p(pc(main-err-0), data(V4p, V2p, V1p, V3p)), [(V1 >= 1+ V3)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 23). % low > high
stmtsrc(23, 'assume(low > high);').
transition_access( 23, [_, _, r, r] ).
r(p(pc(main-9-10), data(V4, V2, V1, V3)), p(pc(main-16-11), data(V4p, V2p, V1p, V3p)), [(V1 = V3)], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 24). % low == high
stmtsrc(24, 'assume(low == high);').
transition_access( 24, [_, _, r, r] ).
r(p(pc(main-16-11), data(V4, V2, V1, V3)), p(pc(main-ret-0), data(V4p, V2p, V1p, V3p)), [], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _, _, _] ).
r(p(pc(main-13-7), data(V4, V2, V1, V3)), p(pc(main-10-0), data(V4p, V2p, V1p, V3p)), [], [V4p = V4, V2p = V2, V1p = V1, V3p = V3], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V4, V2, V1, V3)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 1)*V4+( 0)*V2+( 0)*V1+( 0)*V3 +( -1) = 0]).
