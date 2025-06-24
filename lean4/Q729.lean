import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
abbrev Plane := EuclideanSpace ℝ (Fin 2)
noncomputable def angleBCAVal : ℝ := (43 / 180) * π
theorem find_value_of_y
  (A B C D : Plane)
  (x y : ℝ)
  (hAC : dist A C = x)
  (hAD : dist A D = 8)
  (hBD : dist B D = y)
  (hAngleBCA : inner ℝ (B -ᵥ C) (A -ᵥ C) = Real.cos angleBCAVal)
  (hCAPerpBA : inner ℝ (C -ᵥ A) (B -ᵥ A) = 0)
  (hDBPerpCB : inner ℝ (D -ᵥ B) (C -ᵥ B) = 0)
  : y = 8 / Real.sin angleBCAVal :=
  sorry
