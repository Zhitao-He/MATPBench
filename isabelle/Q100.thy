theory TriangularArray
  imports Main "HOL-Algebra.IntRing"
begin
definition n :: nat where "n = 11"
type_synonym bottom_row = "nat ⇒ int"
fun triangle_value :: "bottom_row ⇒ nat ⇒ nat ⇒ int" where
  "triangle_value dist k i = (if k = n then dist i else 
     triangle_value dist (k+1) i + triangle_value dist (k+1) (i+1))"
definition valid_distributions :: nat where
  "valid_distributions = card {dist :: bottom_row. 
     (∀i < n. dist i ∈ {0, 1}) ∧  
     (triangle_value dist 1 0) mod 3 = 0}"
theorem correct_count: "valid_distributions = 640"
  sorry 