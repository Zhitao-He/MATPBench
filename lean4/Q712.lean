import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (R S T : P)
variable (h_dist_eq : dist T R = dist S T)
variable (h_angle_STR : ∠ S T R = degToRad 50)
variable (h_noncollinear : ¬ Collinear ℝ ({R, S, T} : Set P))
theorem problem_statement : ∠ T R S = degToRad 65 := by
  sorry
