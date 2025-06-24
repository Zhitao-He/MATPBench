import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Calculus.Deriv.Basic
namespace PiecewiseLinearFunction
def dataPoints : List (ℝ × ℝ) :=
  [(1991, 27), (1993, 30.5), (1997, 34.5), (1999, 36.5),
   (2001, 34.5), (2003, 27.5), (2005, 23.5)]
noncomputable def linearInterp (x x₀ x₁ y₀ y₁ : ℝ) : ℝ :=
  y₀ + (y₁ - y₀) / (x₁ - x₀) * (x - x₀)
noncomputable def f (x : ℝ) : ℝ :=
  match dataPoints with
  | [] => 0
  | p₀ :: ps =>
    if x ≤ p₀.1 then 
      p₀.2
    else
      let rec findSegment (x : ℝ) (last : ℝ × ℝ) (remaining : List (ℝ × ℝ)) : ℝ :=
        match remaining with
        | [] => last.2
        | next :: tail =>
          if x ≤ next.1 then
            linearInterp x last.1 next.1 last.2 next.2
          else
            findSegment x next tail
      findSegment x p₀ ps
theorem notEverywhereDifferentiable :
    ∃ x, ¬ DifferentiableAt ℝ f x := by sorry
theorem notDifferentiableAt1993 :
    ¬ DifferentiableAt ℝ f 1993 := by sorry
end PiecewiseLinearFunction