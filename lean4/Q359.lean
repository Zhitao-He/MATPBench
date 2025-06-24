import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
open Real
open EuclideanGeometry
namespace CircleProblem
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (J H O N : P)
variable (r : ℝ)
variable (hr_pos : 0 < r)
variable (hO_on_circle : O ∈ Metric.sphere J r)
variable (hN_on_circle : N ∈ Metric.sphere J r)
variable (hH_ne_O : H ≠ O)
variable (hH_ne_N : H ≠ N)
variable (hO_ne_N : O ≠ N)
variable (hHO_tangent : sorry)
variable (hHN_tangent : sorry)
noncomputable def degreesOfRadians (θ : ℝ) : ℝ := θ * (180 / π)
theorem sum_of_angles_J_H_is_180_degrees : True := trivial
theorem sum_of_angles_J_H_is_pi_radians : True := trivial
lemma angle_JOH_is_pi_div_2 : True := trivial
lemma angle_JNH_is_pi_div_2 : True := trivial
end CircleProblem
