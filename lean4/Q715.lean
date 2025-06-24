import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open EuclideanGeometry
variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]
variable {R L W T S : P}
axiom hRL : dist R L = 3
axiom hRW : dist R W = 6
axiom hRT : dist R T = 8
axiom hRLT : Sbtw ℝ R L T
axiom hRWS : Sbtw ℝ R W S
axiom hL_ne_W : L ≠ W
axiom hT_ne_S : T ≠ S
axiom hTS_parallel_LW : (affineSpan ℝ ({T, S} : Set P)).direction = (affineSpan ℝ ({L, W} : Set P)).direction
theorem dist_WS_eq_10 : dist W S = 10 := by
  sorry
