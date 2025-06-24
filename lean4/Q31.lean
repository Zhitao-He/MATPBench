import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real InnerProductSpace EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
namespace BuildingHeightProblem
def horizontalDistance : ℝ := 120.0
noncomputable def elevationAngle : ℝ := π / 6    
noncomputable def depressionAngle : ℝ := π / 3   
variable (A B C T : PPoint)
axiom h_dist_AC : dist A C = horizontalDistance
axiom h_A_ne_C : A ≠ C
axiom h_T_ne_C : T ≠ C
axiom h_B_ne_C : B ≠ C
axiom h_angle_ACT_right : angle A C T = π / 2
axiom h_angle_ACB_right : angle A C B = π / 2
axiom h_TCB_collinear : angle T C B = π
axiom h_elevation_TAC : angle T A C = elevationAngle
axiom h_depression_CAB : angle C A B = depressionAngle
noncomputable def buildingHeight (T B : PPoint) : ℝ := dist T B
lemma dist_TC_formula : dist T C = dist A C * tan (angle T A C) := by
  sorry
lemma dist_BC_formula : dist B C = dist A C * tan (angle C A B) := by
  sorry
lemma buildingHeight_sum : buildingHeight T B = dist T C + dist C B := by
  sorry
theorem buildingHeight_formula :
    buildingHeight T B = horizontalDistance * (tan elevationAngle + tan depressionAngle) := by
  sorry
theorem buildingHeight_value :
    buildingHeight T B = 160 * sqrt 3 := by
  sorry
noncomputable instance : Dist PPoint := inferInstance
noncomputable instance : MetricSpace PPoint := inferInstance
end BuildingHeightProblem
