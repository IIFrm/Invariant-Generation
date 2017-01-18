:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V1, V3, V4, V2)), []).
trans_preds(p(_, data(V1, V3, V4, V2)), p(_, data(V1p, V3p, V4p, V2p)), []).
var2names(p(pc(_), data(V1, V3, V4, V2)), [(V1, 'y'), (V3, 'x'), (V4, 'tmp___0'), (V2, 'tmp')]).
globals(p(pc(_), data(V1, V3, V4, V2)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-6)). % line 6
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V1, V3, V4, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 26 transitions
r(p(pc(main-0-5), data(V1, V3, V4, V2)), p(pc(main-2-5), data(V1p, V3p, V4p, V2p)), [(V1 >= 1+ 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 1). % y > 0
stmtsrc(1, 'assume(y > 0);').
transition_access( 1, [r, _, _, _] ).
r(p(pc(main-2-5), data(V1, V3, V4, V2)), p(pc(main-1-5), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = V4, V2p = 1], 2). % tmp := 1
stmtsrc(2, 'tmp=1;').
transition_access( 2, [_, _, _, w] ).
r(p(pc(main-0-5), data(V1, V3, V4, V2)), p(pc(main-3-5), data(V1p, V3p, V4p, V2p)), [(V1 =< 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 3). % y <= 0
stmtsrc(3, 'assume(y <= 0);').
transition_access( 3, [r, _, _, _] ).
r(p(pc(main-3-5), data(V1, V3, V4, V2)), p(pc(main-4-5), data(V1p, V3p, V4p, V2p)), [(V3 >= 1+ 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 4). % x > 0
stmtsrc(4, 'assume(x > 0);').
transition_access( 4, [_, r, _, _] ).
r(p(pc(main-4-5), data(V1, V3, V4, V2)), p(pc(main-1-5), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = V4, V2p = 1], 5). % tmp := 1
stmtsrc(5, 'tmp=1;').
transition_access( 5, [_, _, _, w] ).
r(p(pc(main-3-5), data(V1, V3, V4, V2)), p(pc(main-5-5), data(V1p, V3p, V4p, V2p)), [(V3 =< 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 6). % x <= 0
stmtsrc(6, 'assume(x <= 0);').
transition_access( 6, [_, r, _, _] ).
r(p(pc(main-5-5), data(V1, V3, V4, V2)), p(pc(main-1-5), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = V4, V2p = 0], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, _, _, w] ).
r(p(pc(main-1-5), data(V1, V3, V4, V2)), p(pc(main-6-6), data(V1p, V3p, V4p, V2p)), [(V2 +1 =< 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 8). % tmp < 0
stmtsrc(8, 'assume(tmp < 0);').
transition_access( 8, [_, _, _, r] ).
r(p(pc(main-1-5), data(V1, V3, V4, V2)), p(pc(main-6-6), data(V1p, V3p, V4p, V2p)), [(V2 >= 1+ 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 9). % tmp > 0
stmtsrc(9, 'assume(tmp > 0);').
transition_access( 9, [_, _, _, r] ).
r(p(pc(main-6-6), data(V1, V3, V4, V2)), p(pc(main-9-7), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_, _, _, _] ).
r(p(pc(main-9-7), data(V1, V3, V4, V2)), p(pc(main-11-8), data(V1p, V3p, V4p, V2p)), [(V3 >= 1+ 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 11). % x > 0
stmtsrc(11, 'assume(x > 0);').
transition_access( 11, [_, r, _, _] ).
r(p(pc(main-11-8), data(V1, V3, V4, V2)), p(pc(main-10-11), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = (V3 + 1), V4p = V4, V2p = V2], 12). % x := x + 1
stmtsrc(12, 'x=x + 1;').
transition_access( 12, [_, w, _, _] ).
r(p(pc(main-9-7), data(V1, V3, V4, V2)), p(pc(main-12-10), data(V1p, V3p, V4p, V2p)), [(V3 =< 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 13). % x <= 0
stmtsrc(13, 'assume(x <= 0);').
transition_access( 13, [_, r, _, _] ).
r(p(pc(main-12-10), data(V1, V3, V4, V2)), p(pc(main-10-11), data(V1p, V3p, V4p, V2p)), [], [V1p = (V1 + 1), V3p = V3, V4p = V4, V2p = V2], 14). % y := y + 1
stmtsrc(14, 'y=y + 1;').
transition_access( 14, [w, _, _, _] ).
r(p(pc(main-10-11), data(V1, V3, V4, V2)), p(pc(main-14-11), data(V1p, V3p, V4p, V2p)), [(V3 >= 1+ 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 15). % x > 0
stmtsrc(15, 'assume(x > 0);').
transition_access( 15, [_, r, _, _] ).
r(p(pc(main-14-11), data(V1, V3, V4, V2)), p(pc(main-13-11), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = 1, V2p = V2], 16). % tmp___0 := 1
stmtsrc(16, 'tmp___0=1;').
transition_access( 16, [_, _, w, _] ).
r(p(pc(main-10-11), data(V1, V3, V4, V2)), p(pc(main-15-11), data(V1p, V3p, V4p, V2p)), [(V3 =< 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 17). % x <= 0
stmtsrc(17, 'assume(x <= 0);').
transition_access( 17, [_, r, _, _] ).
r(p(pc(main-15-11), data(V1, V3, V4, V2)), p(pc(main-16-11), data(V1p, V3p, V4p, V2p)), [(V1 >= 1+ 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 18). % y > 0
stmtsrc(18, 'assume(y > 0);').
transition_access( 18, [r, _, _, _] ).
r(p(pc(main-16-11), data(V1, V3, V4, V2)), p(pc(main-13-11), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = 1, V2p = V2], 19). % tmp___0 := 1
stmtsrc(19, 'tmp___0=1;').
transition_access( 19, [_, _, w, _] ).
r(p(pc(main-15-11), data(V1, V3, V4, V2)), p(pc(main-17-11), data(V1p, V3p, V4p, V2p)), [(V1 =< 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 20). % y <= 0
stmtsrc(20, 'assume(y <= 0);').
transition_access( 20, [r, _, _, _] ).
r(p(pc(main-17-11), data(V1, V3, V4, V2)), p(pc(main-13-11), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = 0, V2p = V2], 21). % tmp___0 := 0
stmtsrc(21, 'tmp___0=0;').
transition_access( 21, [_, _, w, _] ).
r(p(pc(main-13-11), data(V1, V3, V4, V2)), p(pc(main-err-0), data(V1p, V3p, V4p, V2p)), [(V4 = 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 22). % tmp___0 == 0
stmtsrc(22, 'assume(tmp___0 == 0);').
transition_access( 22, [_, _, r, _] ).
r(p(pc(main-13-11), data(V1, V3, V4, V2)), p(pc(main-6-6), data(V1p, V3p, V4p, V2p)), [(V4 +1 =< 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 23). % tmp___0 < 0
stmtsrc(23, 'assume(tmp___0 < 0);').
transition_access( 23, [_, _, r, _] ).
r(p(pc(main-13-11), data(V1, V3, V4, V2)), p(pc(main-6-6), data(V1p, V3p, V4p, V2p)), [(V4 >= 1+ 0)], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 24). % tmp___0 > 0
stmtsrc(24, 'assume(tmp___0 > 0);').
transition_access( 24, [_, _, r, _] ).
r(p(pc(main-8-0), data(V1, V3, V4, V2)), p(pc(main-7-13), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _, _, _] ).
r(p(pc(main-7-13), data(V1, V3, V4, V2)), p(pc(main-ret-0), data(V1p, V3p, V4p, V2p)), [], [V1p = V1, V3p = V3, V4p = V4, V2p = V2], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-6), data(V1, V3, V4, V2)), [( 1)*V2 +( -1) = 0,( 1)*V2 +( -1) >= 0, ( -1)*V2 +( 1) >= 0,( 0)*V1+( 0)*V3+( 0)*V4+( 1)*V2 +( -1) = 0]).
