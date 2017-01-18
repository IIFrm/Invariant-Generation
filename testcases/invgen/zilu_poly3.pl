:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1)), []).
trans_preds(p(_, data(V2, V1)), p(_, data(V2p, V1p)), []).
var2names(p(pc(_), data(V2, V1)), [(V2, 'tmp'), (V1, 'i')]).
globals(p(pc(_), data(V2, V1)), [], []).
% start location
start(pc(main-0-4)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-6-5)). % line 5
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 19 transitions
r(p(pc(main-0-4), data(V2, V1)), p(pc(main-2-4), data(V2p, V1p)), [(V1 +1 =< 10)], [V2p = V2, V1p = V1], 1). % i < 10
stmtsrc(1, 'assume(i < 10);').
transition_access( 1, [_, r] ).
r(p(pc(main-2-4), data(V2, V1)), p(pc(main-4-4), data(V2p, V1p)), [(V1 >= 1+ -10)], [V2p = V2, V1p = V1], 2). % i > -10
stmtsrc(2, 'assume(i > -10);').
transition_access( 2, [_, r] ).
r(p(pc(main-4-4), data(V2, V1)), p(pc(main-1-4), data(V2p, V1p)), [], [V2p = 1, V1p = V1], 3). % tmp := 1
stmtsrc(3, 'tmp=1;').
transition_access( 3, [w, _] ).
r(p(pc(main-2-4), data(V2, V1)), p(pc(main-5-4), data(V2p, V1p)), [(V1 =< -10)], [V2p = V2, V1p = V1], 4). % i <= -10
stmtsrc(4, 'assume(i <= -10);').
transition_access( 4, [_, r] ).
r(p(pc(main-5-4), data(V2, V1)), p(pc(main-1-4), data(V2p, V1p)), [], [V2p = 0, V1p = V1], 5). % tmp := 0
stmtsrc(5, 'tmp=0;').
transition_access( 5, [w, _] ).
r(p(pc(main-0-4), data(V2, V1)), p(pc(main-3-4), data(V2p, V1p)), [(V1 >= 10)], [V2p = V2, V1p = V1], 6). % i >= 10
stmtsrc(6, 'assume(i >= 10);').
transition_access( 6, [_, r] ).
r(p(pc(main-3-4), data(V2, V1)), p(pc(main-1-4), data(V2p, V1p)), [], [V2p = 0, V1p = V1], 7). % tmp := 0
stmtsrc(7, 'tmp=0;').
transition_access( 7, [w, _] ).
r(p(pc(main-1-4), data(V2, V1)), p(pc(main-6-5), data(V2p, V1p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1], 8). % tmp < 0
stmtsrc(8, 'assume(tmp < 0);').
transition_access( 8, [r, _] ).
r(p(pc(main-1-4), data(V2, V1)), p(pc(main-6-5), data(V2p, V1p)), [(V2 >= 1+ 0)], [V2p = V2, V1p = V1], 9). % tmp > 0
stmtsrc(9, 'assume(tmp > 0);').
transition_access( 9, [r, _] ).
r(p(pc(main-6-5), data(V2, V1)), p(pc(main-9-5), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 10). % 
stmtsrc(10, 'skip;').
transition_access( 10, [_, _] ).
r(p(pc(main-9-5), data(V2, V1)), p(pc(main-10-6), data(V2p, V1p)), [((V1 * V1) +1 =< 100)], [V2p = V2, V1p = V1], 11). % i * i < 100
stmtsrc(11, 'assume(i * i < 100);').
transition_access( 11, [_, r] ).
r(p(pc(main-9-5), data(V2, V1)), p(pc(main-11-5), data(V2p, V1p)), [((V1 * V1) >= 100)], [V2p = V2, V1p = V1], 12). % i * i >= 100
stmtsrc(12, 'assume(i * i >= 100);').
transition_access( 12, [_, r] ).
r(p(pc(main-10-6), data(V2, V1)), p(pc(main-6-5), data(V2p, V1p)), [], [V2p = V2, V1p = (V1 + 1)], 13). % i := i + 1
stmtsrc(13, 'i=i + 1;').
transition_access( 13, [_, w] ).
r(p(pc(main-8-0), data(V2, V1)), p(pc(main-7-8), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 14). % 
stmtsrc(14, 'skip;').
transition_access( 14, [_, _] ).
r(p(pc(main-7-8), data(V2, V1)), p(pc(main-err-0), data(V2p, V1p)), [(V1 +1 =< 10)], [V2p = V2, V1p = V1], 15). % i < 10
stmtsrc(15, 'assume(i < 10);').
transition_access( 15, [_, r] ).
r(p(pc(main-7-8), data(V2, V1)), p(pc(main-err-0), data(V2p, V1p)), [(V1 >= 1+ 10)], [V2p = V2, V1p = V1], 16). % i > 10
stmtsrc(16, 'assume(i > 10);').
transition_access( 16, [_, r] ).
r(p(pc(main-7-8), data(V2, V1)), p(pc(main-12-9), data(V2p, V1p)), [(V1 = 10)], [V2p = V2, V1p = V1], 17). % i == 10
stmtsrc(17, 'assume(i == 10);').
transition_access( 17, [_, r] ).
r(p(pc(main-12-9), data(V2, V1)), p(pc(main-ret-0), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 18). % 
stmtsrc(18, 'skip;').
transition_access( 18, [_, _] ).
r(p(pc(main-11-5), data(V2, V1)), p(pc(main-8-0), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 19). % 
stmtsrc(19, 'skip;').
transition_access( 19, [_, _] ).
% Atomic blocks
strengthening(p(pc(main-6-5), data(V2, V1)), [( 1)*V2 +( -1) = 0,( 1)*V2 +( -1) >= 0, ( -1)*V2 +( 1) >= 0,( 1)*V2+( 0)*V1 +( -1) = 0]).
