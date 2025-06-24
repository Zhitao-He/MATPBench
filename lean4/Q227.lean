import Mathlib.Data.Real.Basic
namespace EllipseProblem
def ellipseCenterX : ℝ := -2
def ellipseCenterY : ℝ := 2
def ellipseSemiAxisSqX : ℝ := 4    
def ellipseSemiAxisSqY : ℝ := 9    
def isPointOnEllipse (x y : ℝ) : Prop :=
  ((x - ellipseCenterX) ^ 2) / ellipseSemiAxisSqX + ((y - ellipseCenterY) ^ 2) / ellipseSemiAxisSqY = 1
theorem ellipseEquationMatchesGivenForm (x y : ℝ) :
    isPointOnEllipse x y ↔ ((x + 2) ^ 2 / 4 + (y - 2) ^ 2 / 9 = 1) :=
  by
    sorry
end EllipseProblem