import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt 
namespace TwoSkaters
def dist_AB : ℝ := 100
def speed_Allie : ℝ := 8
def speed_Billie : ℝ := 7
noncomputable def angle_Allie_path_with_AB_rad : ℝ := Real.pi / 3 
noncomputable def a_quad : ℝ := speed_Allie^2 - speed_Billie^2
noncomputable def b_quad : ℝ := -2 * dist_AB * speed_Allie * Real.cos angle_Allie_path_with_AB_rad
noncomputable def c_quad : ℝ := dist_AB^2
lemma a_quad_val : a_quad = 15 := by sorry
lemma cos_pi_div_three_eq_half : Real.cos (Real.pi / 3) = 1/2 := by sorry
lemma b_quad_val : b_quad = -800 := by sorry
lemma c_quad_val : c_quad = 10000 := by sorry
noncomputable def discriminant : ℝ := b_quad^2 - 4 * a_quad * c_quad
lemma discriminant_val : discriminant = 40000 := by sorry
lemma discriminant_pos : 0 < discriminant := by sorry 
lemma sqrt_discriminant_val : Real.sqrt discriminant = 200 := by sorry
lemma a_quad_ne_zero : a_quad ≠ 0 := by sorry 
noncomputable def t_solution1 : ℝ := (-b_quad - Real.sqrt discriminant) / (2 * a_quad)
noncomputable def t_solution2 : ℝ := (-b_quad + Real.sqrt discriminant) / (2 * a_quad)
lemma t_solution1_val : t_solution1 = 20 := by sorry
lemma t_solution2_val : t_solution2 = 100 / 3 := by sorry
lemma t_solution1_pos : 0 < t_solution1 := by sorry
lemma t_solution2_pos : 0 < t_solution2 := by sorry
lemma t_solution1_le_t_solution2 : t_solution1 ≤ t_solution2 := by sorry 
noncomputable def time_to_meet : ℝ := t_solution1 
lemma time_to_meet_val : time_to_meet = 20 := by sorry
noncomputable def dist_Allie_skates : ℝ := speed_Allie * time_to_meet
theorem allie_skates_distance_is_160 : dist_Allie_skates = 160 := by sorry
end TwoSkaters
