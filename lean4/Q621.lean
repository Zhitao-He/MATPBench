import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
namespace CircleProblemSetup

abbrev P := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
open Real



theorem sin_angle_SRT_of_right_triangle
    (S R T : P)
    (hSR : dist S R = 5)
    (hTR : dist T R = 3)
    (hTS : dist T S = 4)
    (hRT_perp_ST : angle R T S = π / 2)
    : Real.sin (angle S R T) = 4 / 5 := by
  sorry
