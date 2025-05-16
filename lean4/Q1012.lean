import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

open EuclideanGeometry

section GeometryConfig

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P]
variable [MetricSpace P] [FiniteDimensional ℝ P]
variable (fin_dim : FiniteDimensional.finrank ℝ P = 2)

-- Points in the plane
variable (A B C O H E F K G D : P)

-- Radii
variable (rO rP : ℝ)

-- Hypotheses

-- 1. Triangle ABC is inscribed in circle O
variable (hA_on_O : A ∈ Sphere O rO)
variable (hB_on_O : B ∈ Sphere O rO)
variable (hC_on_O : C ∈ Sphere O rO)
variable (hrO_pos : 0 < rO)

-- 2. AC = BC (isosceles at C), ABC are non-collinear
variable (h_AC_eq_BC : dist A C = dist B C)
variable (hABC_nd : ¬ AffineSubspace.collinear ℝ ({A,B,C} : Set P))

-- 3. The angle bisector CH of ∠ACB intersects O at H
variable (hH_on_O : H ∈ Sphere O rO)
variable (hCOH_collinear : AffineSubspace.collinear ℝ ({C, O, H} : Set P))
variable (hC_ne_H : C ≠ H)
variable (hC_ne_O : C ≠ O)

-- 4. E ∈ A–C, F ∈ B–C (segments)
variable (hE_on_AC : E ∈ segment ℝ A C)
variable (hF_on_BC : F ∈ segment ℝ B C)

-- 5. EF ∥ AB
variable (hEF_parallel_AB : line[ℝ, E, F] ∥ line[ℝ, A, B])

-- 6. K ∈ EF ∩ CH
variable (hK_on_EF : K ∈ line[ℝ, E, F])
variable (hK_on_CH : K ∈ line[ℝ, C, H])

-- 7. Circumcircle of triangle EFH, say P, center Pₚ, radius rP
variable (hEFH_nd : ¬ AffineSubspace.collinear ℝ ({E, F, H} : Set P))
variable (hE_on_P : E ∈ Sphere Pₚ rP)
variable (hF_on_P : F ∈ Sphere Pₚ rP)
variable (hH_on_P : H ∈ Sphere Pₚ rP)
variable (hrP_pos : 0 < rP)

-- 8. Circumcircle P meets circle O again at G ≠ H; G ∈ O ∩ P
variable (hG_on_P : G ∈ Sphere Pₚ rP)
variable (hG_on_O : G ∈ Sphere O rO)
variable (hG_ne_H : G ≠ H)

-- 9. Line GK meets O again at D ≠ G
variable (hGKD_collinear : AffineSubspace.collinear ℝ ({G, K, D} : Set P))
variable (hD_on_O : D ∈ Sphere O rO)
variable (hD_ne_G : D ≠ G)
variable (hG_ne_K : G ≠ K)

-- Main Theorem
theorem CD_parallel_AB : line[ℝ, C, D] ∥ line[ℝ, A, B] := by
  sorry

end GeometryConfig