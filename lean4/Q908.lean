import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def areaOfTriangle (p1 p2 p3 : P) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
theorem imo_1998_p1 (p1 p2 p3 : P) (h_collinear : Collinear ℝ ({p1, p2, p3} : Set P)) :
  areaOfTriangle p1 p2 p3 = 0 :=
by
  sorry
noncomputable def areaOfQuadrilateral (D A B C : P) : ℝ := 
  areaOfTriangle D A C + areaOfTriangle A B C
theorem areaOfDABC_is_96 {D A B C : P}
  (hD: D = ![0,0]) (hA: A = ![8,0]) (hB: B = ![14,12]) (hC: C = ![2,16]) :
  areaOfQuadrilateral D A B C = 96 :=
by
  sorry
