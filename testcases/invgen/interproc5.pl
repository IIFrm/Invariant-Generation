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
% 18 transitions
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
r(p(pc(main-5-7), data(V2, V1, V3)), p(pc(main-1-6), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = (V1 + 100), V3p = V3], 5). % x := x + 100
stmtsrc(5, 'x=x + 100;').
transition_access( 5, [_, w, _] ).
r(p(pc(main-3-0), data(V2, V1, V3)), p(pc(main-2-9), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 6). % 
stmtsrc(6, 'skip;').
transition_access( 6, [_, _, _] ).
r(p(pc(main-2-9), data(V2, V1, V3)), p(pc(main-8-9), data(V2p, V1p, V3p)), [(V1 >= V2)], [V2p = V2, V1p = V1, V3p = V3], 7). % x >= y
stmtsrc(7, 'assume(x >= y);').
transition_access( 7, [r, r, _] ).
r(p(pc(main-8-9), data(V2, V1, V3)), p(pc(main-10-9), data(V2p, V1p, V3p)), [(V1 =< (V2 + 99))], [V2p = V2, V1p = V1, V3p = V3], 8). % x <= y + 99
stmtsrc(8, 'assume(x <= y + 99);').
transition_access( 8, [r, r, _] ).
r(p(pc(main-10-9), data(V2, V1, V3)), p(pc(main-7-9), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 1], 9). % tmp := 1
stmtsrc(9, 'tmp=1;').
transition_access( 9, [_, _, w] ).
r(p(pc(main-8-9), data(V2, V1, V3)), p(pc(main-11-9), data(V2p, V1p, V3p)), [(V1 >= 1+ (V2 + 99))], [V2p = V2, V1p = V1, V3p = V3], 10). % x > y + 99
stmtsrc(10, 'assume(x > y + 99);').
transition_access( 10, [r, r, _] ).
r(p(pc(main-11-9), data(V2, V1, V3)), p(pc(main-7-9), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 11). % tmp := 0
stmtsrc(11, 'tmp=0;').
transition_access( 11, [_, _, w] ).
r(p(pc(main-2-9), data(V2, V1, V3)), p(pc(main-9-9), data(V2p, V1p, V3p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1, V3p = V3], 12). % x < y
stmtsrc(12, 'assume(x < y);').
transition_access( 12, [r, r, _] ).
r(p(pc(main-9-9), data(V2, V1, V3)), p(pc(main-7-9), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = 0], 13). % tmp := 0
stmtsrc(13, 'tmp=0;').
transition_access( 13, [_, _, w] ).
r(p(pc(main-7-9), data(V2, V1, V3)), p(pc(main-err-0), data(V2p, V1p, V3p)), [(V3 = 0)], [V2p = V2, V1p = V1, V3p = V3], 14). % tmp == 0
stmtsrc(14, 'assume(tmp == 0);').
transition_access( 14, [_, _, r] ).
r(p(pc(main-7-9), data(V2, V1, V3)), p(pc(main-12-10), data(V2p, V1p, V3p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V3p = V3], 15). % tmp < 0
stmtsrc(15, 'assume(tmp < 0);').
transition_access( 15, [_, _, r] ).
r(p(pc(main-7-9), data(V2, V1, V3)), p(pc(main-12-10), data(V2p, V1p, V3p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V3p = V3], 16). % tmp > 0
stmtsrc(16, 'assume(tmp > 0);').
transition_access( 16, [_, _, r] ).
r(p(pc(main-12-10), data(V2, V1, V3)), p(pc(main-ret-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 17). % 
stmtsrc(17, 'skip;').
transition_access( 17, [_, _, _] ).
r(p(pc(main-6-6), data(V2, V1, V3)), p(pc(main-3-0), data(V2p, V1p, V3p)), [], [V2p = V2, V1p = V1, V3p = V3], 18). % 
stmtsrc(18, 'skip;').
transition_access( 18, [_, _, _] ).
% Atomic blocks
strengthening(p(pc(main-1-6), data(V2, V1, V3)), [1>=0,( 1)*V2+( -1)*V1 +( 100) >= 0,( 1)*V2+( -1)*V1+( 0)*V3 +( 100) >= 0]).
