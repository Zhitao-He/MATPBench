import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
theorem dm_bisects_angle_adb
  (A B C O E F I M N D : Point)
  (hABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hO : O = circumcenter A B C)
  (hE : E = midpoint ℝ B C)
  (hF_circ : F ∈ EuclideanGeometry.Sphere.mk O (dist A O))
  (hF_eq_BC : dist F B = dist F C)
  (hI : True) 
  (hM : M = midpoint ℝ B I)
  (hN : N = midpoint ℝ E F)
  (hD_MN : ∃ (r : ℝ), D = (1 - r) • M + r • N)
  (hD_BC : ∃ (s : ℝ), D = (1 - s) • B + s • C)
  (hM_ne_N : M ≠ N)
  (hA_ne_D : A ≠ D)
  (hM_ne_D : M ≠ D)
  (hB_ne_D : B ≠ D)
  : EuclideanGeometry.angle A D M = EuclideanGeometry.angle M D B := by
  sorry
