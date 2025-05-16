import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

noncomputable section

open Real EuclideanGeometry

variables {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variables {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- A parallelogram: its diagonals bisect each other
def IsParallelogram (A B C D : P) : Prop :=
  midpoint ℝ A C = midpoint ℝ B D

-- A rhombus: parallelogram with all sides equal, and nondegenerate.
def IsRhombus (A B C D : P) : Prop :=
  IsParallelogram A B C D ∧
  dist A B = dist B C ∧
  dist B C = dist C D ∧
  dist C D = dist D A ∧
  dist A B > 0 ∧
  ¬ Collinear ℝ A B C

variables (A B C D E : P) (x : ℝ)
-- Hypotheses per the problem statement
variable (h_rhombus : IsRhombus A B C D)
variable (h_AB : dist A B = 2 * x + 3)
variable (h_BC : dist B C = 5 * x)
variable (h_E : E = midpoint ℝ A C)

-- Theorem: ∠AEB = 90° or π / 2 radians.
theorem rhombus_angle_AEB_90 :
    angle A E B = π / 2 :=
  by
  sorry

end