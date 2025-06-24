import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def radToDeg (r : ℝ) : ℝ := r * 180 / Real.pi
open EuclideanGeometry
theorem measure_of_arc_SU
  (B S U V T R : PPoint)
  (r : ℝ) (hr_pos : 0 < r)
  (hS : S ∈ EuclideanGeometry.Sphere.mk B r)
  (hU : U ∈ EuclideanGeometry.Sphere.mk B r)
  (hV : V ∈ EuclideanGeometry.Sphere.mk B r)
  (hT : T ∈ EuclideanGeometry.Sphere.mk B r)
  (hR_ext : dist R B > r)
  (hRST : Collinear ℝ ({R, S, T} : Set PPoint))
  (hRUV : Collinear ℝ ({R, U, V} : Set PPoint))
  (hST : S ≠ T)
  (hUV : U ≠ V)
  (h_angle_SRU : radToDeg (EuclideanGeometry.angle S R U) = 23)
  (h_angle_BVT : radToDeg (EuclideanGeometry.angle B V T) = 68)
  : radToDeg (EuclideanGeometry.angle S B U) = 22 :=
by
  sorry
