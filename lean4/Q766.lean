import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

open scoped EuclideanGeometry
open scoped Real

-- Use Point as an alias for EuclideanPlane points
abbrev Point := EuclideanPlane

section MidsegmentProblem

-- Points in the problem
variable (L Q M V U B : Point)

-- Q is the midpoint of segment BU
variable (h_Q_is_midpoint_BU : Q = midpoint ℝ B U)

-- L is the midpoint of segment MV
variable (h_L_is_midpoint_MV : L = midpoint ℝ M V)

-- Define what it means for a segment (here, LQ) to be the midsegment of quadrilateral MVUB
def IsMidsegmentOfQuadrilateralMVUB (lq_pt1 lq_pt2 quad_pt_M quad_pt_V quad_pt_U quad_pt_B : Point) : Prop :=
  lq_pt1 = midpoint ℝ quad_pt_M quad_pt_V ∧ lq_pt2 = midpoint ℝ quad_pt_U quad_pt_B

-- The main theorem: LQ is the midsegment of quadrilateral MVUB
theorem LQ_is_midsegment_of_MVUB :
  IsMidsegmentOfQuadrilateralMVUB L Q M V U B := by
  exact ⟨h_L_is_midpoint_MV, h_Q_is_midpoint_BU⟩

end MidsegmentProblem