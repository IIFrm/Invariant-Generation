:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V5, V4, V3, V2, V1)), []).
trans_preds(p(_, data(V5, V4, V3, V2, V1)), p(_, data(V5p, V4p, V3p, V2p, V1p)), []).
var2names(p(pc(_), data(V5, V4, V3, V2, V1)), [(V5, 'tmp___0'), (V4, 'tmp'), (V3, 'n'), (V2, 'k'), (V1, 'i')]).
globals(p(pc(_), data(V5, V4, V3, V2, V1)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V5, V4, V3, V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 34 transitions
r(p(pc(main-0-6), data(V5, V4, V3, V2, V1)), p(pc(main-2-6), data(V5p, V4p, V3p, V2p, V1p)), [(V1 = 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 1). % i == 0
stmtsrc(1, 'assume(i == 0);').
transition_access( 1, [_, _, _, _, r] ).
r(p(pc(main-2-6), data(V5, V4, V3, V2, V1)), p(pc(main-4-6), data(V5p, V4p, V3p, V2p, V1p)), [(V2 = 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 2). % k == 0
stmtsrc(2, 'assume(k == 0);').
transition_access( 2, [_, _, _, r, _] ).
r(p(pc(main-4-6), data(V5, V4, V3, V2, V1)), p(pc(main-6-6), data(V5p, V4p, V3p, V2p, V1p)), [(V3 >= 1+ 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 3). % n > 0
stmtsrc(3, 'assume(n > 0);').
transition_access( 3, [_, _, r, _, _] ).
r(p(pc(main-6-6), data(V5, V4, V3, V2, V1)), p(pc(main-1-6), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = 1, V3p = V3, V2p = V2, V1p = V1], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [_, w, _, _, _] ).
r(p(pc(main-4-6), data(V5, V4, V3, V2, V1)), p(pc(main-7-6), data(V5p, V4p, V3p, V2p, V1p)), [(V3 =< 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 5). % n <= 0
stmtsrc(5, 'assume(n <= 0);').
transition_access( 5, [_, _, r, _, _] ).
r(p(pc(main-7-6), data(V5, V4, V3, V2, V1)), p(pc(main-1-6), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = 0, V3p = V3, V2p = V2, V1p = V1], 6). % tmp := 0
stmtsrc(6, 'tmp=0;').
transition_access( 6, [_, w, _, _, _] ).
r(p(pc(main-2-6), data(V5, V4, V3, V2, V1)), p(pc(main-5-6), data(V5p, V4p, V3p, V2p, V1p)), [(V2 +1 =< 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 7). % k < 0
stmtsrc(7, 'assume(k < 0);').
transition_access( 7, [_, _, _, r, _] ).
r(p(pc(main-2-6), data(V5, V4, V3, V2, V1)), p(pc(main-5-6), data(V5p, V4p, V3p, V2p, V1p)), [(V2 >= 1+ 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 8). % k > 0
stmtsrc(8, 'assume(k > 0);').
transition_access( 8, [_, _, _, r, _] ).
r(p(pc(main-5-6), data(V5, V4, V3, V2, V1)), p(pc(main-1-6), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = 0, V3p = V3, V2p = V2, V1p = V1], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, w, _, _, _] ).
r(p(pc(main-0-6), data(V5, V4, V3, V2, V1)), p(pc(main-3-6), data(V5p, V4p, V3p, V2p, V1p)), [(V1 +1 =< 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 10). % i < 0
stmtsrc(10, 'assume(i < 0);').
transition_access( 10, [_, _, _, _, r] ).
r(p(pc(main-0-6), data(V5, V4, V3, V2, V1)), p(pc(main-3-6), data(V5p, V4p, V3p, V2p, V1p)), [(V1 >= 1+ 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 11). % i > 0
stmtsrc(11, 'assume(i > 0);').
transition_access( 11, [_, _, _, _, r] ).
r(p(pc(main-3-6), data(V5, V4, V3, V2, V1)), p(pc(main-1-6), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = 0, V3p = V3, V2p = V2, V1p = V1], 12). % tmp := 0
stmtsrc(12, 'tmp=0;').
transition_access( 12, [_, w, _, _, _] ).
r(p(pc(main-1-6), data(V5, V4, V3, V2, V1)), p(pc(main-8-7), data(V5p, V4p, V3p, V2p, V1p)), [(V4 +1 =< 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 13). % tmp < 0
stmtsrc(13, 'assume(tmp < 0);').
transition_access( 13, [_, r, _, _, _] ).
r(p(pc(main-1-6), data(V5, V4, V3, V2, V1)), p(pc(main-8-7), data(V5p, V4p, V3p, V2p, V1p)), [(V4 >= 1+ 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 14). % tmp > 0
stmtsrc(14, 'assume(tmp > 0);').
transition_access( 14, [_, r, _, _, _] ).
r(p(pc(main-8-7), data(V5, V4, V3, V2, V1)), p(pc(main-11-7), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 15). % 
stmtsrc(15, 'skip;').
transition_access( 15, [_, _, _, _, _] ).
r(p(pc(main-11-7), data(V5, V4, V3, V2, V1)), p(pc(main-12-8), data(V5p, V4p, V3p, V2p, V1p)), [(V1 +1 =< V3)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 16). % i < n
stmtsrc(16, 'assume(i < n);').
transition_access( 16, [_, _, r, _, r] ).
r(p(pc(main-11-7), data(V5, V4, V3, V2, V1)), p(pc(main-13-7), data(V5p, V4p, V3p, V2p, V1p)), [(V1 >= V3)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 17). % i >= n
stmtsrc(17, 'assume(i >= n);').
transition_access( 17, [_, _, r, _, r] ).
r(p(pc(main-12-8), data(V5, V4, V3, V2, V1)), p(pc(main-14-0), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = (V1 + 1)], 18). % i := i + 1
stmtsrc(18, 'i=i + 1;').
transition_access( 18, [_, _, _, _, w] ).
r(p(pc(main-14-0), data(V5, V4, V3, V2, V1)), p(pc(main-8-7), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = V4, V3p = V3, V2p = (V2 + 1), V1p = V1], 19). % k := k + 1
stmtsrc(19, 'k=k + 1;').
transition_access( 19, [_, _, _, w, _] ).
r(p(pc(main-10-0), data(V5, V4, V3, V2, V1)), p(pc(main-9-10), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 20). % 
stmtsrc(20, 'skip;').
transition_access( 20, [_, _, _, _, _] ).
r(p(pc(main-9-10), data(V5, V4, V3, V2, V1)), p(pc(main-16-10), data(V5p, V4p, V3p, V2p, V1p)), [(V1 = V2)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 21). % i == k
stmtsrc(21, 'assume(i == k);').
transition_access( 21, [_, _, _, r, r] ).
r(p(pc(main-16-10), data(V5, V4, V3, V2, V1)), p(pc(main-18-10), data(V5p, V4p, V3p, V2p, V1p)), [(V2 = V3)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 22). % k == n
stmtsrc(22, 'assume(k == n);').
transition_access( 22, [_, _, r, r, _] ).
r(p(pc(main-18-10), data(V5, V4, V3, V2, V1)), p(pc(main-15-10), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = 1, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 23). % tmp___0 := 1
stmtsrc(23, 'tmp___0=1;').
transition_access( 23, [w, _, _, _, _] ).
r(p(pc(main-16-10), data(V5, V4, V3, V2, V1)), p(pc(main-19-10), data(V5p, V4p, V3p, V2p, V1p)), [(V2 +1 =< V3)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 24). % k < n
stmtsrc(24, 'assume(k < n);').
transition_access( 24, [_, _, r, r, _] ).
r(p(pc(main-16-10), data(V5, V4, V3, V2, V1)), p(pc(main-19-10), data(V5p, V4p, V3p, V2p, V1p)), [(V2 >= 1+ V3)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 25). % k > n
stmtsrc(25, 'assume(k > n);').
transition_access( 25, [_, _, r, r, _] ).
r(p(pc(main-19-10), data(V5, V4, V3, V2, V1)), p(pc(main-15-10), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = 0, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 26). % tmp___0 := 0
stmtsrc(26, 'tmp___0=0;').
transition_access( 26, [w, _, _, _, _] ).
r(p(pc(main-9-10), data(V5, V4, V3, V2, V1)), p(pc(main-17-10), data(V5p, V4p, V3p, V2p, V1p)), [(V1 +1 =< V2)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 27). % i < k
stmtsrc(27, 'assume(i < k);').
transition_access( 27, [_, _, _, r, r] ).
r(p(pc(main-9-10), data(V5, V4, V3, V2, V1)), p(pc(main-17-10), data(V5p, V4p, V3p, V2p, V1p)), [(V1 >= 1+ V2)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 28). % i > k
stmtsrc(28, 'assume(i > k);').
transition_access( 28, [_, _, _, r, r] ).
r(p(pc(main-17-10), data(V5, V4, V3, V2, V1)), p(pc(main-15-10), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = 0, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 29). % tmp___0 := 0
stmtsrc(29, 'tmp___0=0;').
transition_access( 29, [w, _, _, _, _] ).
r(p(pc(main-15-10), data(V5, V4, V3, V2, V1)), p(pc(main-err-0), data(V5p, V4p, V3p, V2p, V1p)), [(V5 = 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 30). % tmp___0 == 0
stmtsrc(30, 'assume(tmp___0 == 0);').
transition_access( 30, [r, _, _, _, _] ).
r(p(pc(main-15-10), data(V5, V4, V3, V2, V1)), p(pc(main-20-11), data(V5p, V4p, V3p, V2p, V1p)), [(V5 +1 =< 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 31). % tmp___0 < 0
stmtsrc(31, 'assume(tmp___0 < 0);').
transition_access( 31, [r, _, _, _, _] ).
r(p(pc(main-15-10), data(V5, V4, V3, V2, V1)), p(pc(main-20-11), data(V5p, V4p, V3p, V2p, V1p)), [(V5 >= 1+ 0)], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 32). % tmp___0 > 0
stmtsrc(32, 'assume(tmp___0 > 0);').
transition_access( 32, [r, _, _, _, _] ).
r(p(pc(main-20-11), data(V5, V4, V3, V2, V1)), p(pc(main-ret-0), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 33). % 
stmtsrc(33, 'skip;').
transition_access( 33, [_, _, _, _, _] ).
r(p(pc(main-13-7), data(V5, V4, V3, V2, V1)), p(pc(main-10-0), data(V5p, V4p, V3p, V2p, V1p)), [], [V5p = V5, V4p = V4, V3p = V3, V2p = V2, V1p = V1], 34). % 
stmtsrc(34, 'skip;').
transition_access( 34, [_, _, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V5, V4, V3, V2, V1)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 0)*V5+( 1)*V4+( 0)*V3+( 0)*V2+( 0)*V1 +( -1) = 0]).
