import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Geometry.Euclidean.Sphere.Basic 
import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.InnerProductSpace.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
open EuclideanGeometry 
namespace CircleProblem
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (r s c d b e f : PPoint)
noncomputable def radiusCircleR : ℝ := 20 / 2
noncomputable def circleR_def (center_pt : PPoint) : EuclideanGeometry.Sphere PPoint := { center := center_pt, radius := radiusCircleR }
noncomputable def radiusCircleS : ℝ := 30 / 2
noncomputable def circleS_def (center_pt : PPoint) : EuclideanGeometry.Sphere PPoint := { center := center_pt, radius := radiusCircleS }
axiom hCOnCircleR : c ∈ (circleR_def r)
axiom hRCSCollinearCBetween : Wbtw ℝ r c s
axiom hDistCSEqRadiusCircleS : dist c s = (circleS_def s).radius
axiom hDistDSEq9 : dist d s = 9
axiom hCDSCollinearDBetween : Wbtw ℝ c d s
axiom hBOnCircleS : b ∈ (circleS_def s)
axiom hDSBCollinearSBetween : Wbtw ℝ d s b
axiom hEOnCircleR : e ∈ (circleR_def r)
axiom hEOnCircleS : e ∈ (circleS_def s)
axiom hFOnCircleR : f ∈ (circleR_def r)
axiom hFOnCircleS : f ∈ (circleS_def s)
axiom hENeF : e ≠ f
axiom hRNeS : r ≠ s
theorem lengthOfCDIs6 : dist c d = 6 := by sorry
end CircleProblem
