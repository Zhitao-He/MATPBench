import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
abbrev Plane := Fin 2 → ℝ
noncomputable instance : AddTorsor (Fin 2 → ℝ) Plane := inferInstance
noncomputable instance : VAdd (Fin 2 → ℝ) Plane := inferInstance
noncomputable instance : NormedAddTorsor (Fin 2 → ℝ) Plane := inferInstance
namespace PyramidFromStar
def outerSquareSideLength : ℝ := 40
def innerSquareSideLength : ℝ := 15
def center : Plane := (fun _ => 0 : Plane)
noncomputable def midpointOuterTop : Plane := center + (fun i : Fin 2 ↦ if i = 0 then 0 else outerSquareSideLength / 2)
def pyramidBaseArea : ℝ := innerSquareSideLength ^ 2
noncomputable def baseApothem : ℝ := innerSquareSideLength / 2
noncomputable def midpointInnerTopEdge : Plane := center + (fun i : Fin 2 ↦ if i = 0 then 0 else innerSquareSideLength / 2)
noncomputable def faceSlantHeight : ℝ := dist midpointOuterTop midpointInnerTopEdge
noncomputable def pyramidHeightSquared : ℝ := faceSlantHeight ^ 2 - baseApothem ^ 2
noncomputable def pyramidHeight : ℝ := Real.sqrt pyramidHeightSquared
noncomputable def volume : ℝ := (1 / 3) * pyramidBaseArea * pyramidHeight
theorem pyramidVolume_is_750 : volume = 750 := by
  sorry
end PyramidFromStar
