import Mathlib.Geometry.Euclidean.Basic

-- We work in a general Euclidean affine space.
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

namespace ProblemFormalization

-- Declare points as variables, following lowerCamelCase.
variable (s t u v y z j : P)

-- Betweenness relations (weak betweenness)
variable (h_sjt : Wbtw ℝ s j t)
variable (h_zjt : Wbtw ℝ z j t)
variable (h_yju : Wbtw ℝ y j u)
variable (h_zvu : Wbtw ℝ z v u)

-- Known distances
variable (h_dist_zt : dist z t = 18)
variable (h_dist_jv : dist j v = 3)
variable (h_dist_vt : dist v t = 9)

-- Midpoint/equality relations
variable (h_sj_eq_jt : dist s j = dist j t)
variable (h_zv_eq_vu : dist z v = dist v u)

-- Statement to prove: dist j t = 6
theorem length_of_JT_is_6 : dist j t = 6 := by
  sorry

end ProblemFormalization