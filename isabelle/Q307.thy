theory TriangleAreaRatio
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale triangle_area_ratio =
  fixes A B C D :: "real^2"
  assumes right_C: "angle B C A = pi/2"
  and right_D: "angle B D C = pi/2"
  and right_ADC: "angle A D C = pi/2"
  and angle_A: "angle C A B = pi/6"
  and on_line_D_BA: "on_line D (B, A)"
  and on_line_D_AC: "on_line D (A, C)"
  and non_collinear: "¬collinear {B, C, A}"
definition on_line :: "real^2 ⇒ real^2 × real^2 ⇒ bool" where
  "on_line P (A, B) ⟷ (∃t. 0 ≤ t ∧ t ≤ 1 ∧ P = (1 - t) • A + t • B)"
definition area :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area P Q R = (1/2) * norm (cross_product (Q - P) (R - P))"
definition cross_product :: "real^2 ⇒ real^2 ⇒ real" where
  "cross_product v w = v$1 * w$2 - v$2 * w$1"
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle P Q R = (if P = Q ∨ R = Q then 0 
                 else let v1 = P - Q; v2 = R - Q 
                      in arccos (inner_product v1 v2 / (norm v1 * norm v2)))"
theorem triangle_BDC_ADC_area_ratio:
  "area B D C / area A D C = 1/3"
  oops