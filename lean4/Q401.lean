import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (p q r s t : P)
noncomputable def deg_to_rad (d : ℝ) : ℝ := d * (Real.pi / 180)
variable (h_r_between_pt : Sbtw ℝ p r t)
variable (h_r_between_qs : Sbtw ℝ q r s)
variable (h_angle_pqr_value : EuclideanGeometry.angle p q r = deg_to_rad 40)
variable (h_pq_eq_qr : dist p q = dist q r)
variable (h_rs_eq_rt : dist r s = dist r t)
theorem angle_RTS_is_55_degrees : EuclideanGeometry.angle r t s = deg_to_rad 55 := by
  sorry
