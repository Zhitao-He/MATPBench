import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.AffineSpace.Collinear

-- Use points in the real Euclidean plane
abbrev MyPoint := EuclideanSpace ℝ (Fin 2)

open EuclideanGeometry AffineSubspace

section PutnamGeometryOMOD

variable (A B C : MyPoint)
variable (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set MyPoint))

-- Helper lemma: noncollinear ⇒ A, B, C are pairwise distinct
lemma pts_distinct_of_noncollinear : A ≠ B ∧ A ≠ C ∧ B ≠ C := by
  -- If any two points are equal, the three are collinear
  by_contra h
  push_neg at h
  rcases h with (rfl | rfl | rfl)
  · exact h_noncollinear (collinear_pair _ _)
  · exact h_noncollinear (collinear_pair _ _)
  · exact h_noncollinear (collinear_pair _ _)

local notation "hAB_ne" => (pts_distinct_of_noncollinear A B C h_noncollinear).1
local notation "hAC_ne" => (pts_distinct_of_noncollinear A B C h_noncollinear).2.1
local notation "hBC_ne" => (pts_distinct_of_noncollinear A B C h_noncollinear).2.2

-- Foot of the altitude from A to BC
noncomputable def D_point : MyPoint := orthogonalProjection (line[ℝ, B, C] hBC_ne) A

-- Midpoint of BC
noncomputable def M_point : MyPoint := midpoint ℝ B C

-- Circumcenter of triangle ABC
noncomputable def O_point : MyPoint := circumcenter A B C h_noncollinear

-- Consider line through M meeting AB at E, AC at F, with AE = AF
variable (E F : MyPoint)
variable (hE_on_line_AB : E ∈ line[ℝ, A, B] hAB_ne)
variable (hF_on_line_AC : F ∈ line[ℝ, A, C] hAC_ne)
variable (hM_E_F_collinear : Collinear ℝ ({M_point A B C, E, F} : Set MyPoint))
variable (h_AE_eq_AF : dist A E = dist A F)

-- Main statement
theorem OM_eq_OD : dist (O_point A B C h_noncollinear) (M_point A B C) = 
                   dist (O_point A B C h_noncollinear) (D_point A B C h_noncollinear hBC_ne) := by
  sorry

end PutnamGeometryOMOD