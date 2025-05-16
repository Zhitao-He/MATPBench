theory Quadrilaterals
imports Main "HOL-Analysis.Topology_Euclidean_Space"
begin
(* Define a point in a 2D plane *)
type_synonym point = "real × real"
(* Define a quadrilateral as a set of 4 distinct points *)
definition is_quadrilateral :: "point set ⇒ bool" where
  "is_quadrilateral S ≡ card S = 4 ∧ (∀p∈S. ∀q∈S. p ≠ q → p ≠ q)"
(* Define two rectangles in our diagram *)
definition rectangle1 :: "point set" where
  "rectangle1 = {(0,0), (1,0), (1,1), (0,1)}"
definition rectangle2 :: "point set" where
  "rectangle2 = {(0.5,0.5), (1.5,0.5), (1.5,1.5), (0.5,1.5)}"
(* The theorem stating that the number of quadrilaterals in the diagram is 4 *)
theorem quadrilaterals_count:
  "card {S. is_quadrilateral S ∧ (S ⊆ rectangle1 ∪ rectangle2)} = 4"
  sorry