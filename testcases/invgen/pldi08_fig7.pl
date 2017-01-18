:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V1, V2)), []).
trans_preds(p(_, data(V1, V2)), p(_, data(V1p, V2p)), []).
var2names(p(pc(_), data(V1, V2)), [(V1, 'x'), (V2, 'tmp')]).
globals(p(pc(_), data(V1, V2)), [], []).
% start location
start(pc(main-0-4)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-5)). % line 5
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V1, V2), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 24 transitions
r(p(pc(main-0-4), data(V1, V2)), p(pc(main-2-4), data(V1p, V2p)), [(V1 = 1)], [V1p = V1, V2p = V2], 1). % x == 1
stmtsrc(1, 'assume(x == 1);').
transition_access( 1, [r, _] ).
r(p(pc(main-2-4), data(V1, V2)), p(pc(main-1-4), data(V1p, V2p)), [], [V1p = V1, V2p = 1], 2). % tmp := 1
stmtsrc(2, 'tmp=1;').
transition_access( 2, [_, w] ).
r(p(pc(main-0-4), data(V1, V2)), p(pc(main-3-4), data(V1p, V2p)), [(V1 +1 =< 1)], [V1p = V1, V2p = V2], 3). % x < 1
stmtsrc(3, 'assume(x < 1);').
transition_access( 3, [r, _] ).
r(p(pc(main-0-4), data(V1, V2)), p(pc(main-3-4), data(V1p, V2p)), [(V1 >= 1+ 1)], [V1p = V1, V2p = V2], 4). % x > 1
stmtsrc(4, 'assume(x > 1);').
transition_access( 4, [r, _] ).
r(p(pc(main-3-4), data(V1, V2)), p(pc(main-4-4), data(V1p, V2p)), [(V1 = 2)], [V1p = V1, V2p = V2], 5). % x == 2
stmtsrc(5, 'assume(x == 2);').
transition_access( 5, [r, _] ).
r(p(pc(main-4-4), data(V1, V2)), p(pc(main-1-4), data(V1p, V2p)), [], [V1p = V1, V2p = 1], 6). % tmp := 1
stmtsrc(6, 'tmp=1;').
transition_access( 6, [_, w] ).
r(p(pc(main-3-4), data(V1, V2)), p(pc(main-5-4), data(V1p, V2p)), [(V1 +1 =< 2)], [V1p = V1, V2p = V2], 7). % x < 2
stmtsrc(7, 'assume(x < 2);').
transition_access( 7, [r, _] ).
r(p(pc(main-3-4), data(V1, V2)), p(pc(main-5-4), data(V1p, V2p)), [(V1 >= 1+ 2)], [V1p = V1, V2p = V2], 8). % x > 2
stmtsrc(8, 'assume(x > 2);').
transition_access( 8, [r, _] ).
r(p(pc(main-5-4), data(V1, V2)), p(pc(main-1-4), data(V1p, V2p)), [], [V1p = V1, V2p = 0], 9). % tmp := 0
stmtsrc(9, 'tmp=0;').
transition_access( 9, [_, w] ).
r(p(pc(main-1-4), data(V1, V2)), p(pc(main-6-5), data(V1p, V2p)), [(V2 +1 =< 0)], [V1p = V1, V2p = V2], 10). % tmp < 0
stmtsrc(10, 'assume(tmp < 0);').
transition_access( 10, [_, r] ).
r(p(pc(main-1-4), data(V1, V2)), p(pc(main-6-5), data(V1p, V2p)), [(V2 >= 1+ 0)], [V1p = V1, V2p = V2], 11). % tmp > 0
stmtsrc(11, 'assume(tmp > 0);').
transition_access( 11, [_, r] ).
r(p(pc(main-6-5), data(V1, V2)), p(pc(main-9-6), data(V1p, V2p)), [], [V1p = V1, V2p = V2], 12). % 
stmtsrc(12, 'skip;').
transition_access( 12, [_, _] ).
r(p(pc(main-9-6), data(V1, V2)), p(pc(main-11-6), data(V1p, V2p)), [(V1 = 1)], [V1p = V1, V2p = V2], 13). % x == 1
stmtsrc(13, 'assume(x == 1);').
transition_access( 13, [r, _] ).
r(p(pc(main-11-6), data(V1, V2)), p(pc(main-10-7), data(V1p, V2p)), [], [V1p = 2, V2p = V2], 14). % x := 2
stmtsrc(14, 'x=2;').
transition_access( 14, [w, _] ).
r(p(pc(main-9-6), data(V1, V2)), p(pc(main-12-6), data(V1p, V2p)), [(V1 +1 =< 1)], [V1p = V1, V2p = V2], 15). % x < 1
stmtsrc(15, 'assume(x < 1);').
transition_access( 15, [r, _] ).
r(p(pc(main-9-6), data(V1, V2)), p(pc(main-12-6), data(V1p, V2p)), [(V1 >= 1+ 1)], [V1p = V1, V2p = V2], 16). % x > 1
stmtsrc(16, 'assume(x > 1);').
transition_access( 16, [r, _] ).
r(p(pc(main-12-6), data(V1, V2)), p(pc(main-13-6), data(V1p, V2p)), [(V1 = 2)], [V1p = V1, V2p = V2], 17). % x == 2
stmtsrc(17, 'assume(x == 2);').
transition_access( 17, [r, _] ).
r(p(pc(main-13-6), data(V1, V2)), p(pc(main-10-7), data(V1p, V2p)), [], [V1p = 1, V2p = V2], 18). % x := 1
stmtsrc(18, 'x=1;').
transition_access( 18, [w, _] ).
r(p(pc(main-12-6), data(V1, V2)), p(pc(main-10-7), data(V1p, V2p)), [(V1 +1 =< 2)], [V1p = V1, V2p = V2], 19). % x < 2
stmtsrc(19, 'assume(x < 2);').
transition_access( 19, [r, _] ).
r(p(pc(main-12-6), data(V1, V2)), p(pc(main-10-7), data(V1p, V2p)), [(V1 >= 1+ 2)], [V1p = V1, V2p = V2], 20). % x > 2
stmtsrc(20, 'assume(x > 2);').
transition_access( 20, [r, _] ).
r(p(pc(main-10-7), data(V1, V2)), p(pc(main-err-0), data(V1p, V2p)), [(V1 >= 1+ 8)], [V1p = V1, V2p = V2], 21). % x > 8
stmtsrc(21, 'assume(x > 8);').
transition_access( 21, [r, _] ).
r(p(pc(main-10-7), data(V1, V2)), p(pc(main-6-5), data(V1p, V2p)), [(V1 =< 8)], [V1p = V1, V2p = V2], 22). % x <= 8
stmtsrc(22, 'assume(x <= 8);').
transition_access( 22, [r, _] ).
r(p(pc(main-8-0), data(V1, V2)), p(pc(main-7-9), data(V1p, V2p)), [], [V1p = V1, V2p = V2], 23). % 
stmtsrc(23, 'skip;').
transition_access( 23, [_, _] ).
r(p(pc(main-7-9), data(V1, V2)), p(pc(main-ret-0), data(V1p, V2p)), [], [V1p = V1, V2p = V2], 24). % 
stmtsrc(24, 'skip;').
transition_access( 24, [_, _] ).
% Atomic blocks
strengthening(p(pc(main-6-5), data(V1, V2)), [( 1)*V2 +( -1) = 0,( 1)*V2 +( -1) >= 0, ( -1)*V2 +( 1) >= 0,( 0)*V1+( 1)*V2 +( -1) = 0]).
