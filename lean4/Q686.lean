import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
noncomputable def radToDeg (r : ℝ) : ℝ := r * (180 / Real.pi)
open EuclideanGeometry
theorem target_angle_BCA_is_66_degrees
  (A B C : PPoint)
  (h_A_ne_B : A ≠ B)
  (h_A_ne_C : A ≠ C)
  (h_B_ne_C : B ≠ C)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set PPoint))
  (h_angle_ABC_value : angle A B C = degToRad 76)
  (h_angle_CAB_relation : angle B A C = (1 / (2 : ℝ)) * angle A B C)
  : radToDeg (angle A C B) = 66 :=
by
  have h_sum_angles_rad : angle B A C + angle A B C + angle A C B = Real.pi :=
    angle_sum_eq_pi A B C h_A_ne_B h_A_ne_C h_B_ne_C h_noncollinear
  sorry
