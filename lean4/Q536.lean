import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic

open Real

-- Define a local notation for EuclideanPlane over ℝ
local notation "𝙀²" => EuclideanPlane ℝ

namespace ProblemGeo

-- Points in the Euclidean plane
variable (C D E F : 𝙀²)
-- Variables for angle measures
variable (x y : ℝ)

-- Conversion from degrees to radians
noncomputable def degree : ℝ := π / 180

-- Axioms for distinct points
axiom h_C_ne_F : C ≠ F
axiom h_D_ne_F : D ≠ F
axiom h_D_ne_E : D ≠ E
axiom h_C_ne_E : C ≠ E

-- Axioms for non-collinear points (angles are well-defined)
axiom h_collinear_CFD : ¬ Collinear ℝ ({C, F, D} : Set 𝙀²)
axiom h_collinear_DEC : ¬ Collinear ℝ ({D, E, C} : Set 𝙀²)
axiom h_collinear_ECF : ¬ Collinear ℝ ({E, C, F} : Set 𝙀²)
axiom h_collinear_FDE : ¬ Collinear ℝ ({F, D, E} : Set 𝙀²)

-- Angle measures in radians
axiom h_angle_CFD : unorientAngle C F D = (x + 36) * degree
axiom h_angle_DEC : unorientAngle D E C = (2 * y) * degree
axiom h_angle_ECF : unorientAngle E C F = 78 * degree
axiom h_angle_FDE : unorientAngle F D E = 110 * degree

-- Parallelism condition
axiom h_CE_parallel_FD : lineThrough C E ∥ lineThrough F D

-- Same side condition
axiom h_C_F_sameSide_DE : SameSide (lineThrough D E) C F

-- The theorem stating y = 35
theorem find_value_of_y : y = 35 := by sorry

end ProblemGeo