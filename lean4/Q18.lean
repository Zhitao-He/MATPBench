import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

variable {P : Type*} [EuclideanSpace ℝ P]

structure IsSquare (A B C D : P) : Prop where
  is_parallelogram : midpoint ℝ A C = midpoint ℝ B D
  adj_sides_equal : dist A B = dist B C
  angle_at_B_is_right : EuclideanGeometry.Angle.angle A B C = Real.pi / 2
  side_len_pos : 0 < dist A B

section ProblemGeometry

  variable (A B C D : P)
  variable (E F G H : P)
  variable (O : P)
  variable (K M : P)

  hypothesis h_ABCD_is_square : IsSquare A B C D

  hypothesis h_E_mid_AB : E = midpoint ℝ A B
  hypothesis h_F_mid_BC : F = midpoint ℝ B C
  hypothesis h_G_mid_CD : G = midpoint ℝ C D
  hypothesis h_H_mid_DA : H = midpoint ℝ D A

  hypothesis h_O_is_center : O = midpoint ℝ A C

  def incircleRadius (h_sq : IsSquare A B C D) : ℝ := (dist A B) / 2

  hypothesis h_K_on_segment_BF : K ∈ segment ℝ B F
  hypothesis h_K_on_incircle : dist K O = incircleRadius h_ABCD_is_square

  -- 添加点M的定义（假设M是AH与EK的交点）
  hypothesis h_M_is_intersection : M ∈ segment ℝ A H ∧ M ∈ segment ℝ E K

  def angle_AMK_target_value_rad : ℝ := (130.9 / 180) * Real.pi

  theorem angle_AMK_is_130_9_degrees :
    EuclideanGeometry.Angle.angle A M K = angle_AMK_target_value_rad := by sorry

end ProblemGeometry