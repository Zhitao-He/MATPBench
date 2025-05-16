import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle

open Real

-- Lean4 context: P is a Euclidean affine space over ℝ.
variable {P : Type*} [EuclideanSpace ℝ P]

-- Points A, B, D, E, C in the plane
variable (A B D E C : P)

-- Degrees to radians conversion
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)

theorem geometry_angle_DAE_eq_40_deg
  (h_collinear : Affine.collinear ℝ {B, D, E, C})
  (h_congr : (Triangle.mk A B D).Congruent (Triangle.mk A C E))
  (h_angle_AEC : (Euclidean.angle A E C).value = degToRad 110)
  (h_tri_ABD : ¬ Affine.collinear ℝ {A, B, D})
  (h_tri_ACE : ¬ Affine.collinear ℝ {A, C, E})
  :
  (Euclidean.angle D A E).value = degToRad 40 := 
by sorry