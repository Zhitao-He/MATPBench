import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
local notation "P2" => EuclideanSpace ℝ (Fin 2)
namespace HexagonProblem
open Real
def length36 : ℝ := 36
def separation24 : ℝ := 24
def segment18 : ℝ := 18 
noncomputable def triHSq : ℝ := segment18 ^ 2 - (separation24 / 2) ^ 2
lemma triHSq_eq_180 : triHSq = 180 := by sorry 
noncomputable def triH : ℝ := sqrt triHSq 
lemma triH_eq_6_sqrt_5 : triH = 6 * sqrt 5 := by sorry
lemma triH_pos : 0 < triH := by sorry
noncomputable def hexV1 : P2 := ![0, separation24]
noncomputable def hexV2 : P2 := ![-triH, separation24 / 2]
noncomputable def hexV3 : P2 := ![0, 0]
noncomputable def hexV4 (aLen : ℝ) : P2 := ![aLen, 0]
noncomputable def hexV5 (aLen : ℝ) : P2 := ![aLen + triH, separation24 / 2]
noncomputable def hexV6 (aLen : ℝ) : P2 := ![aLen, separation24]
noncomputable def hexagonVertices (aLen : ℝ) : List P2 :=
  [hexV1, hexV2, hexV3, hexV4 aLen, hexV5 aLen, hexV6 aLen]
noncomputable def hexagonArea (aLen : ℝ) : ℝ :=
  (aLen * separation24) + (2 * (1 / 2 * separation24 * triH))
lemma hexagonArea_simplified (aLen : ℝ) :
  hexagonArea aLen = aLen * separation24 + separation24 * triH := by sorry
noncomputable def originalRectangleArea (aLen : ℝ) : ℝ := aLen * length36
def problemCondition (aLen : ℝ) : Prop :=
  hexagonArea aLen = originalRectangleArea aLen
noncomputable def denominatorVal : ℝ := length36 - separation24
lemma denominator_eq_12 : denominatorVal = 12 := by sorry
lemma denominator_pos : 0 < denominatorVal := by sorry
noncomputable def aSolution : ℝ := (separation24 * triH) / denominatorVal
lemma aSolution_pos : 0 < aSolution := by sorry
lemma aSolution_eq_12_sqrt_5 : aSolution = 12 * sqrt 5 := by sorry
theorem aSolution_sq_eq_720 : aSolution ^ 2 = 720 := by sorry
lemma aSolution_satisfies_problemCondition :
  problemCondition aSolution := by sorry
end HexagonProblem
