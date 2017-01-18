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
% 32 transitions
r(p(pc(main-0-5), data(V2, V1, V4, V3)), p(pc(main-2-5), data(V2p, V1p, V4p, V3p)), [(V1 +1 =< 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 1). % x < 100
stmtsrc(1, 'assume(x < 100);').
transition_access( 1, [_, r, _, _] ).
r(p(pc(main-2-5), data(V2, V1, V4, V3)), p(pc(main-4-5), data(V2p, V1p, V4p, V3p)), [(V2 +1 =< 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 2). % y < 100
stmtsrc(2, 'assume(y < 100);').
transition_access( 2, [r, _, _, _] ).
r(p(pc(main-4-5), data(V2, V1, V4, V3)), p(pc(main-1-5), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = 1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [_, _, _, w] ).
r(p(pc(main-2-5), data(V2, V1, V4, V3)), p(pc(main-5-5), data(V2p, V1p, V4p, V3p)), [(V2 >= 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 4). % y >= 100
stmtsrc(4, 'assume(y >= 100);').
transition_access( 4, [r, _, _, _] ).
r(p(pc(main-5-5), data(V2, V1, V4, V3)), p(pc(main-1-5), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = 0], 5). % tmp := 0
stmtsrc(5, 'tmp=0;').
transition_access( 5, [_, _, _, w] ).
r(p(pc(main-0-5), data(V2, V1, V4, V3)), p(pc(main-3-5), data(V2p, V1p, V4p, V3p)), [(V1 >= 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 6). % x >= 100
stmtsrc(6, 'assume(x >= 100);').
transition_access( 6, [_, r, _, _] ).
r(p(pc(main-3-5), data(V2, V1, V4, V3)), p(pc(main-1-5), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = 0], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [_, _, _, w] ).
r(p(pc(main-1-5), data(V2, V1, V4, V3)), p(pc(main-6-6), data(V2p, V1p, V4p, V3p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 8). % tmp < 0
stmtsrc(8, 'assume(tmp < 0);').
transition_access( 8, [_, _, _, r] ).
r(p(pc(main-1-5), data(V2, V1, V4, V3)), p(pc(main-6-6), data(V2p, V1p, V4p, V3p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 9). % tmp > 0
stmtsrc(9, 'assume(tmp > 0);').
transition_access( 9, [_, _, _, r] ).
r(p(pc(main-6-6), data(V2, V1, V4, V3)), p(pc(main-9-6), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_, _, _, _] ).
r(p(pc(main-9-6), data(V2, V1, V4, V3)), p(pc(main-11-6), data(V2p, V1p, V4p, V3p)), [(V1 +1 =< 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 11). % x < 100
stmtsrc(11, 'assume(x < 100);').
transition_access( 11, [_, r, _, _] ).
r(p(pc(main-11-6), data(V2, V1, V4, V3)), p(pc(main-10-7), data(V2p, V1p, V4p, V3p)), [(V2 +1 =< 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 12). % y < 100
stmtsrc(12, 'assume(y < 100);').
transition_access( 12, [r, _, _, _] ).
r(p(pc(main-11-6), data(V2, V1, V4, V3)), p(pc(main-13-6), data(V2p, V1p, V4p, V3p)), [(V2 >= 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 13). % y >= 100
stmtsrc(13, 'assume(y >= 100);').
transition_access( 13, [r, _, _, _] ).
r(p(pc(main-9-6), data(V2, V1, V4, V3)), p(pc(main-12-6), data(V2p, V1p, V4p, V3p)), [(V1 >= 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 14). % x >= 100
stmtsrc(14, 'assume(x >= 100);').
transition_access( 14, [_, r, _, _] ).
r(p(pc(main-10-7), data(V2, V1, V4, V3)), p(pc(main-14-0), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = (V1 + 1), V4p = V4, V3p = V3], 15). % x := x + 1
stmtsrc(15, 'x=x + 1;').
transition_access( 15, [_, w, _, _] ).
r(p(pc(main-14-0), data(V2, V1, V4, V3)), p(pc(main-6-6), data(V2p, V1p, V4p, V3p)), [], [V2p = (V2 + 1), V1p = V1, V4p = V4, V3p = V3], 16). % y := y + 1
stmtsrc(16, 'y=y + 1;').
transition_access( 16, [w, _, _, _] ).
r(p(pc(main-8-0), data(V2, V1, V4, V3)), p(pc(main-7-9), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 17). % 
stmtsrc(17, 'skip;').
transition_access( 17, [_, _, _, _] ).
r(p(pc(main-7-9), data(V2, V1, V4, V3)), p(pc(main-16-9), data(V2p, V1p, V4p, V3p)), [(V1 = 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 18). % x == 100
stmtsrc(18, 'assume(x == 100);').
transition_access( 18, [_, r, _, _] ).
r(p(pc(main-16-9), data(V2, V1, V4, V3)), p(pc(main-15-9), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 1, V3p = V3], 19). % tmp___0 := 1
stmtsrc(19, 'tmp___0=1;').
transition_access( 19, [_, _, w, _] ).
r(p(pc(main-7-9), data(V2, V1, V4, V3)), p(pc(main-17-9), data(V2p, V1p, V4p, V3p)), [(V1 +1 =< 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 20). % x < 100
stmtsrc(20, 'assume(x < 100);').
transition_access( 20, [_, r, _, _] ).
r(p(pc(main-7-9), data(V2, V1, V4, V3)), p(pc(main-17-9), data(V2p, V1p, V4p, V3p)), [(V1 >= 1+ 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 21). % x > 100
stmtsrc(21, 'assume(x > 100);').
transition_access( 21, [_, r, _, _] ).
r(p(pc(main-17-9), data(V2, V1, V4, V3)), p(pc(main-18-9), data(V2p, V1p, V4p, V3p)), [(V2 = 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 22). % y == 100
stmtsrc(22, 'assume(y == 100);').
transition_access( 22, [r, _, _, _] ).
r(p(pc(main-18-9), data(V2, V1, V4, V3)), p(pc(main-15-9), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 1, V3p = V3], 23). % tmp___0 := 1
stmtsrc(23, 'tmp___0=1;').
transition_access( 23, [_, _, w, _] ).
r(p(pc(main-17-9), data(V2, V1, V4, V3)), p(pc(main-19-9), data(V2p, V1p, V4p, V3p)), [(V2 +1 =< 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 24). % y < 100
stmtsrc(24, 'assume(y < 100);').
transition_access( 24, [r, _, _, _] ).
r(p(pc(main-17-9), data(V2, V1, V4, V3)), p(pc(main-19-9), data(V2p, V1p, V4p, V3p)), [(V2 >= 1+ 100)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 25). % y > 100
stmtsrc(25, 'assume(y > 100);').
transition_access( 25, [r, _, _, _] ).
r(p(pc(main-19-9), data(V2, V1, V4, V3)), p(pc(main-15-9), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = 0, V3p = V3], 26). % tmp___0 := 0
stmtsrc(26, 'tmp___0=0;').
transition_access( 26, [_, _, w, _] ).
r(p(pc(main-15-9), data(V2, V1, V4, V3)), p(pc(main-err-0), data(V2p, V1p, V4p, V3p)), [(V4 = 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 27). % tmp___0 == 0
stmtsrc(27, 'assume(tmp___0 == 0);').
transition_access( 27, [_, _, r, _] ).
r(p(pc(main-15-9), data(V2, V1, V4, V3)), p(pc(main-20-10), data(V2p, V1p, V4p, V3p)), [(V4 +1 =< 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 28). % tmp___0 < 0
stmtsrc(28, 'assume(tmp___0 < 0);').
transition_access( 28, [_, _, r, _] ).
r(p(pc(main-15-9), data(V2, V1, V4, V3)), p(pc(main-20-10), data(V2p, V1p, V4p, V3p)), [(V4 >= 1+ 0)], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 29). % tmp___0 > 0
stmtsrc(29, 'assume(tmp___0 > 0);').
transition_access( 29, [_, _, r, _] ).
r(p(pc(main-20-10), data(V2, V1, V4, V3)), p(pc(main-ret-0), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 30). % 
stmtsrc(30, 'skip;').
transition_access( 30, [_, _, _, _] ).
r(p(pc(main-12-6), data(V2, V1, V4, V3)), p(pc(main-8-0), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 31). % 
stmtsrc(31, 'skip;').
transition_access( 31, [_, _, _, _] ).
r(p(pc(main-13-6), data(V2, V1, V4, V3)), p(pc(main-8-0), data(V2p, V1p, V4p, V3p)), [], [V2p = V2, V1p = V1, V4p = V4, V3p = V3], 32). % 
stmtsrc(32, 'skip;').
transition_access( 32, [_, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-6-6), data(V2, V1, V4, V3)), [( 1)*V3 +( -1) = 0,( 1)*V3 +( -1) >= 0, ( -1)*V3 +( 1) >= 0,( 0)*V2+( 0)*V1+( 0)*V4+( 1)*V3 +( -1) = 0]).
