import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds -- For Real.pi

-- We work in the Euclidean plane over ℝ, with V the vector space and P the affine space (points).
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable [Fact (finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAffineSpace V P]

namespace EuclideanGeometryProblem

-- Points as shown in the diagram (use lowerCamelCase).
variables (h n j k a f : P)

-- Lines via affineSpan (requires two distinct points for each line).
axiom h_a_ne_j : a ≠ j
axiom h_f_ne_n : f ≠ n

def lineJA : AffineSubspace ℝ P := affineSpan ℝ {j, a}
def lineNF : AffineSubspace ℝ P := affineSpan ℝ {n, f}

-- JA ∥ NF (parallel lines).
axiom h_JA_parallel_NF : lineJA ∥ lineNF

-- For the angle ∠NJK (at J from N to K) to be well-defined:
axiom h_n_ne_j : n ≠ j
axiom h_k_ne_j : k ≠ j

-- Given: ∠NJK = 101°.
axiom h_angle_NJK_value : (∠ n j k).val = (101 / 180 : ℝ) * Real.pi

-- The problem says: K lies on NF.
axiom h_k_on_lineNF : k ∈ lineNF

-- H lies on JK.
def lineJK : AffineSubspace ℝ P := affineSpan ℝ {j, k}
axiom h_h_on_lineJK : h ∈ lineJK

-- For angle ∠HNJ (at N from H to J) to be well-defined:
axiom h_h_ne_n : h ≠ n
-- (n ≠ j already given)

-- The problem asks: Find the measure of angle ∠HNJ.
theorem angle_HNJ_eq_79_degrees : (∠ h n j).val = (79 / 180 : ℝ) * Real.pi := by
  sorry

end EuclideanGeometryProblem