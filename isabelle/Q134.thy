theory Putnam2004B2
imports Main "HOL-Library.Permutations"
begin
datatype oct_vertex = A | B | C | D | E | F | G | H | J
definition oct_side1 :: "oct_vertex list" where
  "oct_side1 = [A, J, E]"
definition oct_side2 :: "oct_vertex list" where
  "oct_side2 = [B, J, F]"
definition oct_side3 :: "oct_vertex list" where
  "oct_side3 = [C, J, G]"
definition oct_side4 :: "oct_vertex list" where
  "oct_side4 = [D, J, H]"
definition oct_lines :: "(oct_vertex list) list" where
  "oct_lines = [oct_side1, oct_side2, oct_side3, oct_side4]"
type_synonym assignment = "oct_vertex ⇒ nat"
definition valid_digits :: "assignment ⇒ bool" where
  "valid_digits f = (∀v. f v ∈ {1..9}) ∧ 
                   inj_on f {A, B, C, D, E, F, G, H, J}"
definition linesums_eq :: "assignment ⇒ bool" where
  "linesums_eq f = (sum f oct_side1 = sum f oct_side2 ∧
                   sum f oct_side1 = sum f oct_side3 ∧
                   sum f oct_side1 = sum f oct_side4)"
definition valid_assignments :: "nat" where
  "valid_assignments = card {f :: assignment. valid_digits f ∧ linesums_eq f}"
theorem putnam_2004_b2: "valid_assignments = 1152"
  sorry