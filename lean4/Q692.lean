import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (A B C D M N P : PPoint)
variable (h_AM_eq_MP : dist A M = dist M P)
variable (h_AP_len : dist A P = Real.sqrt 13)
variable (h_PD_len : dist P D = 3 * Real.sqrt 13)
variable (h_PN_eq_ND : dist P N = dist N D)
variable (h_angle_MAB_eq_NDC : EuclideanGeometry.angle M A B = EuclideanGeometry.angle N D C)
noncomputable def perimeter_triangle_coord (p1 p2 p3 : PPoint) : ℝ := dist p1 p2 + dist p2 p3 + dist p3 p1
variable (h_perimeter_BPA : perimeter_triangle_coord B P A = 12)
variable (h_CP_perp_NP : EuclideanGeometry.angle C P N = Real.pi / 2)
variable (h_sbtw_AMP : Sbtw ℝ A M P)
variable (h_sbtw_PND : Sbtw ℝ P N D)
variable (h_sbtw_MPN : Sbtw ℝ M P N)
variable (h_sbtw_BPC : Sbtw ℝ B P C)
variable (h_BPA_not_collinear : ¬ Collinear ℝ ({B, P, A} : Set PPoint))
variable (h_CPD_not_collinear : ¬ Collinear ℝ ({C, P, D} : Set PPoint))
theorem perimeter_CPD_eq_36 : perimeter_triangle_coord C P D = 36 := by
  sorry
