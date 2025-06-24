import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real InnerProductSpace Metric
open scoped EuclideanGeometry 
abbrev E := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
def HypAnglePRQ (P R Q : E) : Prop := EuclideanGeometry.angle P R Q = degToRad 115
def HypAngleNRP (N R P : E) : Prop := EuclideanGeometry.angle N R P = Real.pi / 2
def HypAnglePRM (P R M : E) : Prop := EuclideanGeometry.angle P R M = Real.pi
def ConclAngleQRM (Q R M : E) : Prop := EuclideanGeometry.angle Q R M = degToRad 65
theorem find_arc_RMQ
    (P Q M N R : E)
    (radius : ℝ)
    (hradius_pos : 0 < radius)
    (hP_on_circle : P ∈ Metric.sphere R radius)
    (hQ_on_circle : Q ∈ Metric.sphere R radius)
    (hM_on_circle : M ∈ Metric.sphere R radius)
    (hN_on_circle : N ∈ Metric.sphere R radius)
    (h_angle_PRQ_eq_115_deg : HypAnglePRQ P R Q)
    (h_angle_NRP_is_right : HypAngleNRP N R P)
    (h_PRM_is_straight_angle : HypAnglePRM P R M)
    (h_Q_not_on_line_PRM : ¬ Collinear ℝ ({P, R, Q} : Set E))
    : ConclAngleQRM Q R M := by
  sorry
