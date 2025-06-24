import Mathlib.Data.Real.Basic
namespace DiagramGeometryProblem
noncomputable def lengthJT (y : Real) : Real := y + (4/5 : Real)
noncomputable def lengthLM (y : Real) : Real := 2 * y - (11/5 : Real)
def lengthTM (x : Real) : Real := 10 - 2 * x
def lengthMI (x : Real) : Real := 12 - 3 * x
theorem findYValue (x y : Real)
    (hTMEqMI : lengthTM x = lengthMI x)
    (hRatio : lengthJT y / lengthTM x = lengthLM y / lengthMI x) :
    y = 3 := by
  sorry
end DiagramGeometryProblem
