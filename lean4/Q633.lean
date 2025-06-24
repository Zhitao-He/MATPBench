import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem target_value_of_arc_BFG
  (A C D F G B : PPoint)
  (r : ℝ)
  (D_sphere : EuclideanGeometry.Sphere PPoint)
  (hA_on_circle : A ∈ D_sphere)
  (hC_on_circle : C ∈ D_sphere)
  (hD_on_circle : D ∈ D_sphere)
  (hF_on_circle : F ∈ D_sphere)
  (hG_on_circle : G ∈ D_sphere)
  (h_D_def : D_sphere = EuclideanGeometry.Sphere.mk B r)
  (h_angle_CBD : EuclideanGeometry.angle C B D = 55 * Real.pi / 180)
  (h_angle_FBG : EuclideanGeometry.angle F B G = 35 * Real.pi / 180) :
  (2 * Real.pi - EuclideanGeometry.angle F B G) * 180 / Real.pi = 325 := by
  sorry
