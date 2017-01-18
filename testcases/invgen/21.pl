:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V3, V2, V5, V1, V4)), []).
trans_preds(p(_, data(V3, V2, V5, V1, V4)), p(_, data(V3p, V2p, V5p, V1p, V4p)), []).
var2names(p(pc(_), data(V3, V2, V5, V1, V4)), [(V3, 'tmp'), (V2, 'n'), (V5, 'k'), (V1, 'i'), (V4, 'flag')]).
globals(p(pc(_), data(V3, V2, V5, V1, V4)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-7-9)). % line 9
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V3, V2, V5, V1, V4), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 24 transitions
r(p(pc(main-0-6), data(V3, V2, V5, V1, V4)), p(pc(main-1-8), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = V5, V1p = 0, V4p = V4], 1). % i := 0
stmtsrc(1, 'i=0;').
transition_access( 1, [_, _, _, w, _] ).
r(p(pc(main-1-8), data(V3, V2, V5, V1, V4)), p(pc(main-3-8), data(V3p, V2p, V5p, V1p, V4p)), [(V2 >= 1+ 0)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 2). % n > 0
stmtsrc(2, 'assume(n > 0);').
transition_access( 2, [_, r, _, _, _] ).
r(p(pc(main-3-8), data(V3, V2, V5, V1, V4)), p(pc(main-5-8), data(V3p, V2p, V5p, V1p, V4p)), [(V2 +1 =< 10)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 3). % n < 10
stmtsrc(3, 'assume(n < 10);').
transition_access( 3, [_, r, _, _, _] ).
r(p(pc(main-5-8), data(V3, V2, V5, V1, V4)), p(pc(main-2-8), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = 1, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 4). % tmp := 1
stmtsrc(4, 'tmp=1;').
transition_access( 4, [w, _, _, _, _] ).
r(p(pc(main-3-8), data(V3, V2, V5, V1, V4)), p(pc(main-6-8), data(V3p, V2p, V5p, V1p, V4p)), [(V2 >= 10)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 5). % n >= 10
stmtsrc(5, 'assume(n >= 10);').
transition_access( 5, [_, r, _, _, _] ).
r(p(pc(main-6-8), data(V3, V2, V5, V1, V4)), p(pc(main-2-8), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = 0, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 6). % tmp := 0
stmtsrc(6, 'tmp=0;').
transition_access( 6, [w, _, _, _, _] ).
r(p(pc(main-1-8), data(V3, V2, V5, V1, V4)), p(pc(main-4-8), data(V3p, V2p, V5p, V1p, V4p)), [(V2 =< 0)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 7). % n <= 0
stmtsrc(7, 'assume(n <= 0);').
transition_access( 7, [_, r, _, _, _] ).
r(p(pc(main-4-8), data(V3, V2, V5, V1, V4)), p(pc(main-2-8), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = 0, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 8). % tmp := 0
stmtsrc(8, 'tmp=0;').
transition_access( 8, [w, _, _, _, _] ).
r(p(pc(main-2-8), data(V3, V2, V5, V1, V4)), p(pc(main-7-9), data(V3p, V2p, V5p, V1p, V4p)), [(V3 +1 =< 0)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 9). % tmp < 0
stmtsrc(9, 'assume(tmp < 0);').
transition_access( 9, [r, _, _, _, _] ).
r(p(pc(main-2-8), data(V3, V2, V5, V1, V4)), p(pc(main-7-9), data(V3p, V2p, V5p, V1p, V4p)), [(V3 >= 1+ 0)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 10). % tmp > 0
stmtsrc(10, 'assume(tmp > 0);').
transition_access( 10, [r, _, _, _, _] ).
r(p(pc(main-7-9), data(V3, V2, V5, V1, V4)), p(pc(main-10-9), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 11). % 
stmtsrc(11, 'skip;').
transition_access( 11, [_, _, _, _, _] ).
r(p(pc(main-10-9), data(V3, V2, V5, V1, V4)), p(pc(main-11-10), data(V3p, V2p, V5p, V1p, V4p)), [(V1 +1 =< V2)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 12). % i < n
stmtsrc(12, 'assume(i < n);').
transition_access( 12, [_, r, _, r, _] ).
r(p(pc(main-10-9), data(V3, V2, V5, V1, V4)), p(pc(main-12-9), data(V3p, V2p, V5p, V1p, V4p)), [(V1 >= V2)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 13). % i >= n
stmtsrc(13, 'assume(i >= n);').
transition_access( 13, [_, r, _, r, _] ).
r(p(pc(main-11-10), data(V3, V2, V5, V1, V4)), p(pc(main-13-10), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = V5, V1p = (V1 + 1), V4p = V4], 14). % i := i + 1
stmtsrc(14, 'i=i + 1;').
transition_access( 14, [_, _, _, w, _] ).
r(p(pc(main-13-10), data(V3, V2, V5, V1, V4)), p(pc(main-14-10), data(V3p, V2p, V5p, V1p, V4p)), [(V4 +1 =< 0)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 15). % flag < 0
stmtsrc(15, 'assume(flag < 0);').
transition_access( 15, [_, _, _, _, r] ).
r(p(pc(main-13-10), data(V3, V2, V5, V1, V4)), p(pc(main-14-10), data(V3p, V2p, V5p, V1p, V4p)), [(V4 >= 1+ 0)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 16). % flag > 0
stmtsrc(16, 'assume(flag > 0);').
transition_access( 16, [_, _, _, _, r] ).
r(p(pc(main-14-10), data(V3, V2, V5, V1, V4)), p(pc(main-7-9), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = (V5 + 4000), V1p = V1, V4p = V4], 17). % k := k + 4000
stmtsrc(17, 'k=k + 4000;').
transition_access( 17, [_, _, w, _, _] ).
r(p(pc(main-13-10), data(V3, V2, V5, V1, V4)), p(pc(main-15-10), data(V3p, V2p, V5p, V1p, V4p)), [(V4 = 0)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 18). % flag == 0
stmtsrc(18, 'assume(flag == 0);').
transition_access( 18, [_, _, _, _, r] ).
r(p(pc(main-15-10), data(V3, V2, V5, V1, V4)), p(pc(main-7-9), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = (V5 + 2000), V1p = V1, V4p = V4], 19). % k := k + 2000
stmtsrc(19, 'k=k + 2000;').
transition_access( 19, [_, _, w, _, _] ).
r(p(pc(main-9-0), data(V3, V2, V5, V1, V4)), p(pc(main-8-12), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 20). % 
stmtsrc(20, 'skip;').
transition_access( 20, [_, _, _, _, _] ).
r(p(pc(main-8-12), data(V3, V2, V5, V1, V4)), p(pc(main-err-0), data(V3p, V2p, V5p, V1p, V4p)), [(V5 =< V2)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 21). % k <= n
stmtsrc(21, 'assume(k <= n);').
transition_access( 21, [_, r, r, _, _] ).
r(p(pc(main-8-12), data(V3, V2, V5, V1, V4)), p(pc(main-16-13), data(V3p, V2p, V5p, V1p, V4p)), [(V5 >= 1+ V2)], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 22). % k > n
stmtsrc(22, 'assume(k > n);').
transition_access( 22, [_, r, r, _, _] ).
r(p(pc(main-16-13), data(V3, V2, V5, V1, V4)), p(pc(main-ret-0), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 23). % 
stmtsrc(23, 'skip;').
transition_access( 23, [_, _, _, _, _] ).
r(p(pc(main-12-9), data(V3, V2, V5, V1, V4)), p(pc(main-9-0), data(V3p, V2p, V5p, V1p, V4p)), [], [V3p = V3, V2p = V2, V5p = V5, V1p = V1, V4p = V4], 24). % 
stmtsrc(24, 'skip;').
transition_access( 24, [_, _, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-7-9), data(V3, V2, V5, V1, V4)), [( 1)*V1 +( 0) >= 0, ( 1)*V3 +( -1) = 0,( 1)*V1 +( 0) >= 0, ( 1)*V3+( 1)*V1 +( -1) >= 0, ( 1)*V3 +( -1) >= 0, ( -1)*V3+( 1)*V1 +( 1) >= 0, ( -1)*V3 +( 1) >= 0,( 1)*V3+( 0)*V2+( 0)*V5+( 0)*V1+( 0)*V4 +( -1) = 0, ( 0)*V3+( 0)*V2+( 0)*V5+( 1)*V1+( 0)*V4 +( 0) >= 0]).
