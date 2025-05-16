import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

namespace EuclideanGeometry

variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]

theorem bn_length_given_parallel_mn_ab
    (A B M N : P)
    (hAM : dist A M = 3)
    (hMN : dist M N = 2.4)
    (hAB : dist A B = 5)
    (h_parallel : SameRay ℝ (VSub.vsub N M) (VSub.vsub B A)) :
    dist B N = 4 := by
  sorry

end EuclideanGeometry