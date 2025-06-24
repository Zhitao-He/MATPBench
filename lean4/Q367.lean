import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.NormedSpace.Real 
open Real Affine AffineSubspace 
open scoped EuclideanGeometry 
open InnerProductSpace 
abbrev P := EuclideanSpace ℝ (Fin 2)
structure IsRegularOctagon (A B C D E F G H : P) (side : ℝ) : Prop where
  side_pos : side > 0
  h_AB : dist A B = side
  h_BC : dist B C = side
  h_CD : dist C D = side
  h_DE : dist D E = side
  h_EF : dist E F = side
  h_FG : dist F G = side
  h_GH : dist G H = side
  h_HA : dist H A = side
  h_angle_ABC : inner ℝ (A -ᵥ B) (C -ᵥ B) = side * side * (-Real.sqrt 2 / (2 : ℝ))
  h_angle_BCD : inner ℝ (B -ᵥ C) (D -ᵥ C) = side * side * (-Real.sqrt 2 / (2 : ℝ))
  h_angle_CDE : inner ℝ (C -ᵥ D) (E -ᵥ D) = side * side * (-Real.sqrt 2 / (2 : ℝ))
  h_angle_DEF : inner ℝ (D -ᵥ E) (F -ᵥ E) = side * side * (-Real.sqrt 2 / (2 : ℝ))
  h_angle_EFG : inner ℝ (E -ᵥ F) (G -ᵥ F) = side * side * (-Real.sqrt 2 / (2 : ℝ))
  h_angle_FGH : inner ℝ (F -ᵥ G) (H -ᵥ G) = side * side * (-Real.sqrt 2 / (2 : ℝ))
  h_angle_GHA : inner ℝ (G -ᵥ H) (A -ᵥ H) = side * side * (-Real.sqrt 2 / (2 : ℝ))
  h_angle_HAB : inner ℝ (H -ᵥ A) (B -ᵥ A) = side * side * (-Real.sqrt 2 / (2 : ℝ))
noncomputable def octagonSideLength : ℝ := 12
noncomputable def expectedLengthBE : ℝ := octagonSideLength * (1 + Real.sqrt 2)
lemma actualLengthBE_eq_expected (A B C D E F G H : P)
    (hOct : IsRegularOctagon A B C D E F G H octagonSideLength) :
  dist B E = expectedLengthBE := by sorry
lemma sideCD_parallel_diagBE (A B C D E F G H : P)
    (hOct : IsRegularOctagon A B C D E F G H octagonSideLength) :
  line[ℝ, C, D] ∥ line[ℝ, B, E] := by sorry
noncomputable def expectedHeightBCDE : ℝ := octagonSideLength * (Real.sqrt 2 / 2)
lemma actualHeightBCDE_eq_expected (A B C D E F G H : P)
    (hOct : IsRegularOctagon A B C D E F G H octagonSideLength)
    (_hParallel : line[ℝ, C, D] ∥ line[ℝ, B, E]) :
  dist C (sorry : P) = expectedHeightBCDE := by sorry 
noncomputable def trapezoidArea (base1 base2 height : ℝ) : ℝ :=
  (1 / (2 : ℝ)) * (base1 + base2) * height
noncomputable def areaTrapezoidBCDE (A B C D E F G H : P) (hOct : IsRegularOctagon A B C D E F G H octagonSideLength) : ℝ :=
  trapezoidArea octagonSideLength (dist B E) (dist C (sorry : P)) 
theorem areaBCDE_equals_targetValue (A B C D E F G H : P) (hOct : IsRegularOctagon A B C D E F G H octagonSideLength) :
  areaTrapezoidBCDE A B C D E F G H hOct = 72 + 72 * Real.sqrt 2 :=
by
  sorry 
