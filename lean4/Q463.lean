import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
@[nolint unusedArguments]
noncomputable def s₁ (_p₁ _p₂ : P) : ℝ := dist _p₁ _p₂ 
@[nolint unusedArguments]
noncomputable def s₂ (_p₂ _p₃ : P) : ℝ := dist _p₂ _p₃
@[nolint unusedArguments]
noncomputable def s₃ (_p₃ _p₄ : P) : ℝ := dist _p₃ _p₄
@[nolint unusedArguments]
noncomputable def s₄ (_p₄ _p₅ : P) : ℝ := dist _p₄ _p₅
@[nolint unusedArguments]
noncomputable def s₅ (_p₅ _p₆ : P) : ℝ := dist _p₅ _p₆
@[nolint unusedArguments]
noncomputable def s₆ (_p₆ _p₁ : P) : ℝ := dist _p₆ _p₁
def hexagonIsFormedByTwoEquilateralTriangles_prop (P₁ P₂ P₃ P₄ P₅ P₆ : P) : Prop := sorry 
def oppositeSidesParallel_prop (P₁ P₂ P₃ P₄ P₅ P₆ : P) : Prop := sorry 
def alternateSideSumsEqual_prop (P₁ P₂ P₃ P₄ P₅ P₆ : P) : Prop :=
  dist P₁ P₂ + dist P₃ P₄ + dist P₅ P₆ = dist P₂ P₃ + dist P₄ P₅ + dist P₆ P₁ 
theorem hexagon_perimeter_problem
  (P₁ P₂ P₃ P₄ P₅ P₆ : P) 
  (H1 : hexagonIsFormedByTwoEquilateralTriangles_prop P₁ P₂ P₃ P₄ P₅ P₆)
  (H2 : oppositeSidesParallel_prop P₁ P₂ P₃ P₄ P₅ P₆)
  (h₁ : dist P₁ P₂ = 6)
  (h₂ : dist P₂ P₃ = 15)
  (h₄ : dist P₄ P₅ = 11)
  (h₅ : dist P₅ P₆ = 12)
  (H3 : alternateSideSumsEqual_prop P₁ P₂ P₃ P₄ P₅ P₆) :
  dist P₁ P₂ + dist P₂ P₃ + dist P₃ P₄ + dist P₄ P₅ + dist P₅ P₆ + dist P₆ P₁ = 70 :=
by sorry
