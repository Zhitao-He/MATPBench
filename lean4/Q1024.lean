import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Data.Real.Basic

noncomputable section EuclideanProblem

open scoped EuclideanGeometry
open scoped RealInnerProductSpace
open InnerProductSpace (inner)
open Affine

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Given points A, B, C in the Euclidean plane (non-collinear)
variable (A B C : P)
variable (hABC : ¬Collinear ℝ ({A, B, C} : Set P))

-- The circumcenter O and orthocenter H of triangle ABC
def O : P := Triangle.circumcenter ℝ A B C
def H : P := Triangle.orthocenter ℝ A B C

-- D: Intersection of CH and AB
def lineCH : AffineSubspace ℝ P := affineSpan ℝ {C, H A B C}
def lineAB : AffineSubspace ℝ P := affineSpan ℝ {A, B}

def D : P := Classical.choose (exists_unique_point_of_affine_span_inter_affine_span
  (by simp [hABC, Triangle.collinear_iff]) -- CH not contained in AB
  (by simp [hABC, Triangle.collinear_iff]) -- AB not contained in CH
  (ne_of_mem_of_not_mem (Set.mem_insert C _) (by simp [Triangle.collinear_iff, hABC])) -- C ∉ AB
  (ne_of_mem_of_not_mem (Set.mem_insert A _) (by simp [Triangle.collinear_iff, hABC])) -- A ∉ CH
  (by sorry) -- lines are not parallel, so intersection is unique
)

-- E is a point on AC so that DE ⟂ OD
def lineAC : AffineSubspace ℝ P := affineSpan ℝ {A, C}

variable (E : P)
variable (hE_on_AC : E ∈ lineAC A B C)
variable (h_O_ne_D : O A B C ≠ D A B C)
variable (hDE_perp_OD : inner (E -ᵥ D A B C) (O A B C -ᵥ D A B C) = 0)

variable (h_E_ne_H : E ≠ H A B C)
variable (h_D_ne_H : D A B C ≠ H A B C)

theorem angle_EHD_eq_angle_A :
    Angle.Unoriented.angle (E -ᵥ H A B C) (D A B C -ᵥ H A B C) =
    Angle.Unoriented.angle (B -ᵥ A) (C -ᵥ A) := by
  sorry

end EuclideanProblem