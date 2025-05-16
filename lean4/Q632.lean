import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

namespace Problem

open Real EuclideanGeometry

noncomputable def deg_to_rad (deg : ℝ) : ℝ := deg * Real.pi / 180

variables {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variables {P : Type*} [MetricSpace P] [NormedAffineSpace V P]
variable [Fact (FiniteDimensional.finrank ℝ V = 2)]

variable (A B C D G O : P)
variable (x : ℝ)
variable (r : ℝ)

variable (h_r_positive : 0 < r)
variable (hA_on_circle : dist A O = r)
variable (hB_on_circle : dist B O = r)
variable (hC_on_circle : dist C O = r)
variable (hD_on_circle : dist D O = r)

variable (h_D_ne_C : D ≠ C)
variable (h_G_ne_C : G ≠ C)
variable (h_G_ne_B : G ≠ B)
variable (h_A_ne_B : A ≠ B)

variable (h_angle_DCG : angle D C G = Real.Angle.ofReal (deg_to_rad (3 * x)))
variable (h_angle_GBA : angle G B A = Real.Angle.ofReal (deg_to_rad (x + 24)))

theorem measure_of_angle_GBA_is_36_degrees :
  angle G B A = Real.Angle.ofReal (deg_to_rad 36) := by sorry

end Problem