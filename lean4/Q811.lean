import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

namespace KiteProblem

-- Define the Euclidean plane over ℝ
abbrev P := EuclideanPlane ℝ

-- Declare all points
variable {F B O D E : P}

-- Given lengths
axiom h_dist_BD : dist B D = 7
axiom h_dist_FE : dist F E = 6
axiom h_dist_EO : dist E O = 9

-- E is between F and O on FO
axiom h_E_between_FO : Wbtw ℝ F E O
-- E is between B and D on BD
axiom h_E_between_BD : Wbtw ℝ B E D

-- Definition: Kite with F, B, O, D in order, with pairs of adjacent equal sides
structure IsKite (F B O D : P) : Prop where
  fb_eq_fd : dist F B = dist F D
  ob_eq_od : dist O B = dist O D

-- Hypothesis: FBOD is a kite
axiom h_FBOD_is_kite : IsKite F B O D

-- Standard area of a convex quadrilateral with perpendicular diagonals
noncomputable def area_quad_perp_diags (d₁ d₂ : ℝ) : ℝ :=
  (1 / 2) * d₁ * d₂

-- Theorem: The area of kite FBOD is 105/2
theorem area_FBOD :
    area_quad_perp_diags (dist F O) (dist B D) = 105 / 2 := by sorry

end KiteProblem