import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
def kiteProperty (A B C D : PPoint) : Prop :=
  dist A C = dist C D ∧ dist B A = dist B D
noncomputable def adLenVal : ℝ := 11
noncomputable def bcLenVal : ℝ := 25
noncomputable def triangleArea (p1 p2 p3 : PPoint) : ℝ :=
  (1/2 : ℝ) * abs (((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0))
noncomputable def areaQuadrilateral (p1 p2 p3 p4 : PPoint) : ℝ :=
  triangleArea p1 p2 p3 + triangleArea p1 p3 p4
lemma kite_area_from_diagonals
    (p1 p2 p3 p4 : PPoint)
    (h_kite : kiteProperty p2 p1 p3 p4)
    : areaQuadrilateral p1 p2 p3 p4 = (dist p2 p4 * dist p1 p3) / 2 := by
  sorry
theorem kite_area_calculation (A B C D : PPoint)
  (h_kite_prop : kiteProperty A B C D)
  (h_AD_len : dist A D = adLenVal)
  (h_BC_len : dist B C = bcLenVal)
  : areaQuadrilateral B A C D = (adLenVal * bcLenVal) / 2 :=
by
  have H_area_formula : areaQuadrilateral B A C D = (dist A D * dist B C) / 2 :=
    kite_area_from_diagonals B A C D h_kite_prop
  rw [H_area_formula, h_AD_len, h_BC_len]
theorem kite_area_is_275_div_2 (A B C D : PPoint)
  (h_kite_prop : kiteProperty A B C D)
  (h_AD_len : dist A D = adLenVal)
  (h_BC_len : dist B C = bcLenVal)
  : areaQuadrilateral B A C D = 275 / 2 :=
by
  rw [kite_area_calculation A B C D h_kite_prop h_AD_len h_BC_len]
  simp only [adLenVal, bcLenVal]
  norm_num
