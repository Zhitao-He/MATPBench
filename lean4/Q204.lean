import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open Real EuclideanSpace
open scoped EuclideanGeometry
local notation "P" => EuclideanSpace ℝ (Fin 2)
structure FigureSetup where
  O : P
  A : P
  B : P
  h_OA_len : dist A O = 1
  h_OB_len : dist B O = 1
  h_angle_AOB : ∠ A O B = Real.pi / 2
noncomputable def areaSemicircleOnDiameter (p1 p2 : P) : ℝ :=
  let d := dist p1 p2
  (Real.pi * (d / 2)^2) / 2
noncomputable def areaSectorFromPoints (center_pt p1 p2 : P) : ℝ :=
  let r := dist p1 center_pt
  let angle_val := ∠ p1 center_pt p2
  (angle_val / 2) * r^2
noncomputable def triangleArea (p1 p2 p3 : P) : ℝ :=
  (1/2 : ℝ) * abs (((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0))
noncomputable def calculateShadedArea (s : FigureSetup) : ℝ :=
  let area_semicircle_OA := areaSemicircleOnDiameter s.O s.A
  let area_semicircle_OB := areaSemicircleOnDiameter s.O s.B
  let area_sector_OAB := areaSectorFromPoints s.O s.A s.B
  let area_triangle_OAB := triangleArea s.O s.A s.B
  area_semicircle_OA + area_semicircle_OB - (area_sector_OAB - area_triangle_OAB)
theorem shaded_area_is_one_half (s : FigureSetup) :
  calculateShadedArea s = 1/2 :=
by sorry
