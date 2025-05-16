import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.AffineSpace.Independent

open Real EuclideanGeometry AffineSpace

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]
  [Module ℝ P] [FiniteDimensional ℝ P] (hdim : FiniteDimensional.finrank ℝ P = 2)

structure IsSquare (A B C D : P) : Prop where
  side_eq : dist A B = dist B C ∧ dist B C = dist C D ∧ dist C D = dist D A
  side_pos : dist A B > 0
  angles_right : angle D A B = π / 2 ∧ angle A B C = π / 2 ∧ 
                 angle B C D = π / 2 ∧ angle C D A = π / 2
  aff_indep : AffineIndependent ℝ ![A, B, C] ∧ AffineIndependent ℝ ![B, C, D] ∧
              AffineIndependent ℝ ![C, D, A] ∧ AffineIndependent ℝ ![D, A, B]

theorem angle_BAE_is_30_degrees
    {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]
    [Module ℝ P] [FiniteDimensional ℝ P] {hdim : FiniteDimensional.finrank ℝ P = 2}
    (A B C D E : P)
    (h_square : IsSquare A B C D)
    (h_equilateral : dist A E = dist E D ∧ dist A E = dist A D)
    (h_non_degenerate : AffineIndependent ℝ ![A, D, E])
    (h_angle_sum : angle D A E + angle E A B = angle D A B)
    : angle B A E = π / 6 := by sorry