(set-logic HORN)
(declare-fun F (Int Int Int Int Int Int) Bool)
(declare-fun Init (Int Int Int Int Int) Bool)
(declare-fun Main (Int Int Int) Bool)

;clause g
(assert(
	forall((?A Int)(?B Int)(?I Int)(?J Int)(?AP Int)(?BP Int))
	(=> (and 
	    (= ?A ?AP)
	    (= ?B ?BP))
	(F ?A ?B ?I ?J ?AP ?BP))))

;clause f
(assert(
	forall((?A Int)(?B Int)(?I Int)(?J Int)(?AP Int)(?BP Int)(?A1 Int)(?B1 Int)(?I1 Int)(?J1 Int))
	(=> (and 
	    	 (= (mod ?I 2) 0) 
		 (= ?A1 (+ ?A 1))
		 (= ?B1 (+ ?B (- ?J ?I)))
		 (= ?I1 (+ ?I 2))
		 (= ?J1 (+ ?J 2))
		 (F ?A1 ?B1 ?I1 ?J1 ?AP ?BP))
	(F ?A ?B ?I ?J ?AP ?BP))))

;clause e
(assert(
	forall((?A Int)(?B Int)(?I Int)(?J Int)(?AP Int)(?BP Int)(?A1 Int)(?B1 Int)(?I1 Int)(?J1 Int))
	(=> (and 
	    	 (not (= (mod ?I 2) 0)) 
		 (= ?A1 (+ ?A 1))
		 (= ?B1 (+ ?B (- ?J ?I)))
		 (= ?I1 (+ ?I 2))
		 (= ?J1 (+ ?J 1))
		 (F ?A1 ?B1 ?I1 ?J1 ?AP ?BP))
	(F ?A ?B ?I ?J ?AP ?BP))))

;clause d
(assert(
	forall((?A Int)(?B Int)(?I Int)(?J Int)(?FLAG Int))
	(=> (and 
	    	 (not (= ?FLAG 0)) 
		 (= ?A 0)
		 (= ?B 0)
		 (= ?I 0)
		 (= ?J 1))
	(Init ?A ?B ?I ?J ?FLAG))))

;clause c
(assert(
	forall((?A Int)(?B Int)(?I Int)(?J Int)(?FLAG Int))
	(=> (and 
	    	 (= ?FLAG 0)
		 (= ?A 0)
		 (= ?B 0)
		 (= ?I 1)
		 (= ?J 1))
	(Init ?A ?B ?I ?J ?FLAG))))

;clause b
(assert(
	forall((?A Int)(?B Int)(?AP Int)(?BP Int)(?I Int)(?J Int)(?FLAG Int))
	(=> (and 
	    	 (Init ?A ?B ?I ?J ?FLAG)
		 (F ?A ?B ?I ?J ?AP ?BP))
	(Main ?FLAG ?AP ?BP))))

;clause a
(assert(
	forall((?AP Int)(?BP Int)(?FLAG Int))
	(=> (and 
	    	 (not (= ?FLAG 0))
		 (Main ?FLAG ?AP ?BP))
	(= ?AP ?BP ))))


