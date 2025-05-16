import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

open EuclideanGeometry
open scoped Real

-- We work over a real Euclidean affine plane
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]

namespace PutnamGeometryProblem

-- Declare points
variable (A B C E F M K S T : P)

-- Define triangle ABC. Lean4 Triangle uses mk
def triangleABC : Triangle ℝ P := Triangle.mk A B C

-- Hypotheses for the problem

-- ABC is a non-degenerate acute triangle
variable (h_tri : triangleABC.Noncollinear)
variable (h_acute : triangleABC.IsAcute)

-- E ∈ segment AC, F ∈ segment AB (and not at endpoints)
variable (hE_on_AC : E ∈ segment ℝ A C) (hF_on_AB : F ∈ segment ℝ A B)
variable (hE_ne_A : E ≠ A) (hE_ne_C : E ≠ C) (hF_ne_A : F ≠ A) (hF_ne_B : F ≠ B)
variable (hE_ne_F : E ≠ F)

-- M is the midpoint of EF
variable (hM_mid : M = midpoint ℝ E F)

-- K lies on the perpendicular bisector of EF and the (affine) line BC
variable (hK_on_perp : K ∈ perpBisector E F)
variable (hK_on_lineBC : K ∈ affineSpan ℝ ({B, C} : Set P))

-- M ≠ K
variable (hM_ne_K : M ≠ K)

-- The perpendicular bisector of MK meets AC at S and AB at T
variable (hS_on_perp : S ∈ perpBisector M K)
variable (hS_on_AC : S ∈ affineSpan ℝ ({A, C} : Set P))
variable (hT_on_perp : T ∈ perpBisector M K)
variable (hT_on_AB : T ∈ affineSpan ℝ ({A, B} : Set P))

-- K,S,A,T are concyclic
variable (hKSAT_concyclic : Concyclic K S A T)

-- Target: ∠EKF = ∠FKE = ∠BAC
theorem target_angles_equality :
    (EuclideanGeometry.angle E K F = EuclideanGeometry.angle F K E)
  ∧ (EuclideanGeometry.angle E K F = EuclideanGeometry.angle B A C) := by
  sorry

end PutnamGeometryProblem