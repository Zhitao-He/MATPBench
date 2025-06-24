theory GeometryProblem
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real euc_2"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = norm (A - B)"
definition circle :: "point ⇒ real ⇒ point set" where
  "circle O r = {X. dist O X = r}"
type_synonym triangle = "point × point × point"
definition sss_similar_k :: "triangle ⇒ triangle ⇒ bool" where
  "sss_similar_k (P1, C1, A1) (P2, B2, D2) =
    (∃k > 0. dist P1 C1 = k * dist P2 B2 ∧
              dist C1 A1 = k * dist B2 D2 ∧
              dist A1 P1 = k * dist D2 P2)"
axiomatization
  O1 :: point and O2 :: point 
  and r1 :: real and r2 :: real     
  and A :: point and B :: point     
  and P :: point                    
  and C :: point and D :: point     
where
  r1_positive: "r1 > 0" and
  r2_positive: "r2 > 0" and
  A_on_circle1: "A ∈ circle O1 r1" and
  A_on_circle2: "A ∈ circle O2 r2" and
  B_on_circle1: "B ∈ circle O1 r1" and
  B_on_circle2: "B ∈ circle O2 r2" and
  A_not_equal_B: "A ≠ B" and
  C_on_circle1: "C ∈ circle O1 r1" and
  PC_tangent_to_circle1: "(O1 - C) ⋅ (P - C) = 0" and 
  D_on_circle2: "D ∈ circle O2 r2" and
  PD_tangent_to_circle2: "(O2 - D) ⋅ (P - D) = 0" and 
  tangent_lengths_ratio: "(dist P C) * r2 = (dist P D) * r1"
lemma problem_statement_to_prove:
  shows "sss_similar_k (P,C,A) (P,B,D)"
sorry
end