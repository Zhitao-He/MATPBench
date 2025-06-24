theory Geometry_Problem
  imports Main
begin
typedecl Point
consts
  W :: Point
  H :: Point
  Q :: Point
  A :: Point
  P :: Point
  X :: Point
consts
  between :: "Point ⇒ Point ⇒ Point ⇒ bool"  
  on_line :: "Point ⇒ Point ⇒ Point ⇒ bool"   
consts
  length :: "Point ⇒ Point ⇒ real"
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real"  
locale geometry_problem =
  fixes x :: real and y :: real
  assumes AP_def: "length A P = 3 * y + 11"
    and HP_def: "length H P = 7 * y - 5"
    and angle_HWQ_def: "angle H W Q = 4 * x - 16"
    and angle_HWX_def: "angle H W X = x + 12"
    and angle_QAP_def: "angle Q A P = 3 * x - 2"
    and WX_bisects_HWQ: "angle H W X = angle X W Q"
    and WP_median: "between W P A ∧ length H P = length H A"
    and P_on_HA: "between H P A"
    and X_on_WQ: "between W X Q"
    and X_on_WP: "between W X P"
    and X_on_WX: "on_line W X X"
    and all_points_distinct: "W ≠ H ∧ W ≠ Q ∧ W ≠ A ∧ W ≠ P ∧ W ≠ X ∧ H ≠ Q ∧ H ≠ A ∧ H ≠ P ∧ H ≠ X ∧ Q ≠ A ∧ Q ≠ P ∧ Q ≠ X ∧ A ≠ P ∧ A ≠ X ∧ P ≠ X"
begin
theorem length_HA_46: "length H A = 46"
  sorry
end
end