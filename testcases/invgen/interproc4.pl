:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1)), []).
trans_preds(p(_, data(V2, V1)), p(_, data(V2p, V1p)), []).
var2names(p(pc(_), data(V2, V1)), [(V2, 'j'), (V1, 'i')]).
globals(p(pc(_), data(V2, V1)), [], []).
% start location
start(pc(main-0-5)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-9-7)). % line 7
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 30 transitions
r(p(pc(main-0-5), data(V2, V1)), p(pc(main-2-5), data(V2p, V1p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1], 1). % i < 0
stmtsrc(1, 'assume(i < 0);').
transition_access( 1, [_, r] ).
r(p(pc(main-2-5), data(V2, V1)), p(pc(main-1-5), data(V2p, V1p)), [], [V2p = V2, V1p = (- V1)], 2). % i := - i
stmtsrc(2, 'i=- i;').
transition_access( 2, [_, w] ).
r(p(pc(main-0-5), data(V2, V1)), p(pc(main-1-5), data(V2p, V1p)), [(V1 >= 0)], [V2p = V2, V1p = V1], 3). % i >= 0
stmtsrc(3, 'assume(i >= 0);').
transition_access( 3, [_, r] ).
r(p(pc(main-1-5), data(V2, V1)), p(pc(main-4-5), data(V2p, V1p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1], 4). % j < 0
stmtsrc(4, 'assume(j < 0);').
transition_access( 4, [r, _] ).
r(p(pc(main-4-5), data(V2, V1)), p(pc(main-3-5), data(V2p, V1p)), [], [V2p = (- V2), V1p = V1], 5). % j := - j
stmtsrc(5, 'j=- j;').
transition_access( 5, [w, _] ).
r(p(pc(main-1-5), data(V2, V1)), p(pc(main-3-5), data(V2p, V1p)), [(V2 >= 0)], [V2p = V2, V1p = V1], 6). % j >= 0
stmtsrc(6, 'assume(j >= 0);').
transition_access( 6, [r, _] ).
r(p(pc(main-3-5), data(V2, V1)), p(pc(main-6-5), data(V2p, V1p)), [(V1 = 0)], [V2p = V2, V1p = V1], 7). % i == 0
stmtsrc(7, 'assume(i == 0);').
transition_access( 7, [_, r] ).
r(p(pc(main-6-5), data(V2, V1)), p(pc(main-5-5), data(V2p, V1p)), [], [V2p = V2, V1p = 1], 8). % i := 1
stmtsrc(8, 'i=1;').
transition_access( 8, [_, w] ).
r(p(pc(main-3-5), data(V2, V1)), p(pc(main-5-5), data(V2p, V1p)), [(V1 +1 =< 0)], [V2p = V2, V1p = V1], 9). % i < 0
stmtsrc(9, 'assume(i < 0);').
transition_access( 9, [_, r] ).
r(p(pc(main-3-5), data(V2, V1)), p(pc(main-5-5), data(V2p, V1p)), [(V1 >= 1+ 0)], [V2p = V2, V1p = V1], 10). % i > 0
stmtsrc(10, 'assume(i > 0);').
transition_access( 10, [_, r] ).
r(p(pc(main-5-5), data(V2, V1)), p(pc(main-8-5), data(V2p, V1p)), [(V2 = 0)], [V2p = V2, V1p = V1], 11). % j == 0
stmtsrc(11, 'assume(j == 0);').
transition_access( 11, [r, _] ).
r(p(pc(main-8-5), data(V2, V1)), p(pc(main-7-6), data(V2p, V1p)), [], [V2p = 1, V1p = V1], 12). % j := 1
stmtsrc(12, 'j=1;').
transition_access( 12, [w, _] ).
r(p(pc(main-5-5), data(V2, V1)), p(pc(main-7-6), data(V2p, V1p)), [(V2 +1 =< 0)], [V2p = V2, V1p = V1], 13). % j < 0
stmtsrc(13, 'assume(j < 0);').
transition_access( 13, [r, _] ).
r(p(pc(main-5-5), data(V2, V1)), p(pc(main-7-6), data(V2p, V1p)), [(V2 >= 1+ 0)], [V2p = V2, V1p = V1], 14). % j > 0
stmtsrc(14, 'assume(j > 0);').
transition_access( 14, [r, _] ).
r(p(pc(main-7-6), data(V2, V1)), p(pc(main-9-7), data(V2p, V1p)), [((V1 * V1) +1 =< (V2 * V2))], [V2p = V2, V1p = V1], 15). % i * i < j * j
stmtsrc(15, 'assume(i * i < j * j);').
transition_access( 15, [r, r] ).
r(p(pc(main-9-7), data(V2, V1)), p(pc(main-12-7), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 16). % 
stmtsrc(16, 'skip;').
transition_access( 16, [_, _] ).
r(p(pc(main-12-7), data(V2, V1)), p(pc(main-13-8), data(V2p, V1p)), [(V1 +1 =< V2)], [V2p = V2, V1p = V1], 17). % i < j
stmtsrc(17, 'assume(i < j);').
transition_access( 17, [r, r] ).
r(p(pc(main-12-7), data(V2, V1)), p(pc(main-14-7), data(V2p, V1p)), [(V1 >= V2)], [V2p = V2, V1p = V1], 18). % i >= j
stmtsrc(18, 'assume(i >= j);').
transition_access( 18, [r, r] ).
r(p(pc(main-13-8), data(V2, V1)), p(pc(main-15-8), data(V2p, V1p)), [], [V2p = (V2 - V1), V1p = V1], 19). % j := j - i
stmtsrc(19, 'j=j - i;').
transition_access( 19, [w, r] ).
r(p(pc(main-15-8), data(V2, V1)), p(pc(main-16-8), data(V2p, V1p)), [(V2 +1 =< V1)], [V2p = V2, V1p = V1], 20). % j < i
stmtsrc(20, 'assume(j < i);').
transition_access( 20, [r, r] ).
r(p(pc(main-16-8), data(V2, V1)), p(pc(main-17-0), data(V2p, V1p)), [], [V2p = (V2 + V1), V1p = V1], 21). % j := j + i
stmtsrc(21, 'j=j + i;').
transition_access( 21, [w, r] ).
r(p(pc(main-17-0), data(V2, V1)), p(pc(main-18-0), data(V2p, V1p)), [], [V2p = V2, V1p = (V2 - V1)], 22). % i := j - i
stmtsrc(22, 'i=j - i;').
transition_access( 22, [r, w] ).
r(p(pc(main-18-0), data(V2, V1)), p(pc(main-9-7), data(V2p, V1p)), [], [V2p = (V2 - V1), V1p = V1], 23). % j := j - i
stmtsrc(23, 'j=j - i;').
transition_access( 23, [w, r] ).
r(p(pc(main-15-8), data(V2, V1)), p(pc(main-9-7), data(V2p, V1p)), [(V2 >= V1)], [V2p = V2, V1p = V1], 24). % j >= i
stmtsrc(24, 'assume(j >= i);').
transition_access( 24, [r, r] ).
r(p(pc(main-11-0), data(V2, V1)), p(pc(main-10-10), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _] ).
r(p(pc(main-10-10), data(V2, V1)), p(pc(main-err-0), data(V2p, V1p)), [(V2 +1 =< V1)], [V2p = V2, V1p = V1], 26). % j < i
stmtsrc(26, 'assume(j < i);').
transition_access( 26, [r, r] ).
r(p(pc(main-10-10), data(V2, V1)), p(pc(main-err-0), data(V2p, V1p)), [(V2 >= 1+ V1)], [V2p = V2, V1p = V1], 27). % j > i
stmtsrc(27, 'assume(j > i);').
transition_access( 27, [r, r] ).
r(p(pc(main-10-10), data(V2, V1)), p(pc(main-19-11), data(V2p, V1p)), [(V2 = V1)], [V2p = V2, V1p = V1], 28). % j == i
stmtsrc(28, 'assume(j == i);').
transition_access( 28, [r, r] ).
r(p(pc(main-19-11), data(V2, V1)), p(pc(main-ret-0), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 29). % 
stmtsrc(29, 'skip;').
transition_access( 29, [_, _] ).
r(p(pc(main-14-7), data(V2, V1)), p(pc(main-11-0), data(V2p, V1p)), [], [V2p = V2, V1p = V1], 30). % 
stmtsrc(30, 'skip;').
transition_access( 30, [_, _] ).
% Atomic blocks
strengthening(p(pc(main-9-7), data(V2, V1)), [1>=0,1>=0,( 1)*V2+( 1)*V1 +( 0) >= 0, ( 1)*V2+( 0)*V1 +( 0) >= 0]).
