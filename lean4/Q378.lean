import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open scoped Real EuclideanGeometry
structure MyIsSquare (A B C D : PPoint) : Prop where 
  ab_pos : dist A B > 0
  AB_eq_BC : dist A B = dist B C
  BC_eq_CD : dist B C = dist C D
  CD_eq_DA : dist C D = dist D A
  angle_A : EuclideanGeometry.angle D A B = Real.pi / 2
  angle_B : EuclideanGeometry.angle A B C = Real.pi / 2
  angle_C : EuclideanGeometry.angle B C D = Real.pi / 2
  angle_D : EuclideanGeometry.angle C D A = Real.pi / 2
section GeometryProblem
variable (A B C D E F G H S Y : PPoint)
variable (h_ABDC_is_square : MyIsSquare A B D C) 
variable (h_AB_len : dist A B = 1)
variable (h_EFHG_is_square : MyIsSquare E F H G) 
variable (h_EF_len : dist E F = 1)
variable (h_ASHY_is_square : MyIsSquare A S H Y) 
variable (h_AY_len : dist Y A = 5)
variable (h_C_on_AY : Wbtw ℝ A C Y)
variable (h_G_on_YH : Wbtw ℝ Y G H)
noncomputable def areaQuadrilateralDYES : ℝ := 
  ((1/2 : ℝ) * abs ((Y 0 - D 0) * (E 1 - D 1) - (E 0 - D 0) * (Y 1 - D 1))) +
  ((1/2 : ℝ) * abs ((E 0 - D 0) * (S 1 - D 1) - (S 0 - D 0) * (E 1 - D 1)))
theorem area_DYES_is_15 :
    areaQuadrilateralDYES = 15 := by
  sorry
end GeometryProblem
