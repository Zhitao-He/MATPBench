import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic

open Metric
open Affine
open EuclideanGeometry
open InnerProductSpace

namespace CircumcircleGeometry

-- Let V be a 2-dimensional real inner product space, 
-- and P its associated affine space (the Euclidean plane).
variable {V : Type*}
variable [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable (hV : FiniteDimensional.finrank ℝ V = 2)
variable {P : Type*}
variable [MetricSpace P] [NormedAddTorsor V P]

-- Declare the base points.
variable (a b c d o e f g : P)

-- The points a, b, c are not collinear (triangle).
variable (h_abc : ¬ Affine.collinear ℝ ({a, b, c} : Set P))

-- O is the circumcenter of triangle ABC.
variable (h_o : o = EuclideanGeometry.Triangle.circumcenter ℝ a b c)

-- BC is a diameter of the circumcircle: O is the midpoint of B and C.
variable (h_bc_diameter : o = midpoint ℝ b c)

-- d is on the circumcircle (distance to o equals that of a).
variable (h_d_circ : dist o d = dist o a)

-- D does *not* lie on line BC
variable (h_d_not_on_bc : ¬ Affine.collinear ℝ ({b, c, d} : Set P))

-- a and d are on opposite sides of line BC
variable (h_a_d_opposite_wrt_bc : ¬ Affine.sameSide ℝ (Affine.Line.mk b c) a d)

-- a ≠ d
variable (h_a_ne_d : a ≠ d)

-- Definition: E lies on BC and DE ⟂ BC.
variable (h_e_on_bc : Affine.collinear ℝ ({b, c, e} : Set P))
variable (h_de_perp_bc : Orthogonal (d -ᵥ e) (c -ᵥ b))

-- Definition: F lies on BA and DF ⟂ BA.
variable (h_f_on_ba : Affine.collinear ℝ ({b, a, f} : Set P))
variable (h_df_perp_ba : Orthogonal (d -ᵥ f) (a -ᵥ b))

-- E ≠ F (so line EF is well-defined)
variable (h_e_ne_f : e ≠ f)

-- G lies on both EF and AD (intersection point).
variable (h_g_on_ad : Affine.collinear ℝ ({a, d, g} : Set P))
variable (h_g_on_ef : Affine.collinear ℝ ({e, f, g} : Set P))

-- Uniqueness: g is the only such intersection point.
variable (h_g_unique : ∀ x : P, Affine.collinear ℝ ({a, d, x} : Set P) ∧ Affine.collinear ℝ ({e, f, x} : Set P) → x = g)

-- CONCLUSION: G is the midpoint of AD
theorem g_is_midpoint_of_ad : g = midpoint ℝ a d := by
  sorry

end CircumcircleGeometry