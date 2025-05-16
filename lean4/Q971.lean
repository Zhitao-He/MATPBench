import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

namespace TangentParallelogramProblem

variable {V P : Type*} 
  [NormedAddCommGroup V] [InnerProductSpace ℝ V]
  [MetricSpace P] [NormedAddTorsor V P]
  [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]

variable (A C O P E F B D : P)

variable (hA_ne_O : A ≠ O)
local notation "r_val" => dist A O
local notation "circleS" => Euclidean.Sphere.mk O r_val

variable (hO_midpoint_AC : O = midpoint ℝ A C)
variable (hP_ne_C : P ≠ C)
variable (hTangent_PC_at_C : inner (P -ᵥ C) (C -ᵥ O) = 0)

variable (hCollinear_P_E_F : collinear ℝ P E F)
variable (hE_on_S : E ∈ circleS)
variable (hF_on_S : F ∈ circleS)
variable (hE_ne_F : E ≠ F)
variable (hP_ne_E : P ≠ E)
variable (hP_ne_F : P ≠ F)

variable (hA_ne_E : A ≠ E)
variable (hA_ne_F : A ≠ F)
variable (hP_ne_O : P ≠ O)

variable (hB_on_AE : collinear ℝ A E B)
variable (hB_on_PO : collinear ℝ P O B)
variable (hD_on_AF : collinear ℝ A F D)
variable (hD_on_PO : collinear ℝ P O D)

variable (hA_ne_P : A ≠ P)
variable (hAEP_not_collinear : ¬ collinear ℝ A E P)
variable (hAFP_not_collinear : ¬ collinear ℝ A F P)

theorem quadrilateral_ABCD_is_parallelogram : B -ᵥ A = C -ᵥ D := by
  sorry

end TangentParallelogramProblem