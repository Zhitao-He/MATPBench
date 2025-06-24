import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
namespace ProblemSetup
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def targetDistance : ℝ := 20 / 3
noncomputable instance : Dist PPoint := inferInstance
variable (P T : PPoint)
theorem proveDistancePT : dist P T = targetDistance := by
  sorry
end ProblemSetup
