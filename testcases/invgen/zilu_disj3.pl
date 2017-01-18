:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V4, V1, V3, V5, V2)), []).
trans_preds(p(_, data(V4, V1, V3, V5, V2)), p(_, data(V4p, V1p, V3p, V5p, V2p)), []).
var2names(p(pc(_), data(V4, V1, V3, V5, V2)), [(V4, 'z'), (V1, 'y'), (V3, 'x'), (V5, 'tmp___0'), (V2, 'tmp')]).
globals(p(pc(_), data(V4, V1, V3, V5, V2)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V4, V1, V3, V5, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 35 transitions
r(p(pc(main-0-6), data(V4, V1, V3, V5, V2)), p(pc(main-2-6), data(V4p, V1p, V3p, V5p, V2p)), [(V1 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 1). % y > 0
stmtsrc(1, 'assume(y > 0);').
transition_access( 1, [_, r, _, _, _] ).
r(p(pc(main-2-6), data(V4, V1, V3, V5, V2)), p(pc(main-1-6), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = 1], 2). % tmp := 1
stmtsrc(2, 'tmp=1;').
transition_access( 2, [_, _, _, _, w] ).
r(p(pc(main-0-6), data(V4, V1, V3, V5, V2)), p(pc(main-3-6), data(V4p, V1p, V3p, V5p, V2p)), [(V1 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 3). % y <= 0
stmtsrc(3, 'assume(y <= 0);').
transition_access( 3, [_, r, _, _, _] ).
r(p(pc(main-3-6), data(V4, V1, V3, V5, V2)), p(pc(main-4-6), data(V4p, V1p, V3p, V5p, V2p)), [(V3 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 4). % x > 0
stmtsrc(4, 'assume(x > 0);').
transition_access( 4, [_, _, r, _, _] ).
r(p(pc(main-4-6), data(V4, V1, V3, V5, V2)), p(pc(main-1-6), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = 1], 5). % tmp := 1
stmtsrc(5, 'tmp=1;').
transition_access( 5, [_, _, _, _, w] ).
r(p(pc(main-3-6), data(V4, V1, V3, V5, V2)), p(pc(main-5-6), data(V4p, V1p, V3p, V5p, V2p)), [(V3 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 6). % x <= 0
stmtsrc(6, 'assume(x <= 0);').
transition_access( 6, [_, _, r, _, _] ).
r(p(pc(main-5-6), data(V4, V1, V3, V5, V2)), p(pc(main-6-6), data(V4p, V1p, V3p, V5p, V2p)), [(V4 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 7). % z > 0
stmtsrc(7, 'assume(z > 0);').
transition_access( 7, [r, _, _, _, _] ).
r(p(pc(main-6-6), data(V4, V1, V3, V5, V2)), p(pc(main-1-6), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = 1], 8). % tmp := 1
stmtsrc(8, 'tmp=1;').
transition_access( 8, [_, _, _, _, w] ).
r(p(pc(main-5-6), data(V4, V1, V3, V5, V2)), p(pc(main-7-6), data(V4p, V1p, V3p, V5p, V2p)), [(V4 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 9). % z <= 0
stmtsrc(9, 'assume(z <= 0);').
transition_access( 9, [r, _, _, _, _] ).
r(p(pc(main-7-6), data(V4, V1, V3, V5, V2)), p(pc(main-1-6), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = 0], 10). % tmp := 0
stmtsrc(10, 'tmp=0;').
transition_access( 10, [_, _, _, _, w] ).
r(p(pc(main-1-6), data(V4, V1, V3, V5, V2)), p(pc(main-8-7), data(V4p, V1p, V3p, V5p, V2p)), [(V2 +1 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 11). % tmp < 0
stmtsrc(11, 'assume(tmp < 0);').
transition_access( 11, [_, _, _, _, r] ).
r(p(pc(main-1-6), data(V4, V1, V3, V5, V2)), p(pc(main-8-7), data(V4p, V1p, V3p, V5p, V2p)), [(V2 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 12). % tmp > 0
stmtsrc(12, 'assume(tmp > 0);').
transition_access( 12, [_, _, _, _, r] ).
r(p(pc(main-8-7), data(V4, V1, V3, V5, V2)), p(pc(main-11-8), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 13). % 
stmtsrc(13, 'skip;').
transition_access( 13, [_, _, _, _, _] ).
r(p(pc(main-11-8), data(V4, V1, V3, V5, V2)), p(pc(main-13-9), data(V4p, V1p, V3p, V5p, V2p)), [(V3 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 14). % x > 0
stmtsrc(14, 'assume(x > 0);').
transition_access( 14, [_, _, r, _, _] ).
r(p(pc(main-13-9), data(V4, V1, V3, V5, V2)), p(pc(main-12-13), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = (V3 + 1), V5p = V5, V2p = V2], 15). % x := x + 1
stmtsrc(15, 'x=x + 1;').
transition_access( 15, [_, _, w, _, _] ).
r(p(pc(main-11-8), data(V4, V1, V3, V5, V2)), p(pc(main-14-10), data(V4p, V1p, V3p, V5p, V2p)), [(V3 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 16). % x <= 0
stmtsrc(16, 'assume(x <= 0);').
transition_access( 16, [_, _, r, _, _] ).
r(p(pc(main-14-10), data(V4, V1, V3, V5, V2)), p(pc(main-15-11), data(V4p, V1p, V3p, V5p, V2p)), [(V1 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 17). % y > 0
stmtsrc(17, 'assume(y > 0);').
transition_access( 17, [_, r, _, _, _] ).
r(p(pc(main-15-11), data(V4, V1, V3, V5, V2)), p(pc(main-12-13), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = (V1 + 1), V3p = V3, V5p = V5, V2p = V2], 18). % y := y + 1
stmtsrc(18, 'y=y + 1;').
transition_access( 18, [_, w, _, _, _] ).
r(p(pc(main-14-10), data(V4, V1, V3, V5, V2)), p(pc(main-16-12), data(V4p, V1p, V3p, V5p, V2p)), [(V1 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 19). % y <= 0
stmtsrc(19, 'assume(y <= 0);').
transition_access( 19, [_, r, _, _, _] ).
r(p(pc(main-16-12), data(V4, V1, V3, V5, V2)), p(pc(main-12-13), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = (V4 + 1), V1p = V1, V3p = V3, V5p = V5, V2p = V2], 20). % z := z + 1
stmtsrc(20, 'z=z + 1;').
transition_access( 20, [w, _, _, _, _] ).
r(p(pc(main-12-13), data(V4, V1, V3, V5, V2)), p(pc(main-18-13), data(V4p, V1p, V3p, V5p, V2p)), [(V3 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 21). % x > 0
stmtsrc(21, 'assume(x > 0);').
transition_access( 21, [_, _, r, _, _] ).
r(p(pc(main-18-13), data(V4, V1, V3, V5, V2)), p(pc(main-17-13), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = 1, V2p = V2], 22). % tmp___0 := 1
stmtsrc(22, 'tmp___0=1;').
transition_access( 22, [_, _, _, w, _] ).
r(p(pc(main-12-13), data(V4, V1, V3, V5, V2)), p(pc(main-19-13), data(V4p, V1p, V3p, V5p, V2p)), [(V3 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 23). % x <= 0
stmtsrc(23, 'assume(x <= 0);').
transition_access( 23, [_, _, r, _, _] ).
r(p(pc(main-19-13), data(V4, V1, V3, V5, V2)), p(pc(main-20-13), data(V4p, V1p, V3p, V5p, V2p)), [(V1 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 24). % y > 0
stmtsrc(24, 'assume(y > 0);').
transition_access( 24, [_, r, _, _, _] ).
r(p(pc(main-20-13), data(V4, V1, V3, V5, V2)), p(pc(main-17-13), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = 1, V2p = V2], 25). % tmp___0 := 1
stmtsrc(25, 'tmp___0=1;').
transition_access( 25, [_, _, _, w, _] ).
r(p(pc(main-19-13), data(V4, V1, V3, V5, V2)), p(pc(main-21-13), data(V4p, V1p, V3p, V5p, V2p)), [(V1 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 26). % y <= 0
stmtsrc(26, 'assume(y <= 0);').
transition_access( 26, [_, r, _, _, _] ).
r(p(pc(main-21-13), data(V4, V1, V3, V5, V2)), p(pc(main-22-13), data(V4p, V1p, V3p, V5p, V2p)), [(V4 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 27). % z > 0
stmtsrc(27, 'assume(z > 0);').
transition_access( 27, [r, _, _, _, _] ).
r(p(pc(main-22-13), data(V4, V1, V3, V5, V2)), p(pc(main-17-13), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = 1, V2p = V2], 28). % tmp___0 := 1
stmtsrc(28, 'tmp___0=1;').
transition_access( 28, [_, _, _, w, _] ).
r(p(pc(main-21-13), data(V4, V1, V3, V5, V2)), p(pc(main-23-13), data(V4p, V1p, V3p, V5p, V2p)), [(V4 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 29). % z <= 0
stmtsrc(29, 'assume(z <= 0);').
transition_access( 29, [r, _, _, _, _] ).
r(p(pc(main-23-13), data(V4, V1, V3, V5, V2)), p(pc(main-17-13), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = 0, V2p = V2], 30). % tmp___0 := 0
stmtsrc(30, 'tmp___0=0;').
transition_access( 30, [_, _, _, w, _] ).
r(p(pc(main-17-13), data(V4, V1, V3, V5, V2)), p(pc(main-err-0), data(V4p, V1p, V3p, V5p, V2p)), [(V5 = 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 31). % tmp___0 == 0
stmtsrc(31, 'assume(tmp___0 == 0);').
transition_access( 31, [_, _, _, r, _] ).
r(p(pc(main-17-13), data(V4, V1, V3, V5, V2)), p(pc(main-8-7), data(V4p, V1p, V3p, V5p, V2p)), [(V5 +1 =< 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 32). % tmp___0 < 0
stmtsrc(32, 'assume(tmp___0 < 0);').
transition_access( 32, [_, _, _, r, _] ).
r(p(pc(main-17-13), data(V4, V1, V3, V5, V2)), p(pc(main-8-7), data(V4p, V1p, V3p, V5p, V2p)), [(V5 >= 1+ 0)], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 33). % tmp___0 > 0
stmtsrc(33, 'assume(tmp___0 > 0);').
transition_access( 33, [_, _, _, r, _] ).
r(p(pc(main-10-0), data(V4, V1, V3, V5, V2)), p(pc(main-9-15), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 34). % 
stmtsrc(34, 'skip;').
transition_access( 34, [_, _, _, _, _] ).
r(p(pc(main-9-15), data(V4, V1, V3, V5, V2)), p(pc(main-ret-0), data(V4p, V1p, V3p, V5p, V2p)), [], [V4p = V4, V1p = V1, V3p = V3, V5p = V5, V2p = V2], 35). % 
stmtsrc(35, 'skip;').
transition_access( 35, [_, _, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-7), data(V4, V1, V3, V5, V2)), [( 1)*V2 +( -1) = 0,( 1)*V2 +( -1) >= 0, ( -1)*V2 +( 1) >= 0,( 0)*V4+( 0)*V1+( 0)*V3+( 0)*V5+( 1)*V2 +( -1) = 0]).
