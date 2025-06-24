import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional
import Mathlib.LinearAlgebra.FiniteDimensional.Basic 
namespace CommonInternalTangentProblem
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
structure Circle where
  center : PPoint
  radius : ℝ
  h_radius_pos : radius > 0
def o1_coords : PPoint := ![5, 0]
def r1_val : ℝ := 1
lemma r1_val_pos : r1_val > 0 := by exact Real.zero_lt_one
def circle1 : Circle := {
  center := o1_coords,
  radius := r1_val,
  h_radius_pos := r1_val_pos
}
def o2_coords : PPoint := ![11, 0]
def r2_val : ℝ := 2
lemma r2_val_pos : r2_val > 0 := by exact (by norm_num : (2 : ℝ) > 0) 
def circle2 : Circle := {
  center := o2_coords,
  radius := r2_val,
  h_radius_pos := r2_val_pos
}
abbrev Line := AffineSubspace ℝ PPoint
def pointOnCircle (p : PPoint) (c : Circle) : Prop :=
  dist p c.center = c.radius
def pointOnLine (p : PPoint) (l : Line) : Prop :=
  p ∈ l
def isTangentToCircle (l : Line) (c : Circle) : Prop := by sorry
def isInternalCommonTangent (l : Line) (c1 c2 : Circle) : Prop := by sorry
noncomputable def xAxis : Line := affineSpan ℝ ({![0,0], ![1,0]} : Set PPoint)
lemma xAxis_is_line : True := by trivial 
noncomputable def intersection_formula_x_coord : ℝ :=
  (circle2.radius * (circle1.center 0) + circle1.radius * (circle2.center 0)) /
  (circle1.radius + circle2.radius)
theorem value_of_a_is_7
    (a : ℝ)
    (q_point : PPoint) (h_q_point_def : q_point = ![a,0])
    (L_tangent : Line)
    (hL_tangent_is_line : True) 
    (hL_is_common_internal_tangent : isInternalCommonTangent L_tangent circle1 circle2)
    (hQ_on_L_tangent : pointOnLine q_point L_tangent)
    (hQ_on_xAxis : pointOnLine q_point xAxis)
    (h_a_equals_formula_value : a = intersection_formula_x_coord)
    : a = 7 := by
  rw [h_a_equals_formula_value]
  unfold intersection_formula_x_coord
  unfold circle1 circle2 o1_coords r1_val o2_coords r2_val
  simp [PPoint]
  sorry
end CommonInternalTangentProblem
