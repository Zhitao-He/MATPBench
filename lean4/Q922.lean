import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
noncomputable def perimeter {P : Type*} [MetricSpace P] (A B C : P) : ℝ :=
  dist A B + dist B C + dist C A
theorem problem_statement
    (A B C D : EuclideanSpace ℝ (Fin 2))
    (hAB : dist A B = 6)
    (hAC : dist A C = 4)
    (hDC : dist D C = 2)
    (hADC_right : ∠ A D C = Real.pi / 2)
    (hBDC_right : ∠ B D C = Real.pi / 2)
    (hD_on_AB : Sbtw ℝ A D B) :
    perimeter C B A = 2 * Real.sqrt (13 - 6 * Real.sqrt 3) + 10 :=
  by sorry
