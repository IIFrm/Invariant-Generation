:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1, V3)), []).
trans_preds(p(_, data(V2, V1, V3)), p(_, data(V2p, V1p, V3p)), []).
var2names(p(pc(_), data(V2, V1, V3)), [(V2, 'y'), (V1, 'x'), (V3, 'tmp')]).
globals(p(pc(_), data(V2, V1, V3)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-1-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1, V3), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 25 transitions
r(p(pc(main-0-5), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V3p = V3], 1). % x < y
stmtsrc(1, 'assume(x < y);').
transition_access( 1, [r, r, _] ).
r(p(pc(main-1-6), data(V2, V1, V3)), p(pc(main-4-6), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 2). % 
stmtsrc(2, 'skip;').
transition_access( 2, [_, _, _] ).
r(p(pc(main-4-6), data(V2, V1, V3)), p(pc(main-5-7), data(V2p, V1p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V3p = V3], 3). % x < y
stmtsrc(3, 'assume(x < y);').
transition_access( 3, [r, r, _] ).
r(p(pc(main-4-6), data(V2, V1, V3)), p(pc(main-6-6), data(V2p, V1p, V3p)), [(V1 >= V2)], [V2p = V2, V1p = V1, V3p = V3], 4). % x >= y
stmtsrc(4, 'assume(x >= y);').
transition_access( 4, [r, r, _] ).
r(p(pc(main-5-7), data(V2, V1, V3)), p(pc(main-8-7), data(V2p, V1p, V3p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 5). % x < 0
stmtsrc(5, 'assume(x < 0);').
transition_access( 5, [_, r, _] ).
r(p(pc(main-8-7), data(V2, V1, V3)), p(pc(main-7-8), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 7), V3p = V3], 6). % x := x + 7
stmtsrc(6, 'x=x + 7;').
transition_access( 6, [_, w, _] ).
r(p(pc(main-5-7), data(V2, V1, V3)), p(pc(main-9-7), data(V2p, V1p, V3p)), [(V1 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 7). % x >= 0
stmtsrc(7, 'assume(x >= 0);').
transition_access( 7, [_, r, _] ).
r(p(pc(main-9-7), data(V2, V1, V3)), p(pc(main-7-8), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 10), V3p = V3], 8). % x := x + 10
stmtsrc(8, 'x=x + 10;').
transition_access( 8, [_, w, _] ).
r(p(pc(main-7-8), data(V2, V1, V3)), p(pc(main-10-8), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 9). % y < 0
stmtsrc(9, 'assume(y < 0);').
transition_access( 9, [r, _, _] ).
r(p(pc(main-10-8), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = (V2 - 10), V1p = V1, V3p = V3], 10). % y := y - 10
stmtsrc(10, 'y=y - 10;').
transition_access( 10, [w, _, _] ).
r(p(pc(main-7-8), data(V2, V1, V3)), p(pc(main-11-8), data(V2p, V1p, V3p)), [(V2 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 11). % y >= 0
stmtsrc(11, 'assume(y >= 0);').
transition_access( 11, [r, _, _] ).
r(p(pc(main-11-8), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = (V2 + 3), V1p = V1, V3p = V3], 12). % y := y + 3
stmtsrc(12, 'y=y + 3;').
transition_access( 12, [w, _, _] ).
r(p(pc(main-3-0), data(V2, V1, V3)), p(pc(main-2-10), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 13). % 
stmtsrc(13, 'skip;').
transition_access( 13, [_, _, _] ).
r(p(pc(main-2-10), data(V2, V1, V3)), p(pc(main-13-10), data(V2p, V1p, V3p)), [(V1 >= V2)], [V2p = V2, V1p = V1, V3p = V3], 14). % x >= y
stmtsrc(14, 'assume(x >= y);').
transition_access( 14, [r, r, _] ).
r(p(pc(main-13-10), data(V2, V1, V3)), p(pc(main-15-10), data(V2p, V1p, V3p)), [(V1 =< (V2 + 16))], [V2p = V2, V1p = V1, V3p = V3], 15). % x <= y + 16
stmtsrc(15, 'assume(x <= y + 16);').
transition_access( 15, [r, r, _] ).
r(p(pc(main-15-10), data(V2, V1, V3)), p(pc(main-12-10), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 1], 16). % tmp := 1
stmtsrc(16, 'tmp=1;').
transition_access( 16, [_, _, w] ).
r(p(pc(main-13-10), data(V2, V1, V3)), p(pc(main-16-10), data(V2p, V1p, V3p)), [(V1 >= 1+ (V2 + 16))], [V2p = V2, V1p = V1, V3p = V3], 17). % x > y + 16
stmtsrc(17, 'assume(x > y + 16);').
transition_access( 17, [r, r, _] ).
r(p(pc(main-16-10), data(V2, V1, V3)), p(pc(main-12-10), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 18). % tmp := 0
stmtsrc(18, 'tmp=0;').
transition_access( 18, [_, _, w] ).
r(p(pc(main-2-10), data(V2, V1, V3)), p(pc(main-14-10), data(V2p, V1p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V3p = V3], 19). % x < y
stmtsrc(19, 'assume(x < y);').
transition_access( 19, [r, r, _] ).
r(p(pc(main-14-10), data(V2, V1, V3)), p(pc(main-12-10), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 20). % tmp := 0
stmtsrc(20, 'tmp=0;').
transition_access( 20, [_, _, w] ).
r(p(pc(main-12-10), data(V2, V1, V3)), p(pc(main-err-0), data(V2p, V1p, V3p)), [(V3 = 0)], [V2p = V2, V1p = V1, V3p = V3], 21). % tmp == 0
stmtsrc(21, 'assume(tmp == 0);').
transition_access( 21, [_, _, r] ).
r(p(pc(main-12-10), data(V2, V1, V3)), p(pc(main-17-11), data(V2p, V1p, V3p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 22). % tmp < 0
stmtsrc(22, 'assume(tmp < 0);').
transition_access( 22, [_, _, r] ).
r(p(pc(main-12-10), data(V2, V1, V3)), p(pc(main-17-11), data(V2p, V1p, V3p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 23). % tmp > 0
stmtsrc(23, 'assume(tmp > 0);').
transition_access( 23, [_, _, r] ).
r(p(pc(main-17-11), data(V2, V1, V3)), p(pc(main-ret-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 24). % 
stmtsrc(24, 'skip;').
transition_access( 24, [_, _, _] ).
r(p(pc(main-6-6), data(V2, V1, V3)), p(pc(main-3-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-1-6), data(V2, V1, V3)), [1>=0,( 1)*V2+( -1)*V1 +( 20) >= 0,( 1)*V2+( -1)*V1+( 0)*V3 +( 20) >= 0]).
