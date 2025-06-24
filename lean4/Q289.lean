import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic 
abbrev Point := EuclideanSpace ℝ (Fin 2)
namespace QuadrilateralAreaProblem
variable (X Y Z W : Point)
variable (hXY : dist X Y = 96)
variable (hYZ : dist Y Z = 32)
variable (hZW : dist Z W = 24)
variable (hXW : dist X W = 104)
variable (hAngleYZW_is_right : EuclideanGeometry.angle Y Z W = Real.pi / 2)
noncomputable def triangleArea (A B C : Point) : ℝ :=
  (1/2 : ℝ) * abs ((B -ᵥ A) 0 * (C -ᵥ A) 1 - (B -ᵥ A) 1 * (C -ᵥ A) 0)
noncomputable def quadrilateralArea (X Y Z W : Point) : ℝ :=
  triangleArea X Y W + triangleArea Y Z W
theorem area_of_quadrilateral_XYZW_is_2304 :
  quadrilateralArea X Y Z W = 2304 := by
  sorry
end QuadrilateralAreaProblem
