import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
Formalization of a geometry problem:

Given four points A, B, C, D in a 2D Euclidean space,
- A, B, C are non-collinear (form a triangle).
- Triangle BDC is isosceles: dist D B = dist D C.
- Triangle ACD is isosceles: dist A C = dist A D.
- The (unoriented) angle ∠ABC = 70 degrees.
Prove that the (unoriented) angle ∠BAC = 35 degrees (angles are in radians).
-/

namespace EuclideanGeometryProblem

-- Let P be a 2-dimensional Euclidean space.
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P]
variable [FiniteDimensional ℝ P] (dim_eq_two : FiniteDimensional.finrank ℝ P = 2)

-- Points in the plane
variable (A B C D : P)

-- A, B, C are non-collinear
variable (h_ABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P))

-- Triangle BDC is isosceles: DB = DC
variable (h_isos_BDC : dist D B = dist D C)

-- Triangle ACD is isosceles: AC = AD
variable (h_isos_ACD : dist A C = dist A D)

-- Unoriented angle at B: ∡ A B C = 70 degrees (in radians)
variable (h_angle_ABC : ∡ A B C = (70 / 180 : ℝ) * Real.pi)

-- Goal: ∡ B A C = 35 degrees (in radians)
theorem angle_BAC_is_35_degrees :
    ∡ B A C = (35 / 180 : ℝ) * Real.pi := by
  sorry

end EuclideanGeometryProblem