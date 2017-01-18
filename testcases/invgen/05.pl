:- multifile r/5,implicit_updates/0,var2names/2,preds/2,trans_preds/3,
 cube_size/1,start/1,error/1,refinement/1,cutpoint/1,invgen_template/2,
 invgen_template/1,cfg_exit_relation/1,stmtsrc/2,strengthening/2,globals/3,
 bound_var/2,bounding_vars/2,transition_access/2,atomic/3.
refinement(inter).
cube_size(1).
preds(p(_, data(V2, V1, V5, V4, V3, V6)), []).
trans_preds(p(_, data(V2, V1, V5, V4, V3, V6)), p(_, data(V2p, V1p, V5p, V4p, V3p, V6p)), []).
var2names(p(pc(_), data(V2, V1, V5, V4, V3, V6)), [(V2, 'y'), (V1, 'x'), (V5, 'tmp'), (V4, 'j'), (V3, 'i'), (V6, 'flag')]).
globals(p(pc(_), data(V2, V1, V5, V4, V3, V6)), [], []).
% start location
start(pc(main-0-6)).
% error location
error(pc(main-err-0)).
% cutpoint locations
cutpoint(pc(main-8-9)). % line 9
% invariant templates
% bound var 
% bounding vars 
bounding_vars(data(V2, V1, V5, V4, V3, V6), []).
% cfg loop exit relation
cfg_exit_relation([]).
% 26 transitions
r(p(pc(main-0-6), data(V2, V1, V5, V4, V3, V6)), p(pc(main-2-0), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = 0, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 1). % x := 0
stmtsrc(1, 'x=0;').
transition_access( 1, [_, w, _, _, _, _] ).
r(p(pc(main-2-0), data(V2, V1, V5, V4, V3, V6)), p(pc(main-1-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = 0, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 2). % y := 0
stmtsrc(2, 'y=0;').
transition_access( 2, [w, _, _, _, _, _] ).
r(p(pc(main-1-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-4-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V3 = 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 3). % i == 0
stmtsrc(3, 'assume(i == 0);').
transition_access( 3, [_, _, _, _, r, _] ).
r(p(pc(main-4-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-6-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V4 = 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 4). % j == 0
stmtsrc(4, 'assume(j == 0);').
transition_access( 4, [_, _, _, r, _, _] ).
r(p(pc(main-6-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-3-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = 1, V4p = V4, V3p = V3, V6p = V6], 5). % tmp := 1
stmtsrc(5, 'tmp=1;').
transition_access( 5, [_, _, w, _, _, _] ).
r(p(pc(main-4-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-7-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V4 +1 =< 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 6). % j < 0
stmtsrc(6, 'assume(j < 0);').
transition_access( 6, [_, _, _, r, _, _] ).
r(p(pc(main-4-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-7-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V4 >= 1+ 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 7). % j > 0
stmtsrc(7, 'assume(j > 0);').
transition_access( 7, [_, _, _, r, _, _] ).
r(p(pc(main-7-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-3-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = 0, V4p = V4, V3p = V3, V6p = V6], 8). % tmp := 0
stmtsrc(8, 'tmp=0;').
transition_access( 8, [_, _, w, _, _, _] ).
r(p(pc(main-1-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-5-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V3 +1 =< 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 9). % i < 0
stmtsrc(9, 'assume(i < 0);').
transition_access( 9, [_, _, _, _, r, _] ).
r(p(pc(main-1-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-5-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V3 >= 1+ 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 10). % i > 0
stmtsrc(10, 'assume(i > 0);').
transition_access( 10, [_, _, _, _, r, _] ).
r(p(pc(main-5-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-3-8), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = 0, V4p = V4, V3p = V3, V6p = V6], 11). % tmp := 0
stmtsrc(11, 'tmp=0;').
transition_access( 11, [_, _, w, _, _, _] ).
r(p(pc(main-3-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-8-9), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V5 +1 =< 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 12). % tmp < 0
stmtsrc(12, 'assume(tmp < 0);').
transition_access( 12, [_, _, r, _, _, _] ).
r(p(pc(main-3-8), data(V2, V1, V5, V4, V3, V6)), p(pc(main-8-9), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V5 >= 1+ 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 13). % tmp > 0
stmtsrc(13, 'assume(tmp > 0);').
transition_access( 13, [_, _, r, _, _, _] ).
r(p(pc(main-8-9), data(V2, V1, V5, V4, V3, V6)), p(pc(main-11-10), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 14). % 
stmtsrc(14, 'skip;').
transition_access( 14, [_, _, _, _, _, _] ).
r(p(pc(main-11-10), data(V2, V1, V5, V4, V3, V6)), p(pc(main-13-0), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = (V1 + 1), V5p = V5, V4p = V4, V3p = V3, V6p = V6], 15). % x := x + 1
stmtsrc(15, 'x=x + 1;').
transition_access( 15, [_, w, _, _, _, _] ).
r(p(pc(main-13-0), data(V2, V1, V5, V4, V3, V6)), p(pc(main-14-0), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = (V2 + 1), V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 16). % y := y + 1
stmtsrc(16, 'y=y + 1;').
transition_access( 16, [w, _, _, _, _, _] ).
r(p(pc(main-14-0), data(V2, V1, V5, V4, V3, V6)), p(pc(main-15-0), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = (V3 + V1), V6p = V6], 17). % i := i + x
stmtsrc(17, 'i=i + x;').
transition_access( 17, [_, r, _, _, w, _] ).
r(p(pc(main-15-0), data(V2, V1, V5, V4, V3, V6)), p(pc(main-12-10), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = V5, V4p = (V4 + V2), V3p = V3, V6p = V6], 18). % j := j + y
stmtsrc(18, 'j=j + y;').
transition_access( 18, [r, _, _, w, _, _] ).
r(p(pc(main-12-10), data(V2, V1, V5, V4, V3, V6)), p(pc(main-17-10), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V6 +1 =< 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 19). % flag < 0
stmtsrc(19, 'assume(flag < 0);').
transition_access( 19, [_, _, _, _, _, r] ).
r(p(pc(main-12-10), data(V2, V1, V5, V4, V3, V6)), p(pc(main-17-10), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V6 >= 1+ 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 20). % flag > 0
stmtsrc(20, 'assume(flag > 0);').
transition_access( 20, [_, _, _, _, _, r] ).
r(p(pc(main-17-10), data(V2, V1, V5, V4, V3, V6)), p(pc(main-16-11), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = V5, V4p = (V4 + 1), V3p = V3, V6p = V6], 21). % j := j + 1
stmtsrc(21, 'j=j + 1;').
transition_access( 21, [_, _, _, w, _, _] ).
r(p(pc(main-12-10), data(V2, V1, V5, V4, V3, V6)), p(pc(main-16-11), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V6 = 0)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 22). % flag == 0
stmtsrc(22, 'assume(flag == 0);').
transition_access( 22, [_, _, _, _, _, r] ).
r(p(pc(main-16-11), data(V2, V1, V5, V4, V3, V6)), p(pc(main-err-0), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V4 +1 =< V3)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 23). % j < i
stmtsrc(23, 'assume(j < i);').
transition_access( 23, [_, _, _, r, r, _] ).
r(p(pc(main-16-11), data(V2, V1, V5, V4, V3, V6)), p(pc(main-8-9), data(V2p, V1p, V5p, V4p, V3p, V6p)), [(V4 >= V3)], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 24). % j >= i
stmtsrc(24, 'assume(j >= i);').
transition_access( 24, [_, _, _, r, r, _] ).
r(p(pc(main-10-0), data(V2, V1, V5, V4, V3, V6)), p(pc(main-9-13), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 25). % 
stmtsrc(25, 'skip;').
transition_access( 25, [_, _, _, _, _, _] ).
r(p(pc(main-9-13), data(V2, V1, V5, V4, V3, V6)), p(pc(main-ret-0), data(V2p, V1p, V5p, V4p, V3p, V6p)), [], [V2p = V2, V1p = V1, V5p = V5, V4p = V4, V3p = V3, V6p = V6], 26). % 
stmtsrc(26, 'skip;').
transition_access( 26, [_, _, _, _, _, _] ).
% Atomic blocks
strengthening(p(pc(main-8-9), data(V2, V1, V5, V4, V3, V6)), [( 1)*V5 +( -1) = 0, ( 1)*V1 +( 0) >= 0, ( 1)*V2 +( 0) >= 0,( 1)*V5 +( -1) >= 0, ( -1)*V5 +( 1) >= 0, ( 1)*V1+( -1)*V5 +( 1) >= 0, ( 1)*V1+( 1)*V5 +( -1) >= 0, ( 1)*V1 +( 0) >= 0, ( 1)*V2+( -1)*V5 +( 1) >= 0, ( 1)*V2+( 1)*V5 +( -1) >= 0, ( 1)*V2+( -1)*V1 +( 0) >= 0, ( 1)*V2+( 1)*V1 +( 0) >= 0, ( 1)*V2 +( 0) >= 0, ( -1)*V2+( 1)*V1 +( 0) >= 0,( 0)*V2+( 0)*V1+( 1)*V5+( 0)*V4+( 0)*V3+( 0)*V6 +( -1) = 0, ( -1)*V2+( 1)*V1+( 0)*V5+( 0)*V4+( 0)*V3+( 0)*V6 +( 0) = 0, ( 1)*V2+( 0)*V1+( 0)*V5+( 0)*V4+( 0)*V3+( 0)*V6 +( 0) >= 0]).
