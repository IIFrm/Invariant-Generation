(set-logic HORN)
(declare-fun A (Int) Bool)
(declare-fun B (Int) Bool)

(assert(
	forall((?X Int))
	(=> (= ?X 0)
	(A ?X))))

(assert(
	forall((?X Int))
	(=> (= ?X 0)
	(B ?X))))


(assert(
	forall((?X Int) (?Y Int)) 
	(=> (and (A ?X) (B ?Y))
	(= ?X ?Y))))

