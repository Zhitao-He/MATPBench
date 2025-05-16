import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic

namespace EuclideanGeometryProblem

open scoped Real
open EuclideanGeometry

-- Let P be a Euclidean plane (torsor model).
variable {P : Type*} [EuclideanPlane ℝ P]

-- Given triangle ABC with AB > AC and not collinear.
variables (A B C : P)
variable (h_nondeg : ¬ Collinear ℝ ({A, B, C} : Set P))
variable (h_AB_gt_AC : dist A B > dist A C)

-- D: Foot of perp from B to AC (A ≠ C follows from nondegeneracy)
noncomputable def D : P :=
  orthogonalProjection (affineSpan ℝ ({A, C} : Set P)) B

-- E: Foot of perp from C to AB (A ≠ B follows from nondegeneracy)
noncomputable def E : P :=
  orthogonalProjection (affineSpan ℝ ({A, B} : Set P)) C

-- F: Midpoint of BC (B ≠ C from nondegeneracy)
noncomputable def F : P :=
  midpoint ℝ B C

-- G: On line DE, with AG ⟂ AF at A, G ≠ A
variable (G : P)
variable (hF_ne_A : F ≠ A)
variable (hD_ne_E : D ≠ E)
variable (hG_on_DE : G ∈ affineSpan ℝ ({D, E} : Set P))
variable (hG_ne_A : G ≠ A)
variable (h_perp : ∃ (l : ℝ), G = lineMap A (F -ᵥ A).perp l) -- perp vector at A to AF

-- Theorem: AF bisects angle GFC (angles at F: ∠GFA = ∠AFC, absolute value)
theorem af_bisects_angle_gfc :
  (EuclideanGeometry.angle G F A).abs = (EuclideanGeometry.angle A F C).abs := by
  sorry

end EuclideanGeometryProblem