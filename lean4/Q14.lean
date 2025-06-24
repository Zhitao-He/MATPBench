import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
open scoped Affine
open EuclideanGeometry Real
open AffineSubspace
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)
variable (A B C H G : EuclideanPlane)
variable (lineFG lineDE : AffineSubspace ℝ EuclideanPlane)
structure ProblemSetup (A B C H G : EuclideanPlane) (lineFG lineDE : AffineSubspace ℝ EuclideanPlane) where
  hne_A_B : A ≠ B
  hne_A_C : A ≠ C
  hne_B_C : B ≠ C
  hne_A_G : A ≠ G
  hne_C_H : C ≠ H
  hne_B_H : B ≠ H
  h_angle_ACB_right : angle A C B = π / 2
  h_angle_CAB_60 : angle C A B = π / 3
  h_A_on_lineFG : A ∈ lineFG
  h_C_on_lineDE : C ∈ lineDE
  h_lines_parallel : lineFG ∥ lineDE
  h_G_on_lineFG : G ∈ lineFG
  h_not_collinear_CAG : ¬ Collinear ℝ ({C, A, G} : Set EuclideanPlane)
  h_CAB_eq_BAG : angle C A B = angle B A G
  h_angle_CAG_sum : angle C A G = angle C A B + angle B A G
  h_H_on_line_AB : H ∈ affineSpan ℝ ({A, B} : Set EuclideanPlane)
  h_H_on_lineDE : H ∈ lineDE
  h_not_collinear_BCH : ¬ Collinear ℝ ({B, C, H} : Set EuclideanPlane)
def targetProposition (A B C H G : EuclideanPlane) (lineFG lineDE : AffineSubspace ℝ EuclideanPlane)
  (_setup : ProblemSetup A B C H G lineFG lineDE) : Prop :=
  angle B C H = π / 6
axiom geometry_problem (A B C H G : EuclideanPlane) (lineFG lineDE : AffineSubspace ℝ EuclideanPlane)
  (setup : ProblemSetup A B C H G lineFG lineDE) :
  targetProposition A B C H G lineFG lineDE setup
