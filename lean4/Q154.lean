import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
namespace CircleProblem
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]
variable (F G H L : P)
variable (rG : ℝ)
theorem dist_FG_eq_10
    (hF_on_G : dist F G = rG)
    (hH_on_G : dist H G = rG)
    (hL_on_G : dist L G = rG)
    (hGH : dist G H = 10) :
    dist F G = 10 :=
  by
    rw [dist_comm] at hH_on_G
    have : rG = 10 := by
      rw [← hH_on_G, hGH]
    rw [hF_on_G, this]
end CircleProblem