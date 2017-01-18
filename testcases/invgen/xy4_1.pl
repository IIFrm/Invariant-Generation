:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1, V4, V3)), []).
trans_preds(p(_, data(V2, V1, V4, V3)), p(_, data(V2p, V1p, V4p, V3p)), []).
var2names(p(pc(_), data(V2, V1, V4, V3)), [(V2, 'y'), (V1, 'x'), (V4, 'tmp___0'), (V3, 'tmp')]).
globals(p(pc(_), data(V2, V1, V4, V3)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1, V4, V3), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 27 transitions
r(p(pc(main-0-5), data(V2, V1, V4, V3)), p(pc(main-2-5), data(V2p, V1p, V4p, V3p)), [(V1 = V2)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 1). % x == y
stmtsrc(1, 'assume(x == y);').
transition_access( 1, [r, r, _, _] ).
r(p(pc(main-2-5), data(V2, V1, V4, V3)), p(pc(main-4-5), data(V2p, V1p, V4p, V3p)), [(V2 = 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 2). % y == 0
stmtsrc(2, 'assume(y == 0);').
transition_access( 2, [r, _, _, _] ).
r(p(pc(main-4-5), data(V2, V1, V4, V3)), p(pc(main-1-5), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = 1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [_, _, _, w] ).
r(p(pc(main-2-5), data(V2, V1, V4, V3)), p(pc(main-5-5), data(V2p, V1p, V4p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 4). % y < 0
stmtsrc(4, 'assume(y < 0);').
transition_access( 4, [r, _, _, _] ).
r(p(pc(main-2-5), data(V2, V1, V4, V3)), p(pc(main-5-5), data(V2p, V1p, V4p, V3p)), [(V2 >= 1+ 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 5). % y > 0
stmtsrc(5, 'assume(y > 0);').
transition_access( 5, [r, _, _, _] ).
r(p(pc(main-5-5), data(V2, V1, V4, V3)), p(pc(main-1-5), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = 0], 6). % tmp := 0
stmtsrc(6, 'tmp=0;').
transition_access( 6, [_, _, _, w] ).
r(p(pc(main-0-5), data(V2, V1, V4, V3)), p(pc(main-3-5), data(V2p, V1p, V4p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 7). % x < y
stmtsrc(7, 'assume(x < y);').
transition_access( 7, [r, r, _, _] ).
r(p(pc(main-0-5), data(V2, V1, V4, V3)), p(pc(main-3-5), data(V2p, V1p, V4p, V3p)), [(V1 >= 1+ V2)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 8). % x > y
stmtsrc(8, 'assume(x > y);').
transition_access( 8, [r, r, _, _] ).
r(p(pc(main-3-5), data(V2, V1, V4, V3)), p(pc(main-1-5), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = 0], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, _, _, w] ).
r(p(pc(main-1-5), data(V2, V1, V4, V3)), p(pc(main-6-6), data(V2p, V1p, V4p, V3p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 10). % tmp < 0
stmtsrc(10, 'assume(tmp < 0);').
transition_access( 10, [_, _, _, r] ).
r(p(pc(main-1-5), data(V2, V1, V4, V3)), p(pc(main-6-6), data(V2p, V1p, V4p, V3p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 11). % tmp > 0
stmtsrc(11, 'assume(tmp > 0);').
transition_access( 11, [_, _, _, r] ).
r(p(pc(main-6-6), data(V2, V1, V4, V3)), p(pc(main-9-7), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 12). % 
stmtsrc(12, 'skip;').
transition_access( 12, [_, _, _, _] ).
r(p(pc(main-9-7), data(V2, V1, V4, V3)), p(pc(main-11-0), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = (V1 + 4), V4p = V4, V3p = V3], 13). % x := x + 4
stmtsrc(13, 'x=x + 4;').
transition_access( 13, [_, w, _, _] ).
r(p(pc(main-11-0), data(V2, V1, V4, V3)), p(pc(main-10-8), data(V2p, V1p, V4p, V3p)), [], [V2p = (V2 + 1), V1p = V1, V4p = V4, V3p = V3], 14). % y := y + 1
stmtsrc(14, 'y=y + 1;').
transition_access( 14, [w, _, _, _] ).
r(p(pc(main-10-8), data(V2, V1, V4, V3)), p(pc(main-13-8), data(V2p, V1p, V4p, V3p)), [(V1 = (4 * V2))], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 15). % x == 4 * y
stmtsrc(15, 'assume(x == 4 * y);').
transition_access( 15, [r, r, _, _] ).
r(p(pc(main-13-8), data(V2, V1, V4, V3)), p(pc(main-15-8), data(V2p, V1p, V4p, V3p)), [(V1 >= 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 16). % x >= 0
stmtsrc(16, 'assume(x >= 0);').
transition_access( 16, [_, r, _, _] ).
r(p(pc(main-15-8), data(V2, V1, V4, V3)), p(pc(main-12-8), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 1, V3p = V3], 17). % tmp___0 := 1
stmtsrc(17, 'tmp___0=1;').
transition_access( 17, [_, _, w, _] ).
r(p(pc(main-13-8), data(V2, V1, V4, V3)), p(pc(main-16-8), data(V2p, V1p, V4p, V3p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 18). % x < 0
stmtsrc(18, 'assume(x < 0);').
transition_access( 18, [_, r, _, _] ).
r(p(pc(main-16-8), data(V2, V1, V4, V3)), p(pc(main-12-8), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 0, V3p = V3], 19). % tmp___0 := 0
stmtsrc(19, 'tmp___0=0;').
transition_access( 19, [_, _, w, _] ).
r(p(pc(main-10-8), data(V2, V1, V4, V3)), p(pc(main-14-8), data(V2p, V1p, V4p, V3p)), [(V1 +1 =< (4 * V2))], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 20). % x < 4 * y
stmtsrc(20, 'assume(x < 4 * y);').
transition_access( 20, [r, r, _, _] ).
r(p(pc(main-10-8), data(V2, V1, V4, V3)), p(pc(main-14-8), data(V2p, V1p, V4p, V3p)), [(V1 >= 1+ (4 * V2))], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 21). % x > 4 * y
stmtsrc(21, 'assume(x > 4 * y);').
transition_access( 21, [r, r, _, _] ).
r(p(pc(main-14-8), data(V2, V1, V4, V3)), p(pc(main-12-8), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 0, V3p = V3], 22). % tmp___0 := 0
stmtsrc(22, 'tmp___0=0;').
transition_access( 22, [_, _, w, _] ).
r(p(pc(main-12-8), data(V2, V1, V4, V3)), p(pc(main-err-0), data(V2p, V1p, V4p, V3p)), [(V4 = 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 23). % tmp___0 == 0
stmtsrc(23, 'assume(tmp___0 == 0);').
transition_access( 23, [_, _, r, _] ).
r(p(pc(main-12-8), data(V2, V1, V4, V3)), p(pc(main-6-6), data(V2p, V1p, V4p, V3p)), [(V4 +1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 24). % tmp___0 < 0
stmtsrc(24, 'assume(tmp___0 < 0);').
transition_access( 24, [_, _, r, _] ).
r(p(pc(main-12-8), data(V2, V1, V4, V3)), p(pc(main-6-6), data(V2p, V1p, V4p, V3p)), [(V4 >= 1+ 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 25). % tmp___0 > 0
stmtsrc(25, 'assume(tmp___0 > 0);').
transition_access( 25, [_, _, r, _] ).
r(p(pc(main-8-0), data(V2, V1, V4, V3)), p(pc(main-7-10), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _, _] ).
r(p(pc(main-7-10), data(V2, V1, V4, V3)), p(pc(main-ret-0), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 27). % 
stmtsrc(27, 'skip;').
transition_access( 27, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-6), data(V2, V1, V4, V3)), [( 1)*V3 +( -1) = 0,( 1)*V3 +( -1) >= 0, ( -1)*V3 +( 1) >= 0,( 0)*V2+( 0)*V1+( 0)*V4+( 1)*V3 +( -1) = 0]).
