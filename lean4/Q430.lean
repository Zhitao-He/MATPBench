import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace AnnularSectorProblem
open Real
open scoped EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2)
def r₁ : ℝ := 1
def r₂ : ℝ := 2
noncomputable def angleADC (A D C : P) : ℝ := ∠ A D C
noncomputable def areaLarge : ℝ := π * r₂ ^ 2
noncomputable def areaShaded (A D C : P) : ℝ := angleADC A D C / 2 * (r₂ ^ 2 - r₁ ^ 2)
noncomputable def angleADCdeg (A D C : P) : ℝ := angleADC A D C * (180 / π)
theorem angleADC_is_120
    (D A C : P) 
    (hA : dist A D = r₂)
    (hC : dist C D = r₂)
    (h_nontriv : angleADC A D C ≠ 0 ∧ angleADC A D C ≠ π)
    (h_area : areaShaded A D C = (5/12) * areaLarge) :
    angleADCdeg A D C = 120 := by
  sorry
end AnnularSectorProblem
