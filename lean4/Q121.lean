import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Parallelogram
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.NormedSpace.AddTorsor
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Squarefree
import Mathlib.Data.PNat.Basic

-- Universe and ambient Euclidean plane
universe u
variable {P : Type u} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]
variable [FiniteDimensional ℝ P] [Fact (FiniteDimensional.finrank ℝ P = 2)]

namespace Putnam2021A5

-- Points A, B, C, D (vertices of parallelogram), O (center), P Q (intersection points)
variable (a b c d o : P)
variable (Ω : ℝ)

-- Parallelogram condition (from mathlib4)
variable (h_parallelogram : EuclideanGeometry.IsParallelogram a b c d)

-- ∠BAD is acute and nonzero
variable (h_angle_BAD_acute : (∠ d a b) < Real.pi / 2 ∧ (∠ d a b) > 0)

-- The circle Ω with center o and radius Ω is tangent to lines DA, AB, BC
def circle : EuclideanGeometry.Sphere P ℝ := { center := o, radius := Ω }

-- radius Ω is positive
variable (h_Ω_pos : Ω > 0)

-- Tangency to the lines
variable (h_tan_DA : AffineSubspace.dist_pt_affineSubspace o (affineLine ℝ d a) = Ω)
variable (h_tan_AB : AffineSubspace.dist_pt_affineSubspace o (affineLine ℝ a b) = Ω)
variable (h_tan_BC : AffineSubspace.dist_pt_affineSubspace o (affineLine ℝ b c) = Ω)

-- Projections are on the corresponding segments
def T_DA : P := orthogonalProjection (affineLine ℝ d a) o
def T_AB : P := orthogonalProjection (affineLine ℝ a b) o
def T_BC : P := orthogonalProjection (affineLine ℝ b c) o

variable (h_T_DA_on : T_DA a o ∈ segment ℝ d a)
variable (h_T_AB_on : T_AB a b o ∈ segment ℝ a b)
variable (h_T_BC_on : T_BC b c o ∈ segment ℝ b c)

-- Two points P, Q on the circle lying on diagonal AC, ordered A-P-Q-C with the following distances
variable (p q : P)
variable (h_p_on_circle : p ∈ circle o Ω)
variable (h_q_on_circle : q ∈ circle o Ω)
variable (h_p_on_AC : p ∈ segment ℝ a c)
variable (h_q_on_AC : q ∈ segment ℝ a c)
variable (h_dist_AP : dist a p = 3)
variable (h_dist_PQ : dist p q = 9)
variable (h_dist_QC : dist q c = 16)

-- Strict order A-P-Q-C along AC
variable (h_sbtw_aPQ : Sbtw ℝ a p q)
variable (h_sbtw_PQc : Sbtw ℝ p q c)

-- Area of parallelogram, for acute ∠BAD
def areaABCD : ℝ := (dist a b) * (dist a d) * Real.sin (∠ d a b)

-- Existence of positive m n (n squarefree), area = m√n, m+n=150
theorem putnam_2021_a5_solution :
  ∃ (m n : PNat),
    Nat.Squarefree n.val ∧
    areaABCD a b c d h_angle_BAD_acute = (m : ℝ) * Real.sqrt (n : ℝ) ∧
    m + n = 150 :=
by
  sorry

end Putnam2021A5