import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry Real
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace ProblemGeo
theorem find_x
  (A B C D : P)
  (x y z : ℝ)
  (hAB : dist A B = y)
  (hAD : dist A D = z)
  (hBC : dist B C = x)
  (hBD : dist B D = 4)
  (hCD : dist C D = 10)
  (hABperpCB : ∠ A B C = π / 2)
  (hDCperpAC : ∠ D C A = π / 2)
  (hColinear : ∠ A B D = π)
  : x = 2 * sqrt 21 := by
  sorry
end ProblemGeo
