import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Matrix.Basic
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
open scoped EuclideanGeometry Real
noncomputable section
abbrev Point := EuclideanSpace ℝ (Fin 2)
abbrev Vec := EuclideanSpace ℝ (Fin 2)
def vec2 (x y : ℝ) : Vec := ![(x : ℝ), (y : ℝ)]
def det2x2 (v1 v2 : Vec) : ℝ := v1 0 * v2 1 - v1 1 * v2 0
structure Rectangle : Type where
  P : Point
  v1 : Vec
  v2 : Vec
  is_orthogonal : inner ℝ v1 v2 = 0
def R₀ : Rectangle :=
  let P_R₀ : Point := vec2 0 0
  let v1_R₀ : Vec := vec2 3 0
  let v2_R₀ : Vec := vec2 0 4
  ⟨P_R₀, v1_R₀, v2_R₀, by admit⟩
def diagonal (R : Rectangle) : Vec := R.v1 + R.v2
def nextRectangle (R_prev : Rectangle) : Rectangle :=
  let P_new : Point := R_prev.P
  let v1_new : Vec := diagonal R_prev
  let prev_v1_coords := R_prev.v1
  let prev_v2_coords := R_prev.v2
  let det_prev_sides : ℝ := det2x2 prev_v1_coords prev_v2_coords
  let chosen_v_prev : Vec := if det_prev_sides > 0 then R_prev.v2 else R_prev.v1
  let proj_num : ℝ := inner ℝ chosen_v_prev v1_new
  let proj_den_sq_norm : ℝ := ‖v1_new‖^2
  let v2_new : Vec :=
    if proj_den_sq_norm = 0 then chosen_v_prev
    else chosen_v_prev - (proj_num / proj_den_sq_norm) • v1_new
  ⟨P_new, v1_new, v2_new, by admit⟩
def R₁ : Rectangle := nextRectangle R₀
def R₂ : Rectangle := nextRectangle R₁
def R₃ : Rectangle := nextRectangle R₂
def allRectangles : List Rectangle := [R₀, R₁, R₂, R₃]
def areaOfRectangle (R : Rectangle) : ℝ := ‖R.v1‖ * ‖R.v2‖
def totalAreaCovered : ℝ :=
  areaOfRectangle R₀ +
  (areaOfRectangle R₁ - areaOfRectangle R₁ / 2) +
  (areaOfRectangle R₂ - areaOfRectangle R₂ / 2) +
  (areaOfRectangle R₃ - areaOfRectangle R₃ / 2)
theorem computedTotalArea : totalAreaCovered = 30 := by
  sorry
end
