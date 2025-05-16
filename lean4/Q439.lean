import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open EuclideanGeometry
open Real

namespace SohomDarlnimSylviaGeometry

variable (B E R K C A L I T O W N : EuclideanPlane)

def sideLenBERK : ℝ := 10

structure IsSquare (p1 p2 p3 p4 : EuclideanPlane) : Prop where
  side12_positive : dist p1 p2 > 0
  side23_eq_side12 : dist p2 p3 = dist p1 p2
  side34_eq_side12 : dist p3 p4 = dist p1 p2
  side41_eq_side12 : dist p4 p1 = dist p1 p2
  angle_at_p1 : Angle.angle p4 p1 p2 = π / 2
  angle_at_p2 : Angle.angle p1 p2 p3 = π / 2
  angle_at_p3 : Angle.angle p2 p3 p4 = π / 2
  angle_at_p4 : Angle.angle p3 p4 p1 = π / 2

hypothesis hBERK_is_square : IsSquare B E R K
hypothesis hBERK_side_length_is_10 : dist B E = sideLenBERK

hypothesis hT_is_midpoint_BE : T = midpoint ℝ B E
hypothesis hO_is_midpoint_ER : O = midpoint ℝ E R
hypothesis hW_is_midpoint_RK : W = midpoint ℝ R K
hypothesis hN_is_midpoint_KB : N = midpoint ℝ K B

hypothesis hCALI_is_square : IsSquare C A L I

hypothesis hE_on_segment_CA : E ∈ segment ℝ C A
hypothesis hR_on_segment_AL : R ∈ segment ℝ A L
hypothesis hK_on_segment_LI : K ∈ segment ℝ L I
hypothesis hB_on_segment_IC : B ∈ segment ℝ I C

hypothesis hCA_parallel_BO : Angle.Parallel (A -ᵥ C) (O -ᵥ B)

theorem area_of_CALI_is_180 : (dist C A)^2 = 180 := by
  sorry

end SohomDarlnimSylviaGeometry