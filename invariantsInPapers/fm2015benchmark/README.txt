Requirements:
- Java 1.7+
- Scala 2.10.x
- ant

Usage:

./run [smt file name] [algorithm] [inlining?]

where [algorithm] is either FM, CAV, or ASTAR.
CAV: is our breath-first search strategy.
FM: is our depth-first search strategy.
ASTAR: is ou A* strategy.

and [inlining?] is either 0, if clauses should not be inlined, 
or 1 if they should be. Inlining is in most cases the better
choice, however, it may occasionally inhibit the strengthening. 

Example usage:
./run test/01.smt2 ASTAR 0
