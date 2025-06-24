import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.LinearAlgebra.AffineSpace.Combination 
structure MedianProblemGeometry (V : Type*) [NormedAddCommGroup V] [InnerProductSpace ℝ V] (P : Type*) [MetricSpace P] [NormedAddTorsor V P] where
  K : P
  J : P
  L : P  
  R : P  
  S : P  
  T : P  
  P_pt : P  
  h_R_is_midpoint_KJ : R = midpoint ℝ K J
  h_S_is_midpoint_KL : S = midpoint ℝ K L
  h_T_is_midpoint_JL : T = midpoint ℝ J L
  h_dist_PT_eq_2 : dist P_pt T = 2
  h_KJL_nondegenerate : ¬ Collinear ℝ ({K, J, L} : Set P)
  h_P_is_centroid : P_pt = sorry 
theorem find_length_KP {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] {P : Type*} [MetricSpace P] [NormedAddTorsor V P] (geom : MedianProblemGeometry V P) :
  dist geom.K geom.P_pt = 4 := by
  sorry
