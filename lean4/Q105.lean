import Mathlib.Data.Real.Basic
import Mathlib.Data.Rat.Defs
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Int.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Basic
namespace CubeVolumeProblem
abbrev Point := EuclideanSpace ℝ (Fin 3)
def edgeLength : ℝ := 1
def pointA : Point := ![0, 0, 0]
def pointB : Point := ![edgeLength, 0, 0]
def pointC : Point := ![edgeLength, edgeLength, 0]
def pointD : Point := ![0, edgeLength, 0]
def pointE : Point := ![0, 0, edgeLength]
def pointF : Point := ![edgeLength, 0, edgeLength]
def pointG : Point := ![edgeLength, edgeLength, edgeLength]
def pointH : Point := ![0, edgeLength, edgeLength]
noncomputable def M : Point := (1/2 : ℝ) • (pointA + pointB)
noncomputable def N : Point := (1/2 : ℝ) • (pointC + pointG)
noncomputable def cuttingPlane : AffineSubspace ℝ Point := affineSpan ℝ {pointD, M, N}
def cubeRegion : Set Point :=
  { p | (0 ≤ p 0 ∧ p 0 ≤ edgeLength) ∧
        (0 ≤ p 1 ∧ p 1 ≤ edgeLength) ∧
        (0 ≤ p 2 ∧ p 2 ≤ edgeLength) }
def volumeCube : ℝ := edgeLength ^ 3
noncomputable def v1 : Point := M - pointD
noncomputable def v2 : Point := N - pointD
noncomputable def normalVec : Point :=
  ![
    v1 1 * v2 2 - v1 2 * v2 1,
    v1 2 * v2 0 - v1 0 * v2 2,
    v1 0 * v2 1 - v1 1 * v2 0
  ]
noncomputable def planeDefiningFunc (p : Point) : ℝ :=
  normalVec 0 * (p 0 - pointD 0) +
  normalVec 1 * (p 1 - pointD 1) +
  normalVec 2 * (p 2 - pointD 2)
def solid1Set : Set Point := { p | p ∈ cubeRegion ∧ planeDefiningFunc p ≤ 0 }
def solid2Set : Set Point := { p | p ∈ cubeRegion ∧ planeDefiningFunc p ≥ 0 }
noncomputable def volumeOfRegion (_region : Set Point) : ℝ := by sorry
noncomputable def volumeSolid1 : ℝ := volumeOfRegion solid1Set
noncomputable def volumeSolid2 : ℝ := volumeOfRegion solid2Set
noncomputable def volumeLargerSolid : ℝ := max volumeSolid1 volumeSolid2
axiom volumeLargerSolid_is_rational : ∃ (r : Rat), volumeLargerSolid = r
axiom volumeLargerSolid_is_positive : volumeLargerSolid > 0
noncomputable def r_vol_val : Rat := Classical.choose volumeLargerSolid_is_rational
lemma r_vol_val_spec : volumeLargerSolid = r_vol_val := Classical.choose_spec volumeLargerSolid_is_rational
noncomputable def p_val : ℕ := r_vol_val.num.natAbs
noncomputable def q_val : ℕ := r_vol_val.den
lemma p_val_is_positive : p_val > 0 := by sorry
lemma q_val_is_positive : q_val > 0 := by sorry
lemma p_val_q_val_coprime : Nat.Coprime p_val q_val := by sorry
noncomputable def sum_p_q : ℕ := p_val + q_val
theorem final_result_is_89 : sum_p_q = 89 := by sorry
end CubeVolumeProblem
