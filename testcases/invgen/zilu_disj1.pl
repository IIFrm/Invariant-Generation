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
% 41 transitions
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
r(p(pc(main-5-7), data(V2, V1, V3)), p(pc(main-7-7), data(V2p, V1p, V3p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 5). % x < 0
stmtsrc(5, 'assume(x < 0);').
transition_access( 5, [_, r, _] ).
r(p(pc(main-7-7), data(V2, V1, V3)), p(pc(main-9-8), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 6). % y < 0
stmtsrc(6, 'assume(y < 0);').
transition_access( 6, [r, _, _] ).
r(p(pc(main-9-8), data(V2, V1, V3)), p(pc(main-11-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 7), V3p = V3], 7). % x := x + 7
stmtsrc(7, 'x=x + 7;').
transition_access( 7, [_, w, _] ).
r(p(pc(main-11-0), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = (V2 - 10), V1p = V1, V3p = V3], 8). % y := y - 10
stmtsrc(8, 'y=y - 10;').
transition_access( 8, [w, _, _] ).
r(p(pc(main-7-7), data(V2, V1, V3)), p(pc(main-10-0), data(V2p, V1p, V3p)), [(V2 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 9). % y >= 0
stmtsrc(9, 'assume(y >= 0);').
transition_access( 9, [r, _, _] ).
r(p(pc(main-5-7), data(V2, V1, V3)), p(pc(main-8-9), data(V2p, V1p, V3p)), [(V1 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 10). % x >= 0
stmtsrc(10, 'assume(x >= 0);').
transition_access( 10, [_, r, _] ).
r(p(pc(main-8-9), data(V2, V1, V3)), p(pc(main-12-9), data(V2p, V1p, V3p)), [(V1 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 11). % x >= 0
stmtsrc(11, 'assume(x >= 0);').
transition_access( 11, [_, r, _] ).
r(p(pc(main-12-9), data(V2, V1, V3)), p(pc(main-14-10), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 12). % y < 0
stmtsrc(12, 'assume(y < 0);').
transition_access( 12, [r, _, _] ).
r(p(pc(main-14-10), data(V2, V1, V3)), p(pc(main-16-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 10), V3p = V3], 13). % x := x + 10
stmtsrc(13, 'x=x + 10;').
transition_access( 13, [_, w, _] ).
r(p(pc(main-16-0), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = (V2 - 10), V1p = V1, V3p = V3], 14). % y := y - 10
stmtsrc(14, 'y=y - 10;').
transition_access( 14, [w, _, _] ).
r(p(pc(main-12-9), data(V2, V1, V3)), p(pc(main-15-0), data(V2p, V1p, V3p)), [(V2 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 15). % y >= 0
stmtsrc(15, 'assume(y >= 0);').
transition_access( 15, [r, _, _] ).
r(p(pc(main-8-9), data(V2, V1, V3)), p(pc(main-13-11), data(V2p, V1p, V3p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 16). % x < 0
stmtsrc(16, 'assume(x < 0);').
transition_access( 16, [_, r, _] ).
r(p(pc(main-13-11), data(V2, V1, V3)), p(pc(main-17-11), data(V2p, V1p, V3p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 17). % x < 0
stmtsrc(17, 'assume(x < 0);').
transition_access( 17, [_, r, _] ).
r(p(pc(main-17-11), data(V2, V1, V3)), p(pc(main-19-12), data(V2p, V1p, V3p)), [(V2 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 18). % y >= 0
stmtsrc(18, 'assume(y >= 0);').
transition_access( 18, [r, _, _] ).
r(p(pc(main-19-12), data(V2, V1, V3)), p(pc(main-21-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 7), V3p = V3], 19). % x := x + 7
stmtsrc(19, 'x=x + 7;').
transition_access( 19, [_, w, _] ).
r(p(pc(main-21-0), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = (V2 + 3), V1p = V1, V3p = V3], 20). % y := y + 3
stmtsrc(20, 'y=y + 3;').
transition_access( 20, [w, _, _] ).
r(p(pc(main-17-11), data(V2, V1, V3)), p(pc(main-20-14), data(V2p, V1p, V3p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 21). % y < 0
stmtsrc(21, 'assume(y < 0);').
transition_access( 21, [r, _, _] ).
r(p(pc(main-20-14), data(V2, V1, V3)), p(pc(main-22-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 10), V3p = V3], 22). % x := x + 10
stmtsrc(22, 'x=x + 10;').
transition_access( 22, [_, w, _] ).
r(p(pc(main-22-0), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = (V2 + 3), V1p = V1, V3p = V3], 23). % y := y + 3
stmtsrc(23, 'y=y + 3;').
transition_access( 23, [w, _, _] ).
r(p(pc(main-13-11), data(V2, V1, V3)), p(pc(main-18-14), data(V2p, V1p, V3p)), [(V1 >= 0)], [V2p = V2, V1p = V1, V3p = V3], 24). % x >= 0
stmtsrc(24, 'assume(x >= 0);').
transition_access( 24, [_, r, _] ).
r(p(pc(main-18-14), data(V2, V1, V3)), p(pc(main-23-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 10), V3p = V3], 25). % x := x + 10
stmtsrc(25, 'x=x + 10;').
transition_access( 25, [_, w, _] ).
r(p(pc(main-23-0), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = (V2 + 3), V1p = V1, V3p = V3], 26). % y := y + 3
stmtsrc(26, 'y=y + 3;').
transition_access( 26, [w, _, _] ).
r(p(pc(main-3-0), data(V2, V1, V3)), p(pc(main-2-17), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 27). % 
stmtsrc(27, 'skip;').
transition_access( 27, [_, _, _] ).
r(p(pc(main-2-17), data(V2, V1, V3)), p(pc(main-25-17), data(V2p, V1p, V3p)), [(V1 >= V2)], [V2p = V2, V1p = V1, V3p = V3], 28). % x >= y
stmtsrc(28, 'assume(x >= y);').
transition_access( 28, [r, r, _] ).
r(p(pc(main-25-17), data(V2, V1, V3)), p(pc(main-27-17), data(V2p, V1p, V3p)), [(V1 =< (V2 + 16))], [V2p = V2, V1p = V1, V3p = V3], 29). % x <= y + 16
stmtsrc(29, 'assume(x <= y + 16);').
transition_access( 29, [r, r, _] ).
r(p(pc(main-27-17), data(V2, V1, V3)), p(pc(main-24-17), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 1], 30). % tmp := 1
stmtsrc(30, 'tmp=1;').
transition_access( 30, [_, _, w] ).
r(p(pc(main-25-17), data(V2, V1, V3)), p(pc(main-28-17), data(V2p, V1p, V3p)), [(V1 >= 1+ (V2 + 16))], [V2p = V2, V1p = V1, V3p = V3], 31). % x > y + 16
stmtsrc(31, 'assume(x > y + 16);').
transition_access( 31, [r, r, _] ).
r(p(pc(main-28-17), data(V2, V1, V3)), p(pc(main-24-17), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 32). % tmp := 0
stmtsrc(32, 'tmp=0;').
transition_access( 32, [_, _, w] ).
r(p(pc(main-2-17), data(V2, V1, V3)), p(pc(main-26-17), data(V2p, V1p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V3p = V3], 33). % x < y
stmtsrc(33, 'assume(x < y);').
transition_access( 33, [r, r, _] ).
r(p(pc(main-26-17), data(V2, V1, V3)), p(pc(main-24-17), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 34). % tmp := 0
stmtsrc(34, 'tmp=0;').
transition_access( 34, [_, _, w] ).
r(p(pc(main-24-17), data(V2, V1, V3)), p(pc(main-err-0), data(V2p, V1p, V3p)), [(V3 = 0)], [V2p = V2, V1p = V1, V3p = V3], 35). % tmp == 0
stmtsrc(35, 'assume(tmp == 0);').
transition_access( 35, [_, _, r] ).
r(p(pc(main-24-17), data(V2, V1, V3)), p(pc(main-29-18), data(V2p, V1p, V3p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 36). % tmp < 0
stmtsrc(36, 'assume(tmp < 0);').
transition_access( 36, [_, _, r] ).
r(p(pc(main-24-17), data(V2, V1, V3)), p(pc(main-29-18), data(V2p, V1p, V3p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 37). % tmp > 0
stmtsrc(37, 'assume(tmp > 0);').
transition_access( 37, [_, _, r] ).
r(p(pc(main-29-18), data(V2, V1, V3)), p(pc(main-ret-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 38). % 
stmtsrc(38, 'skip;').
transition_access( 38, [_, _, _] ).
r(p(pc(main-15-0), data(V2, V1, V3)), p(pc(main-13-11), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 39). % 
stmtsrc(39, 'skip;').
transition_access( 39, [_, _, _] ).
r(p(pc(main-10-0), data(V2, V1, V3)), p(pc(main-8-9), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 40). % 
stmtsrc(40, 'skip;').
transition_access( 40, [_, _, _] ).
r(p(pc(main-6-6), data(V2, V1, V3)), p(pc(main-3-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 41). % 
stmtsrc(41, 'skip;').
transition_access( 41, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-1-6), data(V2, V1, V3)), [1>=0,( 1)*V2+( -1)*V1 +( 17) >= 0,( 1)*V2+( -1)*V1+( 0)*V3 +( 17) >= 0]).
