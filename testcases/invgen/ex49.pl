:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V4, V3, V2, V1)), []).
trans_preds(p(_, data(V4, V3, V2, V1)), p(_, data(V4p, V3p, V2p, V1p)), []).
var2names(p(pc(_), data(V4, V3, V2, V1)), [(V4, 'tmp'), (V3, 'sum'), (V2, 'n'), (V1, 'i')]).
globals(p(pc(_), data(V4, V3, V2, V1)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-10-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V4, V3, V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 27 transitions
r(p(pc(main-0-6), data(V4, V3, V2, V1)), p(pc(main-2-6), data(V4p, V3p, V2p, V1p)), [(V1 = 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 1). % i == 0
stmtsrc(1, 'assume(i == 0);').
transition_access( 1, [_, _, _, r] ).
r(p(pc(main-2-6), data(V4, V3, V2, V1)), p(pc(main-4-6), data(V4p, V3p, V2p, V1p)), [(V2 >= 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 2). % n >= 0
stmtsrc(2, 'assume(n >= 0);').
transition_access( 2, [_, _, r, _] ).
r(p(pc(main-4-6), data(V4, V3, V2, V1)), p(pc(main-6-6), data(V4p, V3p, V2p, V1p)), [(V2 =< 100)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 3). % n <= 100
stmtsrc(3, 'assume(n <= 100);').
transition_access( 3, [_, _, r, _] ).
r(p(pc(main-6-6), data(V4, V3, V2, V1)), p(pc(main-8-6), data(V4p, V3p, V2p, V1p)), [(V3 = 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 4). % sum == 0
stmtsrc(4, 'assume(sum == 0);').
transition_access( 4, [_, r, _, _] ).
r(p(pc(main-8-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 1, V3p = V3, V2p = V2, V1p = V1], 5). % tmp := 1
stmtsrc(5, 'tmp=1;').
transition_access( 5, [w, _, _, _] ).
r(p(pc(main-6-6), data(V4, V3, V2, V1)), p(pc(main-9-6), data(V4p, V3p, V2p, V1p)), [(V3 +1 =< 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 6). % sum < 0
stmtsrc(6, 'assume(sum < 0);').
transition_access( 6, [_, r, _, _] ).
r(p(pc(main-6-6), data(V4, V3, V2, V1)), p(pc(main-9-6), data(V4p, V3p, V2p, V1p)), [(V3 >= 1+ 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 7). % sum > 0
stmtsrc(7, 'assume(sum > 0);').
transition_access( 7, [_, r, _, _] ).
r(p(pc(main-9-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 0, V3p = V3, V2p = V2, V1p = V1], 8). % tmp := 0
stmtsrc(8, 'tmp=0;').
transition_access( 8, [w, _, _, _] ).
r(p(pc(main-4-6), data(V4, V3, V2, V1)), p(pc(main-7-6), data(V4p, V3p, V2p, V1p)), [(V2 >= 1+ 100)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 9). % n > 100
stmtsrc(9, 'assume(n > 100);').
transition_access( 9, [_, _, r, _] ).
r(p(pc(main-7-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 0, V3p = V3, V2p = V2, V1p = V1], 10). % tmp := 0
stmtsrc(10, 'tmp=0;').
transition_access( 10, [w, _, _, _] ).
r(p(pc(main-2-6), data(V4, V3, V2, V1)), p(pc(main-5-6), data(V4p, V3p, V2p, V1p)), [(V2 +1 =< 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 11). % n < 0
stmtsrc(11, 'assume(n < 0);').
transition_access( 11, [_, _, r, _] ).
r(p(pc(main-5-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 0, V3p = V3, V2p = V2, V1p = V1], 12). % tmp := 0
stmtsrc(12, 'tmp=0;').
transition_access( 12, [w, _, _, _] ).
r(p(pc(main-0-6), data(V4, V3, V2, V1)), p(pc(main-3-6), data(V4p, V3p, V2p, V1p)), [(V1 +1 =< 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 13). % i < 0
stmtsrc(13, 'assume(i < 0);').
transition_access( 13, [_, _, _, r] ).
r(p(pc(main-0-6), data(V4, V3, V2, V1)), p(pc(main-3-6), data(V4p, V3p, V2p, V1p)), [(V1 >= 1+ 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 14). % i > 0
stmtsrc(14, 'assume(i > 0);').
transition_access( 14, [_, _, _, r] ).
r(p(pc(main-3-6), data(V4, V3, V2, V1)), p(pc(main-1-6), data(V4p, V3p, V2p, V1p)), [], [V4p = 0, V3p = V3, V2p = V2, V1p = V1], 15). % tmp := 0
stmtsrc(15, 'tmp=0;').
transition_access( 15, [w, _, _, _] ).
r(p(pc(main-1-6), data(V4, V3, V2, V1)), p(pc(main-10-7), data(V4p, V3p, V2p, V1p)), [(V4 +1 =< 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 16). % tmp < 0
stmtsrc(16, 'assume(tmp < 0);').
transition_access( 16, [r, _, _, _] ).
r(p(pc(main-1-6), data(V4, V3, V2, V1)), p(pc(main-10-7), data(V4p, V3p, V2p, V1p)), [(V4 >= 1+ 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 17). % tmp > 0
stmtsrc(17, 'assume(tmp > 0);').
transition_access( 17, [r, _, _, _] ).
r(p(pc(main-10-7), data(V4, V3, V2, V1)), p(pc(main-13-7), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 18). % 
stmtsrc(18, 'skip;').
transition_access( 18, [_, _, _, _] ).
r(p(pc(main-13-7), data(V4, V3, V2, V1)), p(pc(main-14-8), data(V4p, V3p, V2p, V1p)), [(V1 +1 =< V2)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 19). % i < n
stmtsrc(19, 'assume(i < n);').
transition_access( 19, [_, _, r, r] ).
r(p(pc(main-13-7), data(V4, V3, V2, V1)), p(pc(main-15-7), data(V4p, V3p, V2p, V1p)), [(V1 >= V2)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 20). % i >= n
stmtsrc(20, 'assume(i >= n);').
transition_access( 20, [_, _, r, r] ).
r(p(pc(main-14-8), data(V4, V3, V2, V1)), p(pc(main-16-0), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = (V3 + V1), V2p = V2, V1p = V1], 21). % sum := sum + i
stmtsrc(21, 'sum=sum + i;').
transition_access( 21, [_, w, _, r] ).
r(p(pc(main-16-0), data(V4, V3, V2, V1)), p(pc(main-10-7), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = (V1 + 1)], 22). % i := i + 1
stmtsrc(22, 'i=i + 1;').
transition_access( 22, [_, _, _, w] ).
r(p(pc(main-12-0), data(V4, V3, V2, V1)), p(pc(main-11-10), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 23). % 
stmtsrc(23, 'skip;').
transition_access( 23, [_, _, _, _] ).
r(p(pc(main-11-10), data(V4, V3, V2, V1)), p(pc(main-err-0), data(V4p, V3p, V2p, V1p)), [(V3 +1 =< 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 24). % sum < 0
stmtsrc(24, 'assume(sum < 0);').
transition_access( 24, [_, r, _, _] ).
r(p(pc(main-11-10), data(V4, V3, V2, V1)), p(pc(main-17-11), data(V4p, V3p, V2p, V1p)), [(V3 >= 0)], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 25). % sum >= 0
stmtsrc(25, 'assume(sum >= 0);').
transition_access( 25, [_, r, _, _] ).
r(p(pc(main-17-11), data(V4, V3, V2, V1)), p(pc(main-ret-0), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _, _] ).
r(p(pc(main-15-7), data(V4, V3, V2, V1)), p(pc(main-12-0), data(V4p, V3p, V2p, V1p)), [], [V4p = V4, V3p = V3, V2p = V2, V1p = V1], 27). % 
stmtsrc(27, 'skip;').
transition_access( 27, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-10-7), data(V4, V3, V2, V1)), [( 1)*V4 +( -1) = 0,( 1)*V4 +( -1) >= 0, ( -1)*V4 +( 1) >= 0,( 1)*V4+( 0)*V3+( 0)*V2+( 0)*V1 +( -1) = 0]).
