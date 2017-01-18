:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V4, V3, V1, V2)), []).
trans_preds(p(_, data(V4, V3, V1, V2)), p(_, data(V4p, V3p, V1p, V2p)), []).
var2names(p(pc(_), data(V4, V3, V1, V2)), [(V4, 'tmp___0'), (V3, 'tmp'), (V1, 'k'), (V2, 'i')]).
globals(p(pc(_), data(V4, V3, V1, V2)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V4, V3, V1, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 31 transitions
r(p(pc(main-0-5), data(V4, V3, V1, V2)), p(pc(main-2-5), data(V4p, V3p, V1p, V2p)), [(0 =< V1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 1). % 0 <= k
stmtsrc(1, 'assume(0 <= k);').
transition_access( 1, [_, _, r, _] ).
r(p(pc(main-2-5), data(V4, V3, V1, V2)), p(pc(main-4-5), data(V4p, V3p, V1p, V2p)), [(V1 =< 1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 2). % k <= 1
stmtsrc(2, 'assume(k <= 1);').
transition_access( 2, [_, _, r, _] ).
r(p(pc(main-4-5), data(V4, V3, V1, V2)), p(pc(main-6-5), data(V4p, V3p, V1p, V2p)), [(V2 = 1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 3). % i == 1
stmtsrc(3, 'assume(i == 1);').
transition_access( 3, [_, _, _, r] ).
r(p(pc(main-6-5), data(V4, V3, V1, V2)), p(pc(main-1-5), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = 1, V1p = V1, V2p = V2], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [_, w, _, _] ).
r(p(pc(main-4-5), data(V4, V3, V1, V2)), p(pc(main-7-5), data(V4p, V3p, V1p, V2p)), [(V2 +1 =< 1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 5). % i < 1
stmtsrc(5, 'assume(i < 1);').
transition_access( 5, [_, _, _, r] ).
r(p(pc(main-4-5), data(V4, V3, V1, V2)), p(pc(main-7-5), data(V4p, V3p, V1p, V2p)), [(V2 >= 1+ 1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 6). % i > 1
stmtsrc(6, 'assume(i > 1);').
transition_access( 6, [_, _, _, r] ).
r(p(pc(main-7-5), data(V4, V3, V1, V2)), p(pc(main-1-5), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = 0, V1p = V1, V2p = V2], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, w, _, _] ).
r(p(pc(main-2-5), data(V4, V3, V1, V2)), p(pc(main-5-5), data(V4p, V3p, V1p, V2p)), [(V1 >= 1+ 1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 8). % k > 1
stmtsrc(8, 'assume(k > 1);').
transition_access( 8, [_, _, r, _] ).
r(p(pc(main-5-5), data(V4, V3, V1, V2)), p(pc(main-1-5), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = 0, V1p = V1, V2p = V2], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, w, _, _] ).
r(p(pc(main-0-5), data(V4, V3, V1, V2)), p(pc(main-3-5), data(V4p, V3p, V1p, V2p)), [(0 >= 1+ V1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 10). % 0 > k
stmtsrc(10, 'assume(0 > k);').
transition_access( 10, [_, _, r, _] ).
r(p(pc(main-3-5), data(V4, V3, V1, V2)), p(pc(main-1-5), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = 0, V1p = V1, V2p = V2], 11). % tmp := 0
stmtsrc(11, 'tmp=0;').
transition_access( 11, [_, w, _, _] ).
r(p(pc(main-1-5), data(V4, V3, V1, V2)), p(pc(main-8-6), data(V4p, V3p, V1p, V2p)), [(V3 +1 =< 0)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 12). % tmp < 0
stmtsrc(12, 'assume(tmp < 0);').
transition_access( 12, [_, r, _, _] ).
r(p(pc(main-1-5), data(V4, V3, V1, V2)), p(pc(main-8-6), data(V4p, V3p, V1p, V2p)), [(V3 >= 1+ 0)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 13). % tmp > 0
stmtsrc(13, 'assume(tmp > 0);').
transition_access( 13, [_, r, _, _] ).
r(p(pc(main-8-6), data(V4, V3, V1, V2)), p(pc(main-11-7), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 14). % 
stmtsrc(14, 'skip;').
transition_access( 14, [_, _, _, _] ).
r(p(pc(main-11-7), data(V4, V3, V1, V2)), p(pc(main-13-0), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = V3, V1p = V1, V2p = (V2 + 1)], 15). % i := i + 1
stmtsrc(15, 'i=i + 1;').
transition_access( 15, [_, _, _, w] ).
r(p(pc(main-13-0), data(V4, V3, V1, V2)), p(pc(main-12-8), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = V3, V1p = (V1 - 1), V2p = V2], 16). % k := k - 1
stmtsrc(16, 'k=k - 1;').
transition_access( 16, [_, _, w, _] ).
r(p(pc(main-12-8), data(V4, V3, V1, V2)), p(pc(main-15-8), data(V4p, V3p, V1p, V2p)), [(1 =< (V2 + V1))], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 17). % 1 <= i + k
stmtsrc(17, 'assume(1 <= i + k);').
transition_access( 17, [_, _, r, r] ).
r(p(pc(main-15-8), data(V4, V3, V1, V2)), p(pc(main-17-8), data(V4p, V3p, V1p, V2p)), [((V2 + V1) =< 2)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 18). % i + k <= 2
stmtsrc(18, 'assume(i + k <= 2);').
transition_access( 18, [_, _, r, r] ).
r(p(pc(main-17-8), data(V4, V3, V1, V2)), p(pc(main-19-8), data(V4p, V3p, V1p, V2p)), [(V2 >= 1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 19). % i >= 1
stmtsrc(19, 'assume(i >= 1);').
transition_access( 19, [_, _, _, r] ).
r(p(pc(main-19-8), data(V4, V3, V1, V2)), p(pc(main-14-8), data(V4p, V3p, V1p, V2p)), [], [V4p = 1, V3p = V3, V1p = V1, V2p = V2], 20). % tmp___0 := 1
stmtsrc(20, 'tmp___0=1;').
transition_access( 20, [w, _, _, _] ).
r(p(pc(main-17-8), data(V4, V3, V1, V2)), p(pc(main-20-8), data(V4p, V3p, V1p, V2p)), [(V2 +1 =< 1)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 21). % i < 1
stmtsrc(21, 'assume(i < 1);').
transition_access( 21, [_, _, _, r] ).
r(p(pc(main-20-8), data(V4, V3, V1, V2)), p(pc(main-14-8), data(V4p, V3p, V1p, V2p)), [], [V4p = 0, V3p = V3, V1p = V1, V2p = V2], 22). % tmp___0 := 0
stmtsrc(22, 'tmp___0=0;').
transition_access( 22, [w, _, _, _] ).
r(p(pc(main-15-8), data(V4, V3, V1, V2)), p(pc(main-18-8), data(V4p, V3p, V1p, V2p)), [((V2 + V1) >= 1+ 2)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 23). % i + k > 2
stmtsrc(23, 'assume(i + k > 2);').
transition_access( 23, [_, _, r, r] ).
r(p(pc(main-18-8), data(V4, V3, V1, V2)), p(pc(main-14-8), data(V4p, V3p, V1p, V2p)), [], [V4p = 0, V3p = V3, V1p = V1, V2p = V2], 24). % tmp___0 := 0
stmtsrc(24, 'tmp___0=0;').
transition_access( 24, [w, _, _, _] ).
r(p(pc(main-12-8), data(V4, V3, V1, V2)), p(pc(main-16-8), data(V4p, V3p, V1p, V2p)), [(1 >= 1+ (V2 + V1))], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 25). % 1 > i + k
stmtsrc(25, 'assume(1 > i + k);').
transition_access( 25, [_, _, r, r] ).
r(p(pc(main-16-8), data(V4, V3, V1, V2)), p(pc(main-14-8), data(V4p, V3p, V1p, V2p)), [], [V4p = 0, V3p = V3, V1p = V1, V2p = V2], 26). % tmp___0 := 0
stmtsrc(26, 'tmp___0=0;').
transition_access( 26, [w, _, _, _] ).
r(p(pc(main-14-8), data(V4, V3, V1, V2)), p(pc(main-err-0), data(V4p, V3p, V1p, V2p)), [(V4 = 0)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 27). % tmp___0 == 0
stmtsrc(27, 'assume(tmp___0 == 0);').
transition_access( 27, [r, _, _, _] ).
r(p(pc(main-14-8), data(V4, V3, V1, V2)), p(pc(main-8-6), data(V4p, V3p, V1p, V2p)), [(V4 +1 =< 0)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 28). % tmp___0 < 0
stmtsrc(28, 'assume(tmp___0 < 0);').
transition_access( 28, [r, _, _, _] ).
r(p(pc(main-14-8), data(V4, V3, V1, V2)), p(pc(main-8-6), data(V4p, V3p, V1p, V2p)), [(V4 >= 1+ 0)], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 29). % tmp___0 > 0
stmtsrc(29, 'assume(tmp___0 > 0);').
transition_access( 29, [r, _, _, _] ).
r(p(pc(main-10-0), data(V4, V3, V1, V2)), p(pc(main-9-10), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 30). % 
stmtsrc(30, 'skip;').
transition_access( 30, [_, _, _, _] ).
r(p(pc(main-9-10), data(V4, V3, V1, V2)), p(pc(main-ret-0), data(V4p, V3p, V1p, V2p)), [], [V4p = V4, V3p = V3, V1p = V1, V2p = V2], 31). % 
stmtsrc(31, 'skip;').
transition_access( 31, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-6), data(V4, V3, V1, V2)), [( 1)*V3 +( -1) = 0,( 1)*V3 +( -1) >= 0, ( -1)*V3 +( 1) >= 0,( 0)*V4+( 1)*V3+( 0)*V1+( 0)*V2 +( -1) = 0]).
