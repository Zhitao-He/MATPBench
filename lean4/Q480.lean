import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open Real
open EuclideanGeometry

namespace ProblemSTR


variable (S T R : EuclideanSpace ℝ (Fin 2))


noncomputable def length_TR : ℝ := 7 * sqrt 2
noncomputable def length_TS : ℝ := 3 * sqrt 2


def h_dist_TR : dist T R = length_TR := by sorry
def h_dist_TS : dist T S = length_TS := by sorry
def h_right_angle_RST : ∠ R S T = π / 2 := by sorry  


noncomputable def target_angle_STR : ℝ := arcsin ((2 * sqrt 10) / 7)


theorem measure_angle_STR :
    ∠ S T R = target_angle_STR := by sorry

end ProblemSTR
