import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Data.Real.Basic 
open EuclideanGeometry 
namespace SquareAreaProblem
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def s : ℝ := Real.sqrt 80
lemma s_sq_eq_80 : s * s = 80 := by
  rw [s]
  exact Real.mul_self_sqrt (by norm_num : 0 ≤ (80 : ℝ))
lemma s_pos : 0 < s := by
  rw [s]
  exact Real.sqrt_pos.mpr (by norm_num : (80 : ℝ) > 0)
noncomputable def pA : Point := ![0, 0]
noncomputable def pB : Point := ![s, 0]
noncomputable def pC : Point := ![s, s]
noncomputable def pD : Point := ![0, s]
noncomputable def pE : Point := ![(3/4) * s, 0]
noncomputable def pF : Point := ![s, (3/4) * s]
noncomputable def pG : Point := ![(1/4) * s, s]
noncomputable def pH : Point := ![0, (1/4) * s]
noncomputable def pP : Point := ![s/2, s/2]
noncomputable def triangleArea (p1 p2 p3 : Point) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
noncomputable def areaHEP : ℝ := triangleArea pH pE pP
noncomputable def areaFGP : ℝ := triangleArea pF pG pP
theorem shaded_area_is_25 : areaHEP + areaFGP = 25 := by
  sorry
end SquareAreaProblem
