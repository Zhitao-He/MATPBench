import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
open Real EuclideanGeometry 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
opaque areaOfQuadrilateral (v1 v2 v3 v4 : PPoint) : ℝ
opaque similarQuadrilaterals (v1₁ v2₁ v3₁ v4₁ v1₂ v2₂ v3₂ v4₂ : PPoint) : Prop
axiom similarQuadrilaterals_area_ratio
  (p1 p2 p3 p4 q1 q2 q3 q4 : PPoint) :
  similarQuadrilaterals p1 p2 p3 p4 q1 q2 q3 q4 →
  dist p1 p4 > 0 →
  areaOfQuadrilateral p1 p2 p3 p4 > 0 →
  areaOfQuadrilateral q1 q2 q3 q4 / areaOfQuadrilateral p1 p2 p3 p4 =
    (dist q1 q4 / dist p1 p4) ^ 2
theorem area_DEFG_is_125 (B C A W D E F G : PPoint)
    (h_area_BCAW : areaOfQuadrilateral B C A W = 500)
    (h_BW_length : dist B W = 30)
    (h_DG_length : dist D G = 15)
    (h_similar : similarQuadrilaterals B C A W D E F G) :
    areaOfQuadrilateral D E F G = 125 := by
  have h_BW_pos : dist B W > 0 := by
    rw [h_BW_length]
    norm_num
  have h_area_BCAW_pos : areaOfQuadrilateral B C A W > 0 := by
    rw [h_area_BCAW]
    norm_num
  have h_area_ratio : areaOfQuadrilateral D E F G / areaOfQuadrilateral B C A W = (dist D G / dist B W) ^ 2 := by
    exact similarQuadrilaterals_area_ratio B C A W D E F G h_similar h_BW_pos h_area_BCAW_pos
  have h_dist_ratio : (dist D G / dist B W) ^ 2 = 1/4 := by
    rw [h_DG_length, h_BW_length]
    norm_num
  calc areaOfQuadrilateral D E F G
    _ = areaOfQuadrilateral B C A W * ((dist D G / dist B W) ^ 2) := by
      rw [(div_eq_iff (ne_of_gt h_area_BCAW_pos)).mp h_area_ratio, mul_comm]
    _ = 500 * (1/4) := by rw [h_area_BCAW, h_dist_ratio]
    _ = 125 := by norm_num
