import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * Real.pi / 180
abbrev P := EuclideanSpace ℝ (Fin 2)
axiom h_r_A_pos (A : P) (r_A : ℝ) : 0 < r_A
axiom h_R_on_circle (A R : P) (r_A : ℝ) : R ∈ Metric.sphere A r_A
axiom h_S_on_circle (A S : P) (r_A : ℝ) : S ∈ Metric.sphere A r_A
axiom h_B_on_circle (A B : P) (r_A : ℝ) : B ∈ Metric.sphere A r_A
axiom h_S_between_R_T (S R T : P) : Sbtw ℝ S R T
axiom h_A_between_B_T (A B T : P) : Sbtw ℝ A B T
axiom h_angle_RAS (R A S : P) : ∠ R A S = degreesToRadians (74 : ℝ)
axiom h_angle_RTB (R T B : P) : ∠ R T B = degreesToRadians (28 : ℝ)
axiom h_arc_BR (B A R : P) : ∠ B A R = degreesToRadians (81 : ℝ)
