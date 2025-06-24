import Mathlib.Data.Real.Basic
import Mathlib.Topology.MetricSpace.Basic
open Classical
noncomputable section
def dirichletFunction (x : ℝ) : ℝ :=
  if _ : ∃ (r : ℚ), x = r then 1 else 0
def IsNowhereContinuous (f : ℝ → ℝ) : Prop :=
  ∀ (x₀ : ℝ), ¬ ContinuousAt f x₀
theorem dirichlet_function_is_nowhere_continuous :
  IsNowhereContinuous dirichletFunction := by sorry
