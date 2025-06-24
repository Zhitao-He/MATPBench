import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open Real InnerProductSpace
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace ProblemFormalization
theorem length_JT_is_6
  (S T U Y Z J V_pt : P)
  (hT : T = midpoint ℝ S U)
  (hY : Y = midpoint ℝ S Z)
  (hV : V_pt = midpoint ℝ Z U)
  (hJ : J = (1/3 : ℝ) • (S +ᵥ Z +ᵥ U))
  (h_noncollinear : ¬ Collinear ℝ ({S, Z, U} : Set P))
  (h_UJ : dist U J = 9)
  (h_VJ : dist V_pt J = 3)
  (h_ZT : dist Z T = 18)
  : dist J T = 6 := by
  sorry
end ProblemFormalization
