import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Reflection
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional

open EuclideanGeometry AffineSubspace

namespace QuadrilateralReflectionPerpendicular

-- Let Point be points of the Euclidean plane (ℝ², with dim = 2)
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Given points A, B, C, D
variables (A B C D : Point)

-- Hypotheses: B ≠ D (BD is a diameter)
variable (hB_ne_D : B ≠ D)

-- A ≠ C (to define line AC)
variable (hA_ne_C : A ≠ C)

-- The center O is the midpoint of BD
def O : Point := midpoint ℝ B D

-- The circle k has center O and radius OB
def k : Sphere Point := ⟨O A B C D hB_ne_D hA_ne_C, dist (O A B C D hB_ne_D hA_ne_C) B⟩

-- Hypotheses: A and C on k
variable (hA_on_k : A ∈ k A B C D hB_ne_D hA_ne_C)
variable (hC_on_k : C ∈ k A B C D hB_ne_D hA_ne_C)

-- Lines BD and AC
def line_BD := lineThrough B D
def line_AC := lineThrough A C

-- Reflection of A over BD: A'
def A' : Point := reflection (line_BD A B C D) A

-- Reflection of B over AC: B'
def B' : Point := reflection (line_AC A B C D hA_ne_C) B

-- Distinctness for further lines
variable (hD_ne_B' : D ≠ B' A B C D hA_ne_C)
variable (hC_ne_A' : C ≠ A' A B C D)

-- Lines through D, B' and through C, A'
def line_DB' := lineThrough D (B' A B C D hA_ne_C)
def line_CA' := lineThrough C (A' A B C D)

-- Intersection lines are not parallel
variable (hAC_not_parallel_DB' : ¬ (line_AC A B C D hA_ne_C ∥ line_DB' A B C D hA_ne_C))
variable (hBD_not_parallel_CA' : ¬ (line_BD A B C D ∥ line_CA' A B C D))

-- P: intersection of line_BD and line_CA'
def P : Point :=
  intersectionLine (line_BD A B C D) (line_CA' A B C D) (FiniteDimensional.finrank_euclideanSpace_fin_two) 
    (hBD_not_parallel_CA' A B C D)

-- Q: intersection of line_AC and line_DB'
def Q : Point :=
  intersectionLine (line_AC A B C D hA_ne_C) (line_DB' A B C D hA_ne_C) 
    (FiniteDimensional.finrank_euclideanSpace_fin_two) (hAC_not_parallel_DB' A B C D hA_ne_C)

variable (hP_ne_Q : P A B C D hBD_not_parallel_CA' ≠ Q A B C D hA_ne_C hAC_not_parallel_DB')

-- The line PQ
def line_PQ := lineThrough (P A B C D hBD_not_parallel_CA') (Q A B C D hA_ne_C hAC_not_parallel_DB')

-- Theorem: PQ ⟂ AC
theorem quadrilateral_reflection_perpendicular :
    line_PQ A B C D hBD_not_parallel_CA' hA_ne_C hAC_not_parallel_DB' hP_ne_Q ⟂ line_AC A B C D hA_ne_C :=
  by sorry

end QuadrilateralReflectionPerpendicular