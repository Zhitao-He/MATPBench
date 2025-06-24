import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem find_value_of_a_plus_b_minus_90
  (A F E C G D H : P)
  (a_deg b_deg : ℝ)
  (hF_ne_E : F ≠ E)
  (hC_ne_E : C ≠ E)
  (hG_ne_D : G ≠ D)
  (hA_ne_D : A ≠ D)
  (hD_ne_H : D ≠ H)
  (hE_ne_H : E ≠ H)
  (hD_ne_E : D ≠ E)
  (h_triangle_DEH_not_collinear : ¬ Collinear ℝ ({D, E, H} : Set P))
  (h_angle_FEC_val : EuclideanGeometry.angle F E C = a_deg * (Real.pi / 180))
  (h_angle_GDA_val : EuclideanGeometry.angle G D A = b_deg * (Real.pi / 180))
  (h_DHE_is_right : EuclideanGeometry.angle D H E = Real.pi / 2)
  (h_HED_eq_FEC : EuclideanGeometry.angle H E D = EuclideanGeometry.angle F E C)
  (h_EDH_eq_GDA : EuclideanGeometry.angle E D H = EuclideanGeometry.angle G D A)
  : a_deg + b_deg - 90 = 0 :=
by
  sorry
