import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace SquarePartition
open Real 
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def s : ℝ := 6 
noncomputable def O   : Point := ![0, 0]     
noncomputable def Px  : Point := ![s, 0]     
noncomputable def Pxy : Point := ![s, s]     
noncomputable def Py  : Point := ![0, s]     
noncomputable def M_left  : Point := ![0, s/2]
noncomputable def M_right : Point := ![s, s/2]
noncomputable def A_pt (xA : ℝ) : Point := ![xA, s/2]
noncomputable def B_pt (xB : ℝ) : Point := ![xB, s/2]
noncomputable def triangleArea (P Q R : Point) : ℝ :=
  (1/2 : ℝ) * abs ((Q 0 - P 0) * (R 1 - P 1) - (Q 1 - P 1) * (R 0 - P 0))
noncomputable def areaLeftOfPolyline (px : ℝ) : ℝ :=
  triangleArea O M_left (![px, s/2]) +
  triangleArea M_left Py (![px, s/2]) +
  triangleArea (![px, s/2]) Py Pxy
noncomputable def areaSquare : ℝ := s * s
noncomputable def areaPart : ℝ := areaSquare / 3
noncomputable def x_min (xA xB : ℝ) : ℝ := min xA xB
noncomputable def x_max (xA xB : ℝ) : ℝ := max xA xB
noncomputable def areaRegion1 (xA xB : ℝ) : ℝ := areaLeftOfPolyline (x_min xA xB)
noncomputable def areaRegion3 (xA xB : ℝ) : ℝ := areaSquare - areaLeftOfPolyline (x_max xA xB)
noncomputable def areaRegion2 (xA xB : ℝ) : ℝ := areaLeftOfPolyline (x_max xA xB) - areaLeftOfPolyline (x_min xA xB)
theorem length_AB_is_4
    (xA xB : ℝ) 
    (h_xA_bounds : 0 ≤ xA ∧ xA ≤ s)
    (h_xB_bounds : 0 ≤ xB ∧ xB ≤ s)
    (h_A_ne_B : xA ≠ xB)
    (h_area1_eq : areaRegion1 xA xB = areaPart)
    (h_area2_eq : areaRegion2 xA xB = areaPart)
    (h_area3_eq : areaRegion3 xA xB = areaPart) : dist (A_pt xA) (B_pt xB) = 4 := by
  sorry
end SquarePartition
