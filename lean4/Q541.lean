import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def PerimeterOfTriangle (p1 p2 p3 : P) : ℝ :=
  dist p1 p2 + dist p2 p3 + dist p3 p1
theorem find_perimeter_triangle_ACB
    (A B C D : P)
    (h_AD : dist A D = 5)
    (h_BC : dist B C = 32)
    (h_CD : dist C D = 12)
    (h_AC_perp_BC : ∠ A C B = Real.pi / 2)
    (h_BD_perp_CD : ∠ B D C = Real.pi / 2)
    (h_similar : dist A C / dist C B = dist C B / dist B D ∧ dist C B / dist B D = dist A B / dist C D)
    (h_img_ADC_right : ∠ A D C = Real.pi / 2)
    (h_Sbtw_ADB : Sbtw ℝ A D B) :
  PerimeterOfTriangle A C B = Real.sqrt 1193 + 45 := by sorry
