import Mathlib.Data.Real.Basic

namespace QuadrilateralAngleProblem


variable (Point : Type)


variable (P Q R S : Point)


variable (angleMeasure : Point → Point → Point → ℝ)


variable (x : ℝ)



axiom h_angle_QPS : angleMeasure S P Q = x

axiom h_angle_RQP : angleMeasure P Q R = 2 * x - 16

axiom h_angle_SRQ : angleMeasure Q R S = 2 * x

axiom h_angle_PSR : angleMeasure R S P = x + 10


axiom h_sum_angles :
  angleMeasure S P Q + angleMeasure P Q R + angleMeasure Q R S + angleMeasure R S P = 360


theorem measure_of_angle_PSR : angleMeasure R S P = 71 := by
  sorry

end QuadrilateralAngleProblem