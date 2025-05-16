import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Defs

open Real EuclideanGeometry Angle

-- Let P be a Euclidean Plane type.
variable {P : Type*} [EuclideanPlane P]

-- Given points in the plane.
variable (F G H J K : P)

-- K is the intersection of diagonals FH and GJ.
axiom hK_midpoint_FH : K = midpoint ℝ F H
axiom hK_midpoint_GJ : K = midpoint ℝ G J

-- All four sides of rhombus GFJH are equal in length.
axiom h_side_GF_eq_FJ : dist G F = dist F J
axiom h_side_FJ_eq_JH : dist F J = dist J H
axiom h_side_JH_eq_HG : dist J H = dist H G

-- Diagonals are non-degenerate.
axiom h_diag_FH_ne : F ≠ H
axiom h_diag_GJ_ne : G ≠ J

-- Additional distinctness needed for angles.
axiom hK_ne_J : K ≠ J
axiom hK_ne_H : K ≠ H
axiom hJ_ne_F : J ≠ F
axiom hJ_ne_H : J ≠ H
axiom hH_ne_J : H ≠ J

-- Property 1: Diagonals are perpendicular.
axiom h_angle_JKH_right : (∠ J K H hK_ne_J hK_ne_H).value = π / 2

-- Given: Measure of ∠FJH is 82 degrees.
axiom h_angle_FJH_82 : (∠ F J H hJ_ne_F hJ_ne_H).value = (82 / 180) * π

-- Define: The measure of ∠JHK.
def angle_JHK_value : ℝ := (∠ J H K hH_ne_J hK_ne_H).value

-- Theorem: The required value is 49 degrees.
theorem target_angle_JHK_is_49_degrees :
  angle_JHK_value F G H J K = (49 / 180) * π := by sorry