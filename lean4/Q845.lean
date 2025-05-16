import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic




variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]
variable (P : Type*) [MetricSpace P] [NormedAddTorsor V P]


variable (A G F E : P)


def perimeterQuadrilateral (p₁ p₂ p₃ p₄ : P) : ℝ :=
  dist p₁ p₂ + dist p₂ p₃ + dist p₃ p₄ + dist p₄ p₁


theorem perimeter_AGFE_eq_183_div_4 :
    perimeterQuadrilateral A G F E = (183 / 4 : ℝ) := by
  sorry