import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional

namespace GeometryProblem

variable {P : Type*} [EuclideanSpace ℝ P]
variable [Fact (finrank ℝ P = 2)]

variable (A B C O D E F H G : P)
variable (R : ℝ)

-- Hypotheses
axiom h_noncollinear_ABC : ¬ Collinear ℝ A B C

axiom h_A_on_circumcircle : A ∈ Sphere O R
axiom h_B_on_circumcircle : B ∈ Sphere O R
axiom h_C_on_circumcircle : C ∈ Sphere O R
axiom h_R_pos : 0 < R

axiom h_A_ne_B : A ≠ B
axiom h_A_ne_C : A ≠ C
axiom h_A_ne_D : A ≠ D
axiom h_AD_bisects_BAC : ∠ B A D = ∠ C A D

axiom h_D_on_circumcircle : D ∈ Sphere O R

axiom h_O_ne_E : O ≠ E
axiom h_B_ne_D : B ≠ D
axiom h_OE_parallel_BD : AffineSubspace.Parallel (affineSpan ℝ {O, E}) (affineSpan ℝ {B, D})

axiom h_E_on_line_AB : Collinear ℝ A E B

axiom h_O_ne_F : O ≠ F
axiom h_C_ne_D : C ≠ D
axiom h_OF_parallel_CD : AffineSubspace.Parallel (affineSpan ℝ {O, F}) (affineSpan ℝ {C, D})

axiom h_F_on_line_AC : Collinear ℝ A F C

axiom h_H_is_orthocenter : IsOrthocenter H A B C

axiom h_H_ne_G : H ≠ G
axiom h_HG_parallel_AD : AffineSubspace.Parallel (affineSpan ℝ {H, G}) (affineSpan ℝ {A, D})

axiom h_G_on_line_BC : Collinear ℝ B G C

theorem prove_equal_lengths :
  dist B E = dist G E ∧
  dist G E = dist G F ∧
  dist G F = dist C F := by sorry

end GeometryProblem