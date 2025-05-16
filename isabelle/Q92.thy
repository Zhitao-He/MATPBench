theory TriangleProblem
imports Main "HOL-Analysis.Euclidean_Space"
begin

locale triangle_problem =
  fixes A B C P D E F :: "real^2"
  assumes distinct: "A ≠ B" "B ≠ C" "C ≠ A"
  assumes P_inside: "inside_triangle A B C P"
  assumes D_on_BC: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ D = (1 - t) *ᵥ B + t *ᵥ C"
  assumes E_on_AC: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ E = (1 - t) *ᵥ A + t *ᵥ C"
  assumes F_on_AB: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ F = (1 - t) *ᵥ A + t *ᵥ B"
  assumes A_P_D_colinear: "∃t1 t2. t1 ≠ 0 ∧ t2 ≠ 0 ∧ t1 *ᵥ (D - P) = t2 *ᵥ (P - A)"
  assumes B_P_E_colinear: "∃t1 t2. t1 ≠ 0 ∧ t2 ≠ 0 ∧ t1 *ᵥ (E - P) = t2 *ᵥ (P - B)"
  assumes C_P_F_colinear: "∃t1 t2. t1 ≠ 0 ∧ t2 ≠ 0 ∧ t1 *ᵥ (F - P) = t2 *ᵥ (P - C)"
  assumes AP_dist: "dist A P = 6"
  assumes BP_dist: "dist B P = 9"
  assumes PD_dist: "dist P D = 6"
  assumes PE_dist: "dist P E = 3"
  assumes CF_dist: "dist C F = 20"

context triangle_problem
begin

definition area_triangle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area_triangle X Y Z = norm (cross_product (Y - X) (Z - X)) / 2"

definition inside_triangle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "inside_triangle X Y Z P ⟷ 
   (∃a b c. a > 0 ∧ b > 0 ∧ c > 0 ∧ a + b + c = 1 ∧ P = a *ᵥ X + b *ᵥ Y + c *ᵥ Z)"

definition cross_product :: "real^2 ⇒ real^2 ⇒ real" where
  "cross_product v w = v$1 * w$2 - v$2 * w$1"

theorem area_triangle_ABC_108: "area_triangle A B C = 108"
  sorry

end
end