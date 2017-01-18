:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V1, V3, V2)), []).
trans_preds(p(_, data(V1, V3, V2)), p(_, data(V1p, V3p, V2p)), []).
var2names(p(pc(_), data(V1, V3, V2)), [(V1, 'x'), (V3, 'tmp___0'), (V2, 'tmp')]).
globals(p(pc(_), data(V1, V3, V2)), [], []).
% start location
start(pc(main-0-4)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-5)). % line 5
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V1, V3, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 30 transitions
r(p(pc(main-0-4), data(V1, V3, V2)), p(pc(main-2-4), data(V1p, V3p, V2p)), [(V1 >= 0)], [V1p = V1, V3p = V3, V2p = V2], 1). % x >= 0
stmtsrc(1, 'assume(x >= 0);').
transition_access( 1, [r, _, _] ).
r(p(pc(main-2-4), data(V1, V3, V2)), p(pc(main-4-4), data(V1p, V3p, V2p)), [(V1 =< 50)], [V1p = V1, V3p = V3, V2p = V2], 2). % x <= 50
stmtsrc(2, 'assume(x <= 50);').
transition_access( 2, [r, _, _] ).
r(p(pc(main-4-4), data(V1, V3, V2)), p(pc(main-1-4), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = 1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [_, _, w] ).
r(p(pc(main-2-4), data(V1, V3, V2)), p(pc(main-5-4), data(V1p, V3p, V2p)), [(V1 >= 1+ 50)], [V1p = V1, V3p = V3, V2p = V2], 4). % x > 50
stmtsrc(4, 'assume(x > 50);').
transition_access( 4, [r, _, _] ).
r(p(pc(main-5-4), data(V1, V3, V2)), p(pc(main-1-4), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = 0], 5). % tmp := 0
stmtsrc(5, 'tmp=0;').
transition_access( 5, [_, _, w] ).
r(p(pc(main-0-4), data(V1, V3, V2)), p(pc(main-3-4), data(V1p, V3p, V2p)), [(V1 +1 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 6). % x < 0
stmtsrc(6, 'assume(x < 0);').
transition_access( 6, [r, _, _] ).
r(p(pc(main-3-4), data(V1, V3, V2)), p(pc(main-1-4), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = 0], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, _, w] ).
r(p(pc(main-1-4), data(V1, V3, V2)), p(pc(main-6-5), data(V1p, V3p, V2p)), [(V2 +1 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 8). % tmp < 0
stmtsrc(8, 'assume(tmp < 0);').
transition_access( 8, [_, _, r] ).
r(p(pc(main-1-4), data(V1, V3, V2)), p(pc(main-6-5), data(V1p, V3p, V2p)), [(V2 >= 1+ 0)], [V1p = V1, V3p = V3, V2p = V2], 9). % tmp > 0
stmtsrc(9, 'assume(tmp > 0);').
transition_access( 9, [_, _, r] ).
r(p(pc(main-6-5), data(V1, V3, V2)), p(pc(main-9-6), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_, _, _] ).
r(p(pc(main-9-6), data(V1, V3, V2)), p(pc(main-11-6), data(V1p, V3p, V2p)), [(V1 >= 1+ 50)], [V1p = V1, V3p = V3, V2p = V2], 11). % x > 50
stmtsrc(11, 'assume(x > 50);').
transition_access( 11, [r, _, _] ).
r(p(pc(main-11-6), data(V1, V3, V2)), p(pc(main-10-7), data(V1p, V3p, V2p)), [], [V1p = (V1 + 1), V3p = V3, V2p = V2], 12). % x := x + 1
stmtsrc(12, 'x=x + 1;').
transition_access( 12, [w, _, _] ).
r(p(pc(main-9-6), data(V1, V3, V2)), p(pc(main-10-7), data(V1p, V3p, V2p)), [(V1 =< 50)], [V1p = V1, V3p = V3, V2p = V2], 13). % x <= 50
stmtsrc(13, 'assume(x <= 50);').
transition_access( 13, [r, _, _] ).
r(p(pc(main-10-7), data(V1, V3, V2)), p(pc(main-13-8), data(V1p, V3p, V2p)), [(V1 = 0)], [V1p = V1, V3p = V3, V2p = V2], 14). % x == 0
stmtsrc(14, 'assume(x == 0);').
transition_access( 14, [r, _, _] ).
r(p(pc(main-13-8), data(V1, V3, V2)), p(pc(main-12-10), data(V1p, V3p, V2p)), [], [V1p = (V1 + 1), V3p = V3, V2p = V2], 15). % x := x + 1
stmtsrc(15, 'x=x + 1;').
transition_access( 15, [w, _, _] ).
r(p(pc(main-10-7), data(V1, V3, V2)), p(pc(main-14-9), data(V1p, V3p, V2p)), [(V1 +1 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 16). % x < 0
stmtsrc(16, 'assume(x < 0);').
transition_access( 16, [r, _, _] ).
r(p(pc(main-10-7), data(V1, V3, V2)), p(pc(main-14-9), data(V1p, V3p, V2p)), [(V1 >= 1+ 0)], [V1p = V1, V3p = V3, V2p = V2], 17). % x > 0
stmtsrc(17, 'assume(x > 0);').
transition_access( 17, [r, _, _] ).
r(p(pc(main-14-9), data(V1, V3, V2)), p(pc(main-12-10), data(V1p, V3p, V2p)), [], [V1p = (V1 - 1), V3p = V3, V2p = V2], 18). % x := x - 1
stmtsrc(18, 'x=x - 1;').
transition_access( 18, [w, _, _] ).
r(p(pc(main-12-10), data(V1, V3, V2)), p(pc(main-16-10), data(V1p, V3p, V2p)), [(V1 >= 0)], [V1p = V1, V3p = V3, V2p = V2], 19). % x >= 0
stmtsrc(19, 'assume(x >= 0);').
transition_access( 19, [r, _, _] ).
r(p(pc(main-16-10), data(V1, V3, V2)), p(pc(main-18-10), data(V1p, V3p, V2p)), [(V1 =< 50)], [V1p = V1, V3p = V3, V2p = V2], 20). % x <= 50
stmtsrc(20, 'assume(x <= 50);').
transition_access( 20, [r, _, _] ).
r(p(pc(main-18-10), data(V1, V3, V2)), p(pc(main-15-10), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = 1, V2p = V2], 21). % tmp___0 := 1
stmtsrc(21, 'tmp___0=1;').
transition_access( 21, [_, w, _] ).
r(p(pc(main-16-10), data(V1, V3, V2)), p(pc(main-19-10), data(V1p, V3p, V2p)), [(V1 >= 1+ 50)], [V1p = V1, V3p = V3, V2p = V2], 22). % x > 50
stmtsrc(22, 'assume(x > 50);').
transition_access( 22, [r, _, _] ).
r(p(pc(main-19-10), data(V1, V3, V2)), p(pc(main-15-10), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = 0, V2p = V2], 23). % tmp___0 := 0
stmtsrc(23, 'tmp___0=0;').
transition_access( 23, [_, w, _] ).
r(p(pc(main-12-10), data(V1, V3, V2)), p(pc(main-17-10), data(V1p, V3p, V2p)), [(V1 +1 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 24). % x < 0
stmtsrc(24, 'assume(x < 0);').
transition_access( 24, [r, _, _] ).
r(p(pc(main-17-10), data(V1, V3, V2)), p(pc(main-15-10), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = 0, V2p = V2], 25). % tmp___0 := 0
stmtsrc(25, 'tmp___0=0;').
transition_access( 25, [_, w, _] ).
r(p(pc(main-15-10), data(V1, V3, V2)), p(pc(main-err-0), data(V1p, V3p, V2p)), [(V3 = 0)], [V1p = V1, V3p = V3, V2p = V2], 26). % tmp___0 == 0
stmtsrc(26, 'assume(tmp___0 == 0);').
transition_access( 26, [_, r, _] ).
r(p(pc(main-15-10), data(V1, V3, V2)), p(pc(main-6-5), data(V1p, V3p, V2p)), [(V3 +1 =< 0)], [V1p = V1, V3p = V3, V2p = V2], 27). % tmp___0 < 0
stmtsrc(27, 'assume(tmp___0 < 0);').
transition_access( 27, [_, r, _] ).
r(p(pc(main-15-10), data(V1, V3, V2)), p(pc(main-6-5), data(V1p, V3p, V2p)), [(V3 >= 1+ 0)], [V1p = V1, V3p = V3, V2p = V2], 28). % tmp___0 > 0
stmtsrc(28, 'assume(tmp___0 > 0);').
transition_access( 28, [_, r, _] ).
r(p(pc(main-8-0), data(V1, V3, V2)), p(pc(main-7-12), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 29). % 
stmtsrc(29, 'skip;').
transition_access( 29, [_, _, _] ).
r(p(pc(main-7-12), data(V1, V3, V2)), p(pc(main-ret-0), data(V1p, V3p, V2p)), [], [V1p = V1, V3p = V3, V2p = V2], 30). % 
stmtsrc(30, 'skip;').
transition_access( 30, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-5), data(V1, V3, V2)), [( 1)*V2 +( -1) = 0,( 1)*V2 +( -1) >= 0, ( -1)*V2 +( 1) >= 0,( 0)*V1+( 0)*V3+( 1)*V2 +( -1) = 0]).
