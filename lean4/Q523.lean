import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (D E F G H : P)
theorem perimeter_of_similar_triangle
    (hFE : dist F E = 6)  
    (hFG : dist F G = 3)  
    (hFH : dist F H = 4)  
    (hHG : dist H G = 2)  
    (h_sim_ratio1 : dist D E / dist G F = dist E F / dist F H)
    (h_sim_ratio2 : dist E F / dist F H = dist F D / dist H G)
    (h_GF_pos : dist G F > 0) 
    (h_FH_pos : dist F H > 0)
    (h_HG_pos : dist H G > 0)
    : dist D E + dist E F + dist F D = 27 / 2 := by
  sorry
