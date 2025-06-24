import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def radius : ℝ := Real.sqrt 50
theorem distance_squared_from_B_to_O
  (O A B C : P)
  (hA_on_circle : dist A O = radius)
  (hC_on_circle : dist C O = radius)
  (hAB_length : dist A B = 6)
  (hBC_length : dist B C = 2)
  (hABC_right_angle : EuclideanGeometry.angle A B C = Real.pi / 2)
  (hB_inside_circle : dist B O < radius) :
  dist B O ^ 2 = 26 := by
  sorry
