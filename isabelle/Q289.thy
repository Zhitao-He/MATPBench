theory Quadrilateral_Area
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
context
  fixes X Y Z W :: "real^2"
  assumes XY_len: "norm (Y - X) = 96"
  assumes XW_len: "norm (W - X) = 104"
  assumes YZ_len: "norm (Z - Y) = 32"
  assumes ZW_len: "norm (W - Z) = 24"
  assumes right_Z: "(Y - Z) ∙ (W - Z) = 0"
  assumes quad_simple: "¬collinear {X, Y, Z} ∧ ¬collinear {Y, Z, W} ∧ 
                        ¬collinear {Z, W, X} ∧ ¬collinear {W, X, Y}"
begin
definition area_quadrilateral :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area_quadrilateral A B C D = 
   abs (det2 (B - A) (C - A) + det2 (C - A) (D - A)) / 2"
definition det2 :: "real^2 ⇒ real^2 ⇒ real" where
  "det2 v w = v$1 * w$2 - v$2 * w$1"
theorem area_XYZW_is_2304:
  "area_quadrilateral X Y Z W = 2304"
begin
  sorry
end