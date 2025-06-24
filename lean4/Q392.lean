import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable section
open EuclideanGeometry
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def area_triangle (A B C : P) : ℝ :=
  (1/2 : ℝ) * abs ((B 0 - A 0) * (C 1 - A 1) - (C 0 - A 0) * (B 1 - A 1))
def problem_statement (U X P : P) : Prop :=
  area_triangle U X P = 84
theorem result_area_UXP
    (U V W X Y Z P : EuclideanSpace ℝ (Fin 2))
    (h_uvw_not_collinear : ¬ Collinear ℝ ({U, V, W} : Set (EuclideanSpace ℝ (Fin 2))))
    (hX_on_UV : X ∈ openSegment ℝ U V)
    (hY_on_VW : Y ∈ openSegment ℝ V W)
    (hZ_on_UW : Z ∈ openSegment ℝ U W)
    (hP_on_UY : P ∈ openSegment ℝ U Y)
    (hP_on_VZ : P ∈ openSegment ℝ V Z)
    (hP_on_WX : P ∈ openSegment ℝ W X)
    (hVY_YW_ratio : 3 * dist V Y = 4 * dist Y W)
    (h_area_PYW : area_triangle P Y W = 30)
    (h_area_PZW : area_triangle P Z W = 35)
    : problem_statement U X P :=
  by sorry
end
