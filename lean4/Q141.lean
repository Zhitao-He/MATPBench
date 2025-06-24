import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Sqrt
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
section
theorem area_of_inner_square_is_36
  (A B C D E F G H : P)
  (s_ABCD : ℝ) (h_s_ABCD_val : s_ABCD = Real.sqrt 50)
  (h_side_len_AB : dist A B = s_ABCD)
  (h_side_len_BC : dist B C = s_ABCD)
  (h_side_len_CD : dist C D = s_ABCD)
  (h_side_len_DA : dist D A = s_ABCD)
  (h_angle_A : EuclideanGeometry.angle D A B = Real.pi / 2)
  (h_angle_B : EuclideanGeometry.angle A B C = Real.pi / 2)
  (h_angle_C : EuclideanGeometry.angle B C D = Real.pi / 2)
  (h_angle_D : EuclideanGeometry.angle C D A = Real.pi / 2)
  (h_side_pos : s_ABCD > 0)
  (s_EFGH : ℝ)
  (h_side_len_EF : dist E F = s_EFGH)
  (h_side_len_FG : dist F G = s_EFGH)
  (h_side_len_GH : dist G H = s_EFGH)
  (h_side_len_HE : dist H E = s_EFGH)
  (h_angle_E : EuclideanGeometry.angle H E F = Real.pi / 2)
  (h_angle_F : EuclideanGeometry.angle E F G = Real.pi / 2)
  (h_angle_G : EuclideanGeometry.angle F G H = Real.pi / 2)
  (h_angle_H : EuclideanGeometry.angle G H E = Real.pi / 2)
  (h_side_pos2 : s_EFGH > 0)
  (h_collinear_AHE : Collinear ℝ ({A, H, E} : Set P)) (h_Sbtw_AHE : Sbtw ℝ A H E)
  (h_collinear_BEF : Collinear ℝ ({B, E, F} : Set P)) (h_Sbtw_BEF : Sbtw ℝ B E F)
  (h_collinear_CFG : Collinear ℝ ({C, F, G} : Set P)) (h_Sbtw_CFG : Sbtw ℝ C F G)
  (h_collinear_DGH : Collinear ℝ ({D, G, H} : Set P)) (h_Sbtw_DGH : Sbtw ℝ D G H)
  (h_BE_len : dist B E = 1)
  (h_angle_AEB : EuclideanGeometry.angle A E B = Real.pi / 2)
  (h_angle_BFC : EuclideanGeometry.angle B F C = Real.pi / 2)
  (h_angle_CGD : EuclideanGeometry.angle C G D = Real.pi / 2)
  (h_angle_DHA : EuclideanGeometry.angle D H A = Real.pi / 2) :
  s_EFGH * s_EFGH = 36 := by
  sorry
end
end
