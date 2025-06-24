import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real EuclideanGeometry
namespace ProblemFormalization
variable {V : Type*} {P : Type*}
variable [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P] [NormedAddTorsor V P]
variable (A B C N : P)
variable (hA_ne_N : A ≠ N)
variable (hB_ne_N : B ≠ N)
variable (hA_ne_C : A ≠ C)
variable (hN_ne_C : N ≠ C)
variable (hN_ne_B : N ≠ B)
variable (hA_ne_B : A ≠ B)
variable (hAB_len : dist A B = 3)
variable (hAB_eq_CN : dist A B = dist C N)
variable (hAC_eq_BN : dist A C = dist B N)
variable (h_angle_ANB : ∠ A N B = (31 / 90) * π)  
variable (hAC_perp_NC : ∠ A C N = π / 2)
variable (hNB_perp_AB : ∠ N B A = π / 2)
def perimeterACNB : ℝ :=
  dist A C + dist C N + dist N B + dist B A
theorem find_perimeter_ACNB :
    perimeterACNB A B C N = 6 * Real.tan (7 * π / 45) + 6 := by
  sorry
end ProblemFormalization
